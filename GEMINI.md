# GEMINI.md

## Project Overview

This project is a server that uses the [Model Context Protocol](https://modelcontextprotocol.io/introduction) (MCP) to enable Large Language Models (LLMs) to interact with Max/MSP patches. It allows an LLM to understand the contents of a Max patch and to manipulate it by adding, removing, and connecting objects.

The project consists of two main parts:

1.  A Python server built with `FastAPI` and `python-socketio`. This server exposes a set of tools that can be called by an LLM through the MCP. These tools allow the LLM to interact with the Max patch.
2.  A JavaScript agent that runs inside a Max/MSP patch. This agent communicates with the Python server using `socket.io` and uses the Max JavaScript API to manipulate the patch.

The project also includes a `docs.json` file, which contains documentation for all the Max/MSP objects. This documentation is used by the LLM to understand how to use the different objects.

## Building and Running

### Prerequisites

*   Python 3.8 or newer
*   [uv package manager](https://github.com/astral-sh/uv)
*   Max 8 or newer

### Installation

1.  **Install uv:**
    ```bash
    # On macOS and Linux:
    curl -LsSf https://astral.sh/uv/install.sh | sh
    # On Windows:
    powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
    ```
2.  **Clone the repository and open its directory:**
    ```bash
    git clone https://github.com/tiianhk/MaxMSP-MCP-Server.git
    cd MaxMSP-MCP-Server
    ```
3.  **Start a new environment and install python dependencies:**
    ```bash
    uv venv
    uv pip install -r requirements.txt
    ```
4.  **Connect the MCP server to a MCP client (which hosts LLMs):**
    ```bash
    # Claude:
    python install.py --client claude
    # or Cursor:
    python install.py --client cursor
    ```

### Running the server

The server is automatically started by the MCP client when it needs to interact with the Max patch.

### Installing to a Max patch

Use or copy from `MaxMSP_Agent/demo.maxpat`. In the first tab, click the `script npm version` message to verify that [npm](https://github.com/npm/cli) is installed. Then click `script npm install` to install the required dependencies. Switch to the second tab to access the agent. Click `script start` to initiate communication with Python. Once connected, you can interact with the LLM interface to have it explain, modify, or create Max objects within the patch.

## Development Conventions

The project uses the `FastAPI` framework for the Python server and the `socket.io` library for communication between the server and the Max patch. The Python code is type-hinted and follows the PEP 8 style guide. The JavaScript code is written in a functional style and uses the Max JavaScript API to interact with the patch.
