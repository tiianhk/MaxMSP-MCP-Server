"""Register the local stdio server without changing unrelated client settings."""
import argparse
import json
import os
from pathlib import Path
import stat
import tempfile

CLIENTS = ("claude", "cursor", "vscode", "chatgpt", "codex")
OPENAI_CLIENTS = ("chatgpt", "codex")


def expand_path(value):
    return Path(os.path.expandvars(os.path.expanduser(str(value)))).resolve()


def default_config(client, platform=None, home=None, environment=None):
    platform = platform or os.name
    home = Path(home) if home is not None else Path.home()
    environment = os.environ if environment is None else environment
    if client in OPENAI_CLIENTS:
        config_home = environment.get("CODEX_HOME")
        return expand_path(config_home) / "config.toml" if config_home else home / ".codex/config.toml"
    if client == "claude":
        if platform == "nt":
            appdata = environment.get("APPDATA")
            if not appdata:
                raise ValueError("APPDATA is not set; specify --config explicitly.")
            return Path(appdata) / "Claude/claude_desktop_config.json"
        return home / "Library/Application Support/Claude/claude_desktop_config.json"
    if client == "cursor":
        return home / ".cursor/mcp.json"
    if client == "vscode":
        return Path.cwd() / ".vscode/mcp.json"
    raise ValueError("Unsupported client: " + client)


def server_command(repository, platform=None):
    repository = Path(repository).resolve()
    python = repository / ".venv" / ("Scripts/python.exe" if (platform or os.name) == "nt" else "bin/python")
    if not python.is_file():
        raise FileNotFoundError("Virtual environment Python not found at {}. Run uv venv and install requirements.txt first.".format(python))
    if not (repository / "server.py").is_file():
        raise FileNotFoundError("server.py is missing from the repository.")
    return {"command": str(python), "args": [str(repository / "server.py")], "cwd": str(repository)}


def update_toml(text, command):
    try:
        import tomlkit
    except ImportError as error:
        raise RuntimeError("Install requirements.txt first; ChatGPT/Codex configuration requires tomlkit.") from error
    document = tomlkit.parse(text)
    if "mcp_servers" not in document:
        document["mcp_servers"] = tomlkit.table()
    servers = document["mcp_servers"]
    if not hasattr(servers, "items"):
        raise ValueError("mcp_servers must be a TOML table.")
    matches = [name for name in servers if name.lower() in ("maxmsp", "maxmspmcp")]
    if len(matches) > 1:
        raise ValueError("Multiple MaxMSP entries exist; consolidate them before installing.")
    name = matches[0] if matches else "maxmsp"
    if name not in servers:
        servers[name] = tomlkit.table()
    target = servers[name]
    if not hasattr(target, "items") or "url" in target:
        raise ValueError("Existing MaxMSP entry is not a local stdio table; configuration was not changed.")
    for key, value in command.items():
        target[key] = value
    return tomlkit.dumps(document)


def update_json(text, client, command):
    document = json.loads(text) if text.strip() else {}
    if not isinstance(document, dict):
        raise ValueError("Client configuration must be a JSON object.")
    key = "servers" if client == "vscode" else "mcpServers"
    servers = document.setdefault(key, {})
    if not isinstance(servers, dict):
        raise ValueError(key + " must be a JSON object.")
    target = servers.setdefault("MaxMSPMCP", {})
    if not isinstance(target, dict) or "url" in target:
        raise ValueError("Existing MaxMSP entry is not a local stdio object.")
    target.update(command)
    if client == "vscode":
        target["type"] = "stdio"
    # The previous installer overwrote PATH with a Unix-only venv path.
    # Explicit Python selection makes that workaround unnecessary.
    environment = target.get("env")
    if isinstance(environment, dict):
        old_path = environment.get("PATH")
        if old_path and old_path.replace("\\", "/").rstrip("/") == (str(Path(command["cwd"]) / ".venv/bin")).replace("\\", "/"):
            del environment["PATH"]
    return json.dumps(document, indent=4, ensure_ascii=False) + "\n"


def configure(client, config_path, repository, platform=None):
    command = server_command(repository, platform)
    config_path = Path(config_path)
    original = config_path.read_bytes().decode("utf-8") if config_path.exists() else ""
    updated = update_toml(original, command) if client in OPENAI_CLIENTS else update_json(original, client, command)
    if updated == original:
        return config_path
    config_path.parent.mkdir(parents=True, exist_ok=True)
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(dir=config_path.parent, prefix=".maxmsp-", delete=False) as stream:
            temporary = Path(stream.name)
            stream.write(updated.encode("utf-8"))
        mode = stat.S_IMODE(config_path.stat().st_mode) if config_path.exists() else 0o600
        temporary.chmod(mode)
        os.replace(temporary, config_path)
    finally:
        if temporary is not None and temporary.exists():
            temporary.unlink()
    return config_path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--client", required=True, choices=CLIENTS)
    parser.add_argument("--config", help="Override the destination configuration path.")
    args = parser.parse_args()
    try:
        destination = expand_path(args.config) if args.config else default_config(args.client)
        configure(args.client, destination, Path(__file__).resolve().parent)
    except (ValueError, OSError, RuntimeError) as error:
        parser.exit(1, "Installation failed: {}\n".format(error))
    print("Configured MaxMSP for {} in {}".format(args.client, destination))
    print("Start the bridge in Max, then restart the client or its MCP server.")


if __name__ == "__main__":
    main()
