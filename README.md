# MaxMSP-MCP Server

### STATUS

This project is currently stalled due to lack of developers and no response from the upstream developers.

The MCP approach shows promise. I managed to add a console error reporting tool as a key problem with the original MCP is that it would put objects together but fail to notice any errors and would then carry on regardless. Compare with using a coding assistant with traditional code where any errors are integral to the development process.

I have also found trying to develop this project with Codex CLI and other assistants to be extremely irritating. I'm not a trained software engineer (yet!) but nevertheless have been developing full blown applications in Apple Swift with Codex and other assistants with very few problems. But for some reason, likely being the cross domain nature of code (Javascript in this case) crossing over into the Max visual coding via objects and patch cords, the coding assistant starts making big mistakes constantly missing and breaking things. This does not happen when doing pure language based coding in Swift (the language I've been working in).

Furture reccomendations: The MCP patch itself seems unecessarily complex. The original project that this was forked from has very little or zero code comments or documentation so its very difficult to work out the intent of the developer. However I'd suggest a future MCP approach could be implemented in pure Javascript in some way with very minimal use of objects. 

The MCP has been successful as a proof of concept. The coding assistant can succesfully interrogate a Max patch and innumerate functionality and even make suggestions for fixes and so on. There was even some success with advanced fixes when fixing the MCP parts of demo.patch. The coding assistant, via the MCP, was able to connect patch cords correctly between the javascript objects to fix the console reporting tool. However for an MCP like this to be truly useful an LLM would need to have training in more Max patch examples.

### Intro

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
3. Start a new environment and install python dependencies:
```
uv venv
uv pip install -r requirements.txt
```
4. Connect the MCP server to a MCP client (which hosts LLMs):
```
# Claude:
python install.py --client claude
# or Cursor:
python install.py --client cursor
```
To use other clients (check the [list](https://modelcontextprotocol.io/clients)), you need to download, mannually add the configuration file path to [here](https://github.com/tiianhk/MaxMSP-MCP-Server/blob/main/install.py#L6-L13), and connect by running `python install.py --client {your_client_name}`.

### Installing to a Max patch  

Use or copy from `MaxMSP_Agent/demo.maxpat`. In the first tab, click the `script npm version` message to verify that [npm](https://github.com/npm/cli) is installed. Then click `script npm install` to install the required dependencies. Switch to the second tab to access the agent. Click `script start` to initiate communication with Python. Once connected, you can interact with the LLM interface to have it explain, modify, or create Max objects within the patch.

## Disclaimer

This is a third party implementation and not made by Cycling '74.
