**Note:** An extended version by ersatzben and BenCello can be found at: [https://github.com/ersatzben/maxmsp-mcp](https://github.com/ersatzben/maxmsp-mcp)

# MaxMSP-MCP Server

This project uses the [Model Context Protocol](https://modelcontextprotocol.io/introduction) (MCP) to let LLMs directly understand and generate Max patches.

### Understand: LLM Explaining a Max Patch

![img](./assets/understand.gif)
[Video link](https://www.youtube.com/watch?v=YKXqS66zrec). Acknowledgement: the patch being explained is downloaded from [here](https://github.com/jeffThompson/MaxMSP_TeachingSketches/blob/master/02_MSP/07%20Ring%20Modulation.maxpat). Text comments in the original file are deleted.

### Generate: LLM Making an FM Synth

![img](./assets/generate.gif)
Check out the [full video](https://www.youtube.com/watch?v=Ns89YuE5-to) where you can listen to the synthesised sounds.

The LLM agent has access to the official documentation of each object, as well as objects in the current patch and subpatch windows, which helps in retrieving and explaining objects, debugging, and verifying their own actions.

## Installation

### Prerequisites

 - Python 3.8 or newer
 - [uv package manager](https://github.com/astral-sh/uv)  
 - Max 9 or newer (because some of the scripts require the Javascript V8 engine), we have not tested it on Max 8 or earlier versions of Max yet.  

### Installing the MCP server

1. Install uv:
```
# On macOS and Linux:
curl -LsSf https://astral.sh/uv/install.sh | sh
# On Windows:
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```
2. Clone this repository and open its directory:
```
git clone https://github.com/tiianhk/MaxMSP-MCP-Server.git
cd MaxMSP-MCP-Server
```
3. Create a virtual environment and install Python dependencies (Windows and macOS; activation is not required):
```
uv venv
uv pip install -r requirements.txt
```
4. Register the server with your local MCP client. Choose one client:

On Windows (PowerShell):

```powershell
.\.venv\Scripts\python.exe install.py --client chatgpt
```

On macOS:

```sh
.venv/bin/python install.py --client chatgpt
```

Run from the repository root. Replace `chatgpt` with `codex`, `claude`, `cursor`, or `vscode` for those clients.

ChatGPT and Codex are aliases for the same local configuration, `~/.codex/config.toml` (or `$CODEX_HOME/config.toml` if set). Run either command once. The installer preserves TOML comments, unrelated settings, other servers, and existing MaxMSP policies/environment settings while updating its Python command, arguments, and working directory. It reuses an existing `maxmsp` or `MaxMSPMCP` entry. An existing disabled entry stays disabled; enable it in your client when ready. Invalid or conflicting configurations are left unchanged.

Use `--config <path>` to choose a different configuration file. The installer uses the repository's virtual-environment Python directly on both Windows and macOS and does not replace your PATH. Start the bridge in Max before restarting the client or its MCP server.

This configures local ChatGPT desktop/Codex MCP access. ChatGPT web does not read local Codex configuration files; it requires a separately supported remote/plugin setup. See the [official MCP configuration guide](https://learn.chatgpt.com/docs/extend/mcp). No ChatGPT-specific changes to the Max bridge are required.

### Agent files

| Folder | Contents |
| --- | --- |
| `agent/` | Shared Max scripts, Node bridge, package files, and installed Node dependencies. |
| `agent/max-msp-standalone/` | Standalone Max demo patch. |
| `agent/max-for-live/` | Max for Live bpatcher, demo device, and panel display/logging scripts. |

Keep this folder structure intact. Node dependencies are installed once beside `agent/max_mcp_node.js`; both versions use that bridge. The Python MCP server remains at the repository root.

### Installing to a Max patch  

In Max, add the repository root (the folder containing `README.md`, `server.py`, and `agent/`) in **Options > File Preferences**, and enable **Subfolders** for that entry. Use or copy from `agent/max-msp-standalone/MaxMSP-demo.maxpat`. In the first tab, click the `script npm version` message to verify that [npm](https://github.com/npm/cli) is installed. Then click `script npm install` to install the required dependencies. Switch to the second tab to access the agent. Click `script start` to initiate communication with Python. Once connected, you can interact with the LLM interface to have it explain, modify, or create Max objects within the patch.

In this standalone demo, place the working objects in the **run-agent** tab, beside its agent blocks, or inside ordinary subpatches there. Its JavaScript and V8 scripts run without the `parent` argument and target that containing patch. The M4L bpatcher uses the same scripts with `parent` to target the device hosting the panel. Both modes support unnamed objects, nested inspection, and editing through qualified paths. The standalone demo retains its legacy `maxmcpid` infrastructure filtering. Obsolete debug controls that renamed every object have been removed from both demos.

Start only one demo or agent bridge on port 5002 at a time. Standalone Max does not require Ableton Live; the M4L demo's audio input/output objects are specific to Live.

### Using in a Max for Live (M4L) patch

For the reusable Max for Live panel, follow the [M4L MCP Agent guide](docs/Max4Live.md).

Live MCP tools inspect and edit the panel's parent patch and ordinary subpatches; the agent panel and all its descendants are excluded. Use the qualified object paths returned by listings for nested edits. The guide describes scope, errors, and nested object creation.

## Disclaimer

This is a third party implementation and not made by Cycling '74.
