# server.py
from mcp.server.fastmcp import FastMCP, Context
import asyncio
import signal
import threading
from contextlib import asynccontextmanager
import socketio

from typing import Any
import logging
import uuid
import os
import json
from pathlib import Path
from typing import Optional

SOCKETIO_SERVER_URL = os.environ.get("SOCKETIO_SERVER_URL", "http://127.0.0.1")
SOCKETIO_SERVER_PORT = os.environ.get("SOCKETIO_SERVER_PORT", "5002")
NAMESPACE = os.environ.get("NAMESPACE", "/mcp")

current_dir = os.path.dirname(os.path.abspath(__file__))
docs_path = os.path.join(current_dir, "docs.json")
with open(docs_path, "r") as f:
    docs = json.load(f)
flattened_docs = {}
for obj_list in docs.values():
    for obj in obj_list:
        flattened_docs[obj["name"]] = obj

io_server_started = False

TAGGED_VAR_PREFIX = os.environ.get("MAXMCP_CLIENT_TAG_PREFIX", "maxmcpid")
if not TAGGED_VAR_PREFIX.endswith("-"):
    TAGGED_VAR_PREFIX = f"{TAGGED_VAR_PREFIX}-"

DEFAULT_PATCH_PATH = os.environ.get(
    "MAXMCP_PATCH_PATH",
    os.path.join(current_dir, "MaxMSP_Agent", "demo.maxpat"),
)

INCLUDE_TAGGED_DEFAULT = os.environ.get("MAXMCP_INCLUDE_TAGGED", "").lower() in {
    "1",
    "true",
    "yes",
    "on",
}

try:
    PARENT_WATCHDOG_INTERVAL = max(
        0.5, float(os.environ.get("MAXMCP_PARENT_POLL_SECONDS", "2.0"))
    )
except ValueError:
    PARENT_WATCHDOG_INTERVAL = 2.0


def _is_parent_alive(parent_pid: int) -> bool:
    """Check if the original parent process is still alive."""
    if parent_pid <= 1:
        return False

    current_ppid = os.getppid()
    if current_ppid <= 1:
        return False
    if current_ppid == parent_pid:
        return True

    if os.name == "posix":
        try:
            os.kill(parent_pid, 0)
        except ProcessLookupError:
            return False
        except PermissionError:
            return True
    return True


def _start_parent_exit_watchdog() -> Optional[threading.Event]:
    """Trigger a graceful shutdown when the launching process exits."""
    if os.environ.get("MAXMCP_DISABLE_PARENT_WATCHDOG", "").lower() in {
        "1",
        "true",
        "yes",
        "on",
    }:
        return None

    parent_pid = os.getppid()
    if parent_pid <= 1:
        return None

    stop_event = threading.Event()

    def _watch():
        while not stop_event.wait(PARENT_WATCHDOG_INTERVAL):
            if not _is_parent_alive(parent_pid):
                logging.info(
                    "Detected parent process (%s) exit; shutting down server.", parent_pid
                )
                try:
                    os.kill(os.getpid(), signal.SIGINT)
                except (AttributeError, RuntimeError, ValueError):
                    os._exit(0)  # Fallback: immediate exit if signals unavailable
                break

    thread = threading.Thread(
        target=_watch, name="maxmcp-parent-watchdog", daemon=True
    )
    thread.start()
    return stop_event


# Store to allow clean shutdown of the watchdog
_parent_watchdog_stop_event: Optional[threading.Event] = None


def resolve_patch_path(patch_path: Optional[str]) -> Optional[Path]:
    """Resolve the Max patch path used for tagged object introspection."""
    candidate = Path(patch_path) if patch_path else Path(DEFAULT_PATCH_PATH)
    if not candidate.exists():
        logging.warning(
            "Tagged object introspection requested but patch path '%s' is missing",
            candidate,
        )
        return None
    return candidate





class MaxMSPConnection:
    def __init__(self, server_url: str, server_port: int, namespace: str = NAMESPACE):

        self.server_url = server_url
        self.server_port = server_port
        self.namespace = namespace

        self.sio = socketio.AsyncClient()
        self._pending = {}  # fetch requests that are not yet completed
        self.console_messages = []

        @self.sio.on("console_message", namespace=self.namespace)
        async def _on_console_message(data):
            self.console_messages.append(data)

        @self.sio.on("response", namespace=self.namespace)
        async def _on_response(data):
            req_id = data.get("request_id")
            fut = self._pending.get(req_id)
            if fut and not fut.done():
                fut.set_result(data.get("results"))

    async def send_command(self, cmd: dict):
        """Send a command to MaxMSP."""
        await self.sio.emit("command", cmd, namespace=self.namespace)
        logging.info(f"Sent to MaxMSP: {cmd}")

    async def send_request(self, payload: dict, timeout=60.0):
        """Send a fetch request to MaxMSP with enhanced error handling."""
        request_id = str(uuid.uuid4())
        future = asyncio.get_event_loop().create_future()
        self._pending[request_id] = future

        payload.update({"request_id": request_id})

        try:
            await self.sio.emit("request", payload, namespace=self.namespace)
            logging.info(f"Request to MaxMSP: {payload}")

            response = await asyncio.wait_for(future, timeout)

            # Check if response indicates a warning (e.g., truncated large patch)
            if isinstance(response, dict) and "warning" in response:
                logging.warning(f"MaxMSP warning: {response['warning']}")

            return response

        except asyncio.TimeoutError:
            logging.error(f"Request timeout after {timeout}s for action: {payload.get('action', 'unknown')}")
            # For large patch requests, suggest the issue might be patch size
            if payload.get("action") in ["get_objects_in_patch", "get_objects_in_selected"]:
                raise TimeoutError(f"Request timed out after {timeout}s. If working with a large patch, this may indicate the patch is too complex to process safely. Consider working with smaller sections.")
            else:
                raise TimeoutError(f"No response received in {timeout} seconds.")
        except Exception as e:
            logging.error(f"Error sending request to MaxMSP: {e}")
            raise
        finally:
            self._pending.pop(request_id, None)

    async def start_server(self) -> None:
        """IMPORTANT: This method should only be called ONCE per application instance.
        Multiple calls can lead to binding multiple ports unnecessarily.
        """
        try:
            # Connect to the server
            full_url = f"{self.server_url}:{self.server_port}"
            await self.sio.connect(full_url, namespaces=self.namespace)
            logging.info(f"Connected to Socket.IO server at {full_url}")
            return

        except OSError as e:
            logging.error(f"Error starting Socket.IO server: {e}")


@asynccontextmanager
async def server_lifespan(server: FastMCP):
    """Manage server lifespan"""
    global io_server_started
    if not io_server_started:
        try:
            maxmsp = MaxMSPConnection(
                SOCKETIO_SERVER_URL, SOCKETIO_SERVER_PORT, NAMESPACE
            )
            try:
                # Start the Socket.IO server
                await maxmsp.start_server()
                io_server_started = True
                logging.info(f"Listening on {maxmsp.server_url}:{maxmsp.server_port}")

                # Yield the Socket.IO connection to make it available in the lifespan context
                yield {"maxmsp": maxmsp}
            except Exception as e:
                logging.error(f"lifespan error starting server: {e}")
                await maxmsp.sio.disconnect()
                raise

        finally:
            logging.info("Shutting down connection")
            await maxmsp.sio.disconnect()
    else:
        logging.info(
            f"IO server already running on {maxmsp.server_url}:{maxmsp.server_port}"
        )


# Create the MCP server with lifespan support
mcp = FastMCP(
    "MaxMSPMCP",
    description="MaxMSP integration through the Model Context Protocol",
    lifespan=server_lifespan,
)


@mcp.tool()
async def add_max_object(
    ctx: Context,
    position: list,
    obj_type: str,
    varname: str,
    args: list,
):
    """Add a new Max object.

    The position is is a list of two integers representing the x and y coordinates,
    which should be outside the rectangular area returned by get_avoid_rect_position() function.

    Args:
        position (list): Position in the Max patch as [x, y].
        obj_type (str): Type of the Max object (e.g., "cycle~", "dac~").
        varname (str): Variable name for the object.
        args (list): Arguments for the object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    assert len(position) == 2, "Position must be a list of two integers."
    cmd = {"action": "add_object"}
    kwargs = {
        "position": position,
        "obj_type": obj_type,
        "args": args,
        "varname": varname,
    }
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def remove_max_object(
    ctx: Context,
    varname: str,
):
    """Delete a Max object.

    Args:
        varname (str): Variable name for the object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "remove_object"}
    kwargs = {"varname": varname}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def connect_max_objects(
    ctx: Context,
    src_varname: str,
    outlet_idx: int,
    dst_varname: str,
    inlet_idx: int,
):
    """Connect two Max objects.

    Args:
        src_varname (str): Variable name of the source object.
        outlet_idx (int): Outlet index on the source object.
        dst_varname (str): Variable name of the destination object.
        inlet_idx (int): Inlet index on the destination object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "connect_objects"}
    kwargs = {
        "src_varname": src_varname,
        "outlet_idx": outlet_idx,
        "dst_varname": dst_varname,
        "inlet_idx": inlet_idx,
    }
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def disconnect_max_objects(
    ctx: Context,
    src_varname: str,
    outlet_idx: int,
    dst_varname: str,
    inlet_idx: int,
):
    """Disconnect two Max objects.

    Args:
        src_varname (str): Variable name of the source object.
        outlet_idx (int): Outlet index on the source object.
        dst_varname (str): Variable name of the destination object.
        inlet_idx (int): Inlet index on the destination object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "disconnect_objects"}
    kwargs = {
        "src_varname": src_varname,
        "outlet_idx": outlet_idx,
        "dst_varname": dst_varname,
        "inlet_idx": inlet_idx,
    }
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def set_object_attribute(
    ctx: Context,
    varname: str,
    attr_name: str,
    attr_value: list,
):
    """Set an attribute of a Max object.

    Args:
        varname (str): Variable name of the object.
        attr_name (str): Name of the attribute to be set.
        attr_value (list): Values of the attribute to be set.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "set_object_attribute"}
    kwargs = {"varname": varname, "attr_name": attr_name, "attr_value": attr_value}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def set_message_text(
    ctx: Context,
    varname: str,
    text_list: list,
):
    """Set the text of a message object in MaxMSP.

    Args:
        varname (str): Variable name of the message object.
        text_list (list): A list of arguments to be set to the message object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "set_message_text"}
    kwargs = {"varname": varname, "new_text": text_list}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def send_bang_to_object(ctx: Context, varname: str):
    """Send a bang to an object in MaxMSP.

    Args:
        varname (str): Variable name of the object to be banged.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "send_bang_to_object"}
    kwargs = {"varname": varname}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def send_messages_to_object(
    ctx: Context,
    varname: str,
    message: list,
):
    """Send a message to an object in MaxMSP. The message is made of a list of arguments.

    When using message to set attributes, one attribute can only be set by one message.
    For example, to set the "size" attribute of a "button" object, use:
    send_messages_to_object("button1", ["size", 100, 100])
    To set the "size" and "color" attributes of a "button" object, use the tool for two times:
    send_messages_to_object("button1", ["size", 100, 100])
    send_messages_to_object("button1", ["color", 0, 0, 0])

    Args:
        varname (str): Variable name of the object to be messaged.
        message (list): A list of messages to be sent to the object.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "send_message_to_object"}
    kwargs = {"varname": varname, "message": message}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
async def set_number(
    ctx: Context,
    varname: str,
    num: float,
):
    """Set the value of a object in MaxMSP.
    The object can be a number box, a slider, a dial, a gain.

    Args:
        varname (str): Variable name of the comment object.
        num (float): Value to be set for the object.
    """

    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    cmd = {"action": "set_number"}
    kwargs = {"varname": varname, "num": num}
    cmd.update(kwargs)
    await maxmsp.send_command(cmd)


@mcp.tool()
def list_all_objects(ctx: Context) -> list:
    """Returns a name list of all objects that can be added in Max.
    To understand a specific object in the list, use the `get_object_doc` tool."""
    return list(flattened_docs.keys())


@mcp.tool()
def get_object_doc(ctx: Context, object_name: str) -> dict:
    """Retrieve the official documentation for a given object.
    Use this resource to understand how a specific object works, including its
    description, inlets, outlets, arguments, methods(messages), and attributes.

    Args:
        object_name (str): Name of the object to look up.

    Returns:
        dict: Official documentations for the specified object.
    """
    try:
        return flattened_docs[object_name]
    except KeyError:
        return {
            "success": False,
            "error": "Invalid object name",
            "suggestion": "Make sure the object name is a valid Max object name.",
        }


@mcp.tool()
async def get_objects_in_patch(
    ctx: Context,
    include_tagged: Optional[bool] = None,
    patch_path: Optional[str] = None,
):
    """Retrieve the list of existing objects in the current Max patch.

    Use this to understand the current state of the patch, including the
    objects(boxes) and patch cords(lines). The retrieved list contains a
    list of objects including their maxclass, varname for scripting,
    position(patching_rect), and the boxtext when available, as well as a
    list of patch cords with their source and destination information.

    Returns:
        list: A list of objects and patch cords.
    Args:
        include_tagged: When True, merge in objects tagged with the filtered
            prefix from the on-disk patch file. Defaults to environment
            variable `MAXMCP_INCLUDE_TAGGED`.
        patch_path: Override path to the Max patch used for tagged lookups.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    should_include_tagged = INCLUDE_TAGGED_DEFAULT if include_tagged is None else include_tagged
    payload = {"action": "get_objects_in_patch", "include_tagged": should_include_tagged}
    response = await maxmsp.send_request(payload)
    return [response]


@mcp.tool()
async def get_objects_in_selected(
    ctx: Context,
    include_tagged: Optional[bool] = None,
    patch_path: Optional[str] = None,
):
    """Retrieve the list of objects that is selected in a (unlocked) patcher window.

    Use this when the user wanted to reference to the selected objects.

    Returns:
        list: A list of objects and patch cords.
    Args:
        include_tagged: When True, merge in objects tagged with the filtered
            prefix from the on-disk patch file. Defaults to environment
            variable `MAXMCP_INCLUDE_TAGGED`.
        patch_path: Override path to the Max patch used for tagged lookups.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    should_include_tagged = INCLUDE_TAGGED_DEFAULT if include_tagged is None else include_tagged
    payload = {"action": "get_objects_in_selected", "include_tagged": should_include_tagged}
    response = await maxmsp.send_request(payload)
    return [response]


@mcp.tool()
async def get_object_attributes(ctx: Context, varname: str):
    """Retrieve an objects' attributes and values of the attributes.

    Use this to understand the state of an object.

    Returns:
        list: A list of attributes name and attributes values.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    payload = {"action": "get_object_attributes"}
    kwargs = {"varname": varname}
    payload.update(kwargs)
    response = await maxmsp.send_request(payload)

    return [response]


@mcp.tool()
async def get_avoid_rect_position(ctx: Context):
    """When deciding the position to add a new object to the path, this rectangular area
    should be avoid. This is useful when you want to add an object to the patch without
    overlapping with existing objects.

    Returns:
        list: A list of four numbers representing the left, top, right, bottom of the rectangular area.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    payload = {"action": "get_avoid_rect_position"}
    response = await maxmsp.send_request(payload)

    return response


@mcp.tool()
async def get_max_console_messages(ctx: Context) -> list:
    """Retrieve the list of messages from the Max console.

    Returns:
        list: A list of messages from the Max console.
    """
    maxmsp = ctx.request_context.lifespan_context.get("maxmsp")
    messages = maxmsp.console_messages.copy()
    maxmsp.console_messages.clear()
    return messages


if __name__ == "__main__":
    try:
        _parent_watchdog_stop_event = _start_parent_exit_watchdog()
        mcp.run()
    finally:
        if _parent_watchdog_stop_event:
            _parent_watchdog_stop_event.set()
