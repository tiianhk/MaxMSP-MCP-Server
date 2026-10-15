import asyncio
import importlib.util
from pathlib import Path
from types import SimpleNamespace
import unittest
from unittest.mock import AsyncMock

root = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("max_server", root / "server.py")
server = importlib.util.module_from_spec(spec)
spec.loader.exec_module(server)


class ScopeTools(unittest.IsolatedAsyncioTestCase):
    async def test_every_tool_describes_scope(self):
        tools = await server.mcp.list_tools()
        self.assertEqual(len(tools), 15)
        for tool in tools:
            self.assertIn("The MCP Agent panel and all descendants are inaccessible", tool.description)
        self.assertIn("agent panel", server.mcp._mcp_server.instructions.lower())

    async def test_nested_creation_path_is_forwarded(self):
        connection = SimpleNamespace(send_command=AsyncMock())
        context = SimpleNamespace(request_context=SimpleNamespace(lifespan_context={"maxmsp": connection}))
        await server.add_max_object(context, [10, 20], "message", "new", [], "sub::child")
        self.assertEqual(connection.send_command.call_args.args[0]["patcher_path"], "sub::child")

    async def test_commands_wait_for_max_and_propagate_denial(self):
        connection = server.MaxMSPConnection("http://localhost", 5002)
        handler = connection.sio.handlers["/mcp"]["response"]
        async def emit(event, payload, namespace):
            self.assertEqual(event, "request")
            await handler({"request_id": payload["request_id"], "results": {"error": "Target outside allowed scope"}})
        connection.sio = SimpleNamespace(emit=emit)
        with self.assertRaisesRegex(ValueError, "outside allowed scope"):
            await connection.send_command({"action": "remove_object", "varname": "agent::secret"})
        self.assertEqual(connection._pending, {})


if __name__ == "__main__":
    unittest.main()
