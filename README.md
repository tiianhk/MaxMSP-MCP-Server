**Note:** An extended version by ersatzben and BenCello can be found at: [https://github.com/ersatzben/maxmsp-mcp](https://github.com/ersatzben/maxmsp-mcp)

# MaxMSP-MCP Server

This project uses the [Model Context Protocol](https://modelcontextprotocol.io/introduction) (MCP) to let LLMs directly understand and generate Max patches.

## Understand: LLM Explaining a Max Patch

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

  ```bash
  # On macOS and Linux:
  curl -LsSf https://astral.sh/uv/install.sh | sh
  # On Windows:
  powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
  ```

2. Clone this repository and open its directory:

  ```bash
  git clone https://github.com/tiianhk/MaxMSP-MCP-Server.git
  cd MaxMSP-MCP-Server
  ```

3. Create a virtual environment and install Python dependencies (Windows and macOS; activation is not required):

  ```bash
  uv venv
  uv pip install -r requirements.txt
  ```

4. Register the server with your local MCP client. Choose one client:

*Run from the repository root. Replace `chatgpt` with `codex`, `claude`, `cursor`, or `vscode` for those clients.*

On Windows (PowerShell):

```powershell
.\.venv\Scripts\python.exe install.py --client chatgpt
```

On macOS:

```sh
.venv/bin/python install.py --client chatgpt
```

### Agent files

| Folder                      | Contents                                                                         |
| --------------------------- | -------------------------------------------------------------------------------- |
| `agent/`                    | Shared Max scripts, Node bridge, package files, and installed Node dependencies. |
| `agent/max-msp-standalone/` | Standalone Max demo patch.                                                       |
| `agent/max-for-live/`       | Max for Live bpatcher, demo device, and panel display/logging scripts.           |

Keep this folder structure intact. Node dependencies are installed once beside `agent/max_mcp_node.js`; both versions use that bridge. The Python MCP server remains at the repository root.

### Installing to a Max patch  

Use or copy from `MaxMSP_Agent/demo.maxpat`. In the first tab, click the `script npm version` message to verify that [npm](https://github.com/npm/cli) is installed. Then click `script npm install` to install the required dependencies. Switch to the second tab to access the agent. Click `script start` to initiate communication with Python. Once connected, you can interact with the LLM interface to have it explain, modify, or create Max objects within the patch.

### Using in a Max for Live (M4L) patch

For the reusable Max for Live panel, follow the [M4L MCP Agent guide](docs/Max4Live.md).

Live MCP tools inspect and edit the panel's parent patch and ordinary subpatches; the agent panel and all its descendants are excluded. Use the qualified object paths returned by listings for nested edits. The guide describes scope, errors, and nested object creation.

## Disclaimer

This is a third party implementation and not made by Cycling '74.
