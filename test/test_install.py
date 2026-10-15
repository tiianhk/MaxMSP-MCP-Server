import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

import tomlkit

root = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("installer", root / "install.py")
installer = importlib.util.module_from_spec(spec)
spec.loader.exec_module(installer)


class InstallerTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.base = Path(self.directory.name)
        self.repository = self.base / 'Repository with spaces and café'
        self.repository.mkdir()
        (self.repository / 'server.py').write_text('# test server', encoding='utf-8')
        for executable in ('.venv/Scripts/python.exe', '.venv/bin/python'):
            path = self.repository / executable
            path.parent.mkdir(parents=True, exist_ok=True)
            path.touch()

    def test_platform_paths(self):
        for platform, suffix in [('nt', 'Scripts/python.exe'), ('posix', 'bin/python')]:
            command = installer.server_command(self.repository, platform)
            self.assertEqual(Path(command['command']), self.repository / '.venv' / suffix)
            self.assertEqual(command['args'], [str(self.repository / 'server.py')])
            self.assertNotIn('env', command)

    def test_alias_default_paths_and_codex_home(self):
        for platform in ('nt', 'posix'):
            for client in ('chatgpt', 'codex'):
                self.assertEqual(installer.default_config(client, platform, self.base, {}), self.base / '.codex/config.toml')
                self.assertEqual(installer.default_config(client, platform, self.base, {'CODEX_HOME': str(self.base / 'custom')}), self.base / 'custom/config.toml')
        self.assertEqual(installer.default_config('claude', 'posix', self.base, {}), self.base / 'Library/Application Support/Claude/claude_desktop_config.json')
        self.assertEqual(installer.default_config('claude', 'nt', self.base, {'APPDATA': str(self.base)}), self.base / 'Claude/claude_desktop_config.json')

    def test_toml_preserves_comments_settings_and_policies(self):
        original = '''# Personal settings
model = "example" # keep this comment
[mcp_servers.other]
url = "https://example.com/mcp"
[mcp_servers.maxmsp]
command = "old" # launcher
enabled = false
tool_timeout_sec = 120
[mcp_servers.maxmsp.env]
CUSTOM = "keep"
[mcp_servers.maxmsp.tools.remove_max_object]
approval_mode = "prompt"
'''
        destination = self.base / 'settings/config.toml'
        destination.parent.mkdir()
        destination.write_bytes(original.encode())
        installer.configure('chatgpt', destination, self.repository, 'nt')
        result = destination.read_text(encoding='utf-8')
        parsed = tomlkit.parse(result)
        self.assertIn('# Personal settings', result)
        self.assertIn('# keep this comment', result)
        self.assertIn('# launcher', result)
        self.assertEqual(parsed['model'], 'example')
        self.assertEqual(parsed['mcp_servers']['other']['url'], 'https://example.com/mcp')
        target = parsed['mcp_servers']['maxmsp']
        self.assertFalse(target['enabled'])
        self.assertEqual(target['env']['CUSTOM'], 'keep')
        self.assertEqual(target['tools']['remove_max_object']['approval_mode'], 'prompt')
        self.assertEqual(target['tool_timeout_sec'], 120)
        installer.configure('codex', destination, self.repository, 'nt')
        self.assertEqual(result, destination.read_text(encoding='utf-8'), 'Alias install must be idempotent')

    def test_legacy_name_is_reused(self):
        output = installer.update_toml('[mcp_servers.MaxMSPMCP]\nenabled = true\n', installer.server_command(self.repository, 'posix'))
        self.assertEqual(list(tomlkit.parse(output)['mcp_servers']), ['MaxMSPMCP'])

    def test_creates_new_config_and_parent_directories(self):
        for client in ('chatgpt', 'codex'):
            destination = self.base / client / 'config.toml'
            installer.configure(client, destination, self.repository, 'posix')
            target = tomlkit.parse(destination.read_text(encoding='utf-8'))['mcp_servers']['maxmsp']
            self.assertEqual(Path(target['command']), self.repository / '.venv/bin/python')

    def test_invalid_configs_remain_untouched(self):
        for original in ['[broken', 'mcp_servers = 1', '[mcp_servers.maxmsp]\nurl = "https://example.com"', '[mcp_servers.maxmsp]\n[mcp_servers.MaxMSPMCP]']:
            destination = self.base / 'invalid.toml'
            destination.write_bytes(original.encode())
            with self.assertRaises(ValueError):
                installer.configure('codex', destination, self.repository, 'nt')
            self.assertEqual(destination.read_bytes(), original.encode())

    def test_json_clients_preserve_settings_and_use_correct_schema(self):
        for client in ('claude', 'cursor', 'vscode'):
            key = 'servers' if client == 'vscode' else 'mcpServers'
            original = {'theme': 'dark', key: {'other': {'command': 'keep'}, 'MaxMSPMCP': {'disabled': True, 'env': {'CUSTOM': 'keep'}}}}
            output = json.loads(installer.update_json(json.dumps(original), client, installer.server_command(self.repository, 'nt')))
            self.assertEqual(output['theme'], 'dark')
            self.assertEqual(output[key]['other'], original[key]['other'])
            self.assertTrue(output[key]['MaxMSPMCP']['disabled'])
            self.assertEqual(output[key]['MaxMSPMCP']['env']['CUSTOM'], 'keep')
            fresh = json.loads(installer.update_json('', client, installer.server_command(self.repository, 'nt')))
            self.assertIn('MaxMSPMCP', fresh[key])

    def test_missing_interpreter_leaves_destination_unchanged(self):
        (self.repository / '.venv/Scripts/python.exe').unlink()
        destination = self.base / 'config.toml'
        destination.write_text('# unchanged', encoding='utf-8')
        with self.assertRaises(FileNotFoundError):
            installer.configure('codex', destination, self.repository, 'nt')
        self.assertEqual(destination.read_text(), '# unchanged')

    def test_atomic_write_failure_preserves_original_and_cleans_temp(self):
        destination = self.base / 'config.toml'
        destination.write_text('# unchanged', encoding='utf-8')
        with patch.object(installer.os, 'replace', side_effect=OSError('simulated failure')):
            with self.assertRaises(OSError):
                installer.configure('chatgpt', destination, self.repository, 'posix')
        self.assertEqual(destination.read_text(), '# unchanged')
        self.assertEqual(list(self.base.glob('.maxmsp-*')), [])

    def test_real_cli_writes_only_explicit_temporary_config(self):
        destination = self.base / 'cli/config.toml'
        for client in ('chatgpt', 'codex'):
            result = subprocess.run([sys.executable, str(root / 'install.py'), '--client', client, '--config', str(destination)], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(list(tomlkit.parse(destination.read_text())['mcp_servers']), ['maxmsp'])


if __name__ == '__main__':
    unittest.main()
