# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Model Context Protocol (MCP) server that enables LLMs to directly understand and generate Max/MSP patches. It consists of:

- **MCP Server** (`server.py`): Python-based MCP server using FastMCP that provides tools for manipulating Max objects
- **MaxMSP Agent** (`MaxMSP_Agent/`): JavaScript components that run inside Max to handle communication with the MCP server
- **Socket.IO Communication**: Real-time bidirectional communication between the Python MCP server and Max/MSP

## Development Commands

### Python Environment Setup
```bash
# Create virtual environment and install dependencies
uv venv
uv pip install -r requirements.txt
```

### MCP Server Installation
```bash
# Install MCP server configuration for Claude Desktop
python install.py --client claude

# Install for Cursor
python install.py --client cursor
```

### Running the MCP Server
```bash
# Run the server directly (for development/testing)
python server.py
```

### MaxMSP Agent Setup
```bash
# Install Node.js dependencies for MaxMSP integration
cd MaxMSP_Agent
npm install
```

## Architecture

### Core Components

1. **MCP Tools in server.py**: Provides 15+ tools for Max object manipulation:
   - `add_max_object()`: Create new Max objects with position, type, and arguments
   - `connect_max_objects()` / `disconnect_max_objects()`: Manage patch cords between objects
   - `get_objects_in_patch()`: Retrieve current patch state
   - `get_object_doc()`: Access Max object documentation
   - `set_object_attribute()`, `send_messages_to_object()`: Configure object parameters

2. **Socket.IO Communication Layer**:
   - Server runs on `http://127.0.0.1:5002` by default (configurable via env vars)
   - Uses namespace `/mcp` for MCP-related communication
   - Handles both commands (one-way) and requests (with responses)

3. **MaxMSP JavaScript Integration**:
   - `demo.maxpat`: Example Max patch demonstrating the integration
   - JavaScript files handle Socket.IO client connection and Max object manipulation
   - Requires Max 9+ for V8 JavaScript engine support

### Key Data Structures

- **Object Documentation** (`docs.json`): Complete Max object reference loaded into `flattened_docs` dictionary
- **MaxMSPConnection Class**: Manages async Socket.IO communication with request/response pattern using UUIDs
- **Command Structure**: All Max operations use consistent `{"action": "...", ...kwargs}` format

### Environment Configuration

- `SOCKETIO_SERVER_URL`: Server URL (default: "http://127.0.0.1")
- `SOCKETIO_SERVER_PORT`: Server port (default: "5002")
- `NAMESPACE`: Socket.IO namespace (default: "/mcp")

## Development Workflow

1. **For MCP Server Changes**: Modify `server.py`, test with `python server.py`
2. **For MaxMSP Integration**: Use `MaxMSP_Agent/demo.maxpat` as development environment
3. **Adding New Tools**: Follow existing pattern in `server.py` with `@mcp.tool()` decorator
4. **Testing**: Load `demo.maxpat`, run `script npm install`, then `script start` to connect to MCP server

## Performance Considerations

### Large Patch Safety Measures

The system includes aggressive built-in protection against crashes when processing large Max patches:

#### JavaScript Safety Limits (`max_mcp.js`)
- **Object Count Limit**: Maximum 200 objects per patch analysis (reduced from 1000 for stability)
- **Connection Count Limit**: Maximum 500 connections per analysis
- **Complex Object Filtering**: Automatically skips JavaScript objects (`js`, `node.script`, `v8`, `jsui`) that can cause engine crashes
- **Attribute Safety**: Disables dangerous attribute retrieval that caused `js_atomtoval` crashes
- **Exception Handling**: Comprehensive try-catch blocks around all object processing
- **Early Termination**: Processing stops when limits are reached, with warning messages
- **Functions Protected**: `get_objects_in_patch()`, `get_objects_in_selected()`, `get_object_attributes()`, `get_avoid_rect_position()`

#### Enhanced Error Recovery
- **Graceful Degradation**: If object processing fails, the system continues with remaining objects
- **Safe Defaults**: Provides fallback values when object properties can't be accessed
- **Memory Protection**: Limits attribute collection to 50 attributes per object with type checking

#### Python Error Handling (`server.py`)
- **Enhanced Timeouts**: Better error messages for large patch timeout scenarios
- **Request Timeout**: 5-second default timeout with informative error messages
- **Large Patch Detection**: Special handling for patch analysis operations that may timeout

#### Warning Messages
When processing large patches, the system will:
- Log warnings about safety limits being reached (objects, connections)
- Identify when complex objects are being skipped for stability
- Suggest working with smaller patch sections
- Provide clear timeout error messages indicating potential patch complexity issues

### Memory Usage Guidelines
- **Critical**: Patches with 200+ objects will be truncated during analysis
- **Complex Objects**: JavaScript-based objects are automatically excluded from analysis
- **Attribute Access**: Object attributes are limited and filtered for safety
- **Best Practice**: Break large patches into smaller subpatches for better MCP integration
- **Monitoring**: Watch Max console for safety limit warnings during development

### Known Limitations
- JavaScript objects (`js`, `node.script`, `v8`) are excluded from detailed analysis
- Object attributes are not collected in patch analysis to prevent crashes
- Large subpatchers may not be fully analyzed
- Complex patchcord networks are simplified to prevent memory exhaustion

## Dependencies

- **Python**: FastMCP, Socket.IO, asyncio for MCP server
- **Node.js**: Socket.IO client for MaxMSP integration
- **Max/MSP**: Version 9+ required for V8 JavaScript engine