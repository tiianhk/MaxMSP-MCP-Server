# M4L MCP Agent

Use the agent panel inside the Max for Live patch you want the MCP client to inspect or edit. It requires Max 9 or newer and a separately configured Python MCP server; see the [repository setup instructions](../README.md#installation) for Python dependencies. Installing the panel's dependencies does not configure your MCP client.

For local ChatGPT desktop or Codex, install the Python requirements, then run `install.py --client chatgpt` (or `--client codex`) with the repository virtual environment's Python. The README provides the exact Windows and macOS commands. Both aliases register the same local server, preserving existing settings. Run only one. After starting the Max bridge, restart the client or its MCP server to connect. This local installer does not configure ChatGPT web. See the [client setup instructions](../README.md#installing-the-mcp-server) for configuration paths and other clients.

## Choose the right file

| File in `agent/max-for-live` | How to load it                                                              | What it targets                     |
| ---------------------------- | --------------------------------------------------------------------------- | ----------------------------------- |
| `M4L-MCP-Agent.maxpat`       | Select it as **Patcher File** in a bpatcher inside your device's Max patch. | The patch containing that bpatcher. |
| `M4L-Demo.amxd`              | Drag it onto an audio track in Ableton Live.                                | The demo device's own patch.        |

Use `M4L-MCP-Agent.maxpat` when working on an existing device. An `.amxd` device cannot be used as the bpatcher's Patcher File; doing so causes an error loading the patcher. Loading the demo on another track does not give the agent access to your target device.

If your device references an older panel name or the former `MaxMSP_Agent` directory, select `agent/max-for-live/M4L-MCP-Agent.maxpat` in its bpatcher Inspector and save the device again. Replace the old File Preferences entry with the repository root as described below.

## Add the repository folder to Max File Preferences

1. In Ableton Live, open the target Max for Live device using its Edit button to launch the Max editor.
2. In Max, open **Options > File Preferences**.
3. Add the root folder of your local copy of this repository—the folder containing `README.md`, `server.py`, and `agent/`:

   ```text
   <path-to-your-checkout>/MaxMSP-MCP-Server
   ```

   Replace this example with the location where you cloned or downloaded the repository. Select the repository root, rather than just `agent/` or `agent/max-for-live/`.

4. Enable **Subfolders** for that entry so Max can find the files under `agent/` and its platform-specific folders.
5. Keep this entry in File Preferences while using the agent. If you move the repository, update the entry before reloading the bpatcher. Max uses this search path to find the panel and its supporting scripts when your device is saved elsewhere.

Keep the `agent` directory structure intact. Shared scripts, `package.json`, `package-lock.json`, and the installed `node_modules` belong directly in `agent/`. The panel, demo device, and display/logging scripts belong in `agent/max-for-live/`. Selecting a patch file in a bpatcher does not bundle these dependencies into your device.

## Add the panel to your patch

1. Unlock the target device's patch.
2. Create a **bpatcher** object.
3. Open its Inspector and set **Patcher File** to `M4L-MCP-Agent.maxpat` from `agent/max-for-live`. Do not select `M4L-Demo.amxd` here.
4. Resize the bpatcher to **520 × 200 pixels** so all controls are visible.
5. A scripting name is optional. The panel is excluded by its patcher identity, not its user-assigned name.
6. Lock the patch to use the controls, then save your device.

Place the panel at the device's top level to target that device. It targets its immediate containing patch and ordinary nested subpatches. It does not automatically access other devices in the Live Set.

## Install and run

1. Click **Install Dependencies** the first time you use this checkout. Wait for installation to finish before starting the server. If installation fails, inspect the Max Console for errors.
2. Stop any other agent using port **5002**, including an agent running in a separate demo device.
3. Click **Start Server**. Wait for the status display to turn green and show **RUNNING**, with **Port: 5002**.
4. Start or restart the Python MCP server in your MCP client so it connects to the running Max bridge. The panel should then show **MCP client connected**.
5. Ask the MCP client to list the patch objects to verify inspection of the host patch.
6. Click **Stop Server** when you want to stop the bridge. The panel returns to **STOPPED** and clears the port display.

Install Dependencies, Start Server, and Stop Server are momentary action buttons. **Console Logs** is a toggle: yellow enables routine Node lifecycle, listening-port, and Socket.IO connection messages; gray disables them. Errors remain visible while routine logging is disabled.

| Display                 | Meaning                                                             |
| ----------------------- | ------------------------------------------------------------------- |
| Gray / STOPPED          | Node is not running, or the bridge has reported that it is stopped. |
| Amber / STARTING        | The Node process is starting.                                       |
| Green / RUNNING         | The bridge has bound its listening port.                            |
| Red / ERROR             | An error was reported; check the Max Console.                       |
| Port: --                | No active listening port has been reported.                         |
| No MCP client connected | No Python MCP client is currently connected to this bridge.         |

RUNNING and MCP client connected confirm bridge state and connectivity. A successful object-list request confirms that patch inspection also works. If you stop and restart the bridge, restart the Python MCP server as needed to reconnect.

## Inspection and editing scope

No audio or MIDI cables are needed for the panel. Your device's existing signal connections remain responsible for its audio and MIDI processing.

All live MCP tools share one enforced scope: the parent patch containing the agent and its non-agent subpatches. The agent bpatcher itself and its entire subtree are excluded. This applies to full and selected-object listings, attributes, creation, deletion, values, messages, bangs, and patch-cord operations. It does not depend on an AI agent remembering an instruction.

The agent subtree is skipped before inspection, including when the bpatcher is unnamed or renamed. Ordinary host objects are included regardless of their scripting-name prefix. Listings omit patch cords to excluded objects. Bounds queries consider ordinary host objects only. An agent cannot remove or message an ordinary subpatch container that contains another protected agent instance.

Listings return qualified scripting paths in `varname`, for example `filter::cutoff`, together with `local_varname` and `patcher_path`. Host-level references start with `::`, for example `::cutoff`, so they remain unambiguous when nested objects share a name. Use the returned `varname` for inspecting or editing that object. A simple name works only when unique across the allowed tree; ambiguous names are rejected. New objects can be placed inside an ordinary subpatch using the add-object tool's `patcher_path`; an empty path creates in the host. Patch cords must join objects in the same patcher.

Unnamed objects and unnamed ordinary subpatches are included. They receive temporary reference paths such as `$unnamed-0` or `filter::$unnamed-1`; the agent does not assign scripting names to them. Refresh the listing after adding, removing, or reordering objects before reusing these temporary paths. The legacy standalone demo still hides its explicitly reserved infrastructure names; this prefix convention is not used to filter Max for Live host objects.

Invalid, missing, ambiguous, or protected targets produce errors. Editing tools wait for Max to acknowledge execution or rejection. Object-catalogue and documentation tools describe Max object types and do not read live patch instances.

This boundary controls direct MCP targeting. It is not a sandbox for arbitrary Max code or the indirect effects of an existing patch's message routing.
