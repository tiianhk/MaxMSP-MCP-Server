import assert from 'node:assert/strict';
import fs from 'node:fs';
import vm from 'node:vm';
import { EventEmitter } from 'node:events';

const folder = new URL('../agent/', import.meta.url);
const messages = [];
const posts = [];
const handlers = new Map();
const servers = [];
class Server {
  constructor(port) {
    this.port = port;
    this.httpServer = new EventEmitter();
    this.namespace = new EventEmitter();
    servers.push(this);
  }
  of() { return this.namespace; }
  close(callback) { this.httpServer.emit('close'); callback(); }
}
const context = vm.createContext({ require: (name) => {
  if (name === 'socket.io') return { Server };
  if (name === 'max-api') return {
    outlet: (...args) => messages.push(args), post: (message) => posts.push(message),
    addHandler: (name, callback) => handlers.set(name, callback),
  };
  throw new Error(name);
} });
vm.runInContext(fs.readFileSync(new URL('max_mcp_node.js', folder), 'utf8'), context);
assert.equal(messages.length, 0, 'Must not report listening before bind');
servers[0].httpServer.emit('listening');
assert.deepEqual(messages.at(-1), ['agent_status', 'running', 5002, 0]);
const socket = new EventEmitter(); socket.id = 'client';
servers[0].namespace.emit('connection', socket);
assert.deepEqual(messages.at(-1), ['agent_status', 'running', 5002, 1]);
socket.emit('disconnect');
assert.equal(posts.length, 0, 'Routine Socket.IO logs default to off');
assert.deepEqual(messages.at(-1), ['agent_status', 'running', 5002, 0]);
handlers.get('port')(6002);
assert.equal(servers[1].port, 6002);
servers[1].httpServer.emit('listening');
assert.deepEqual(messages.at(-1), ['agent_status', 'running', 6002, 0]);
const secondClient = new EventEmitter(); secondClient.id = 'second';
handlers.get('logging')(1);
servers[1].namespace.emit('connection', secondClient);
assert.match(posts.at(-1), /client connected/);
handlers.get('logging')(0);
secondClient.emit('request', { action: 'get_objects_in_patch' });
assert.equal(messages.at(-1)[0], 'request', 'Port changes retain request handlers');
servers[1].httpServer.emit('error', new Error('address in use'));
assert.match(posts.at(-1), /address in use/, 'Errors remain visible with logging off');
assert.deepEqual(messages.at(-1), ['agent_status', 'error', 0, 0]);

const ui = [];
const display = vm.createContext({ outlet: (...args) => ui.push(args), arrayfromargs: (args) => Array.from(args) });
vm.runInContext(fs.readFileSync(new URL('max-for-live/agent-status.js', folder), 'utf8'), display);
display.agent_status('running', 6002, 1);
assert(ui.some((args) => args[0] === 1 && args[2] === 'Port:' && args[3] === 6002));
assert(ui.some((args) => args[0] === 2 && args[2] === 'MCP client connected'));
// Verify the patch restores the selector removed by route before JS dispatch.
const patch = JSON.parse(fs.readFileSync(new URL('max-for-live/M4L-MCP-Agent.maxpat', folder))).patcher;
const routedStatus = patch.lines.find(({ patchline: line }) => line.source[0] === 'route' && line.source[1] === 3).patchline;
const prepend = patch.boxes.find(({ box }) => box.id === routedStatus.destination[0]).box;
assert.equal(prepend.text, 'prepend agent_status');
assert(patch.lines.some(({ patchline: line }) => line.source[0] === prepend.id && line.destination[0] === 'status-ui'));
display.messagename = 'loadstart'; display.anything('success');
assert.equal(ui.at(-4)[2], 'STARTING');
const [selector, ...payload] = ['agent_status', 'running', 5002, 1];
display[selector](...payload);
assert.equal(ui.at(-4)[2], 'RUNNING');
assert.equal(ui.at(-2)[3], 5002);
display.process_running(0);
assert.equal(ui.at(-1)[2], 'No MCP client connected');
assert.equal(ui.at(-2)[3], '--');
display.messagename = 'terminated'; display.anything('success');
assert.equal(ui.at(-4)[2], 'STOPPED');
console.log('PASS: bind readiness, client connect/disconnect, port changes, errors, and stopped display.');

const consoleMessages = [];
const filter = vm.createContext({ outlet: (...args) => consoleMessages.push(args), arrayfromargs: (args) => Array.from(args) });
vm.runInContext(fs.readFileSync(new URL('max-for-live/agent-console.js', folder), 'utf8'), filter);
filter.messagename = 'start'; filter.anything('success', 'dictionary', 'test');
assert.equal(consoleMessages.length, 0);
filter.anything('error', 'dictionary', 'test');
assert.equal(consoleMessages.length, 1);
filter.logging(1); filter.anything('success');
assert.equal(consoleMessages.length, 2);
filter.logging(0); filter.anything('success');
assert.equal(consoleMessages.length, 2);
console.log('PASS: routine console filtering, logging toggle, and unconditional error reporting.');

display.agent_status("running", "5002", 0);
assert.equal(ui.at(-2)[3], 5002);
display.agent_status("running", "invalid", 0);
assert.equal(ui.at(-2)[3], "--");
