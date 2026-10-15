import assert from 'node:assert/strict';
import fs from 'node:fs';
import vm from 'node:vm';
const folder = new URL('../agent/', import.meta.url);
const source = (name) => fs.readFileSync(new URL(name, folder), 'utf8');
const moduleContext = vm.createContext({ exports: {} });
vm.runInContext(source('patch-scope.js'), moduleContext);
const { Scope } = moduleContext.exports;
const operations = [];
function patch(name, parentpatcher = null) {
  const items = [];
  const p = { name, parentpatcher, items, filepath: name === 'panel' ? 'M4L-MCP-Agent.maxpat' : name, get firstobject() { return items[0] || null; },
    newdefault(x, y, type, args) { operations.push(['add', name]); return object(p, '', type); },
    remove(obj) { operations.push(['remove', name, obj.varname]); },
    connect() { operations.push(['connect', name]); }, disconnect() { operations.push(['disconnect', name]); },
  };
  return p;
}
function object(owner, name, maxclass = 'message', child = null) {
  const obj = { patcher: owner, varname: name, maxclass, rect: [0, 0, 40, 22], selected: false,
    boxtext: `Text ${name}`, patchcords: { outputs: [] }, subpatcher: () => child,
    getattrnames: () => ['value'], getattr: () => 42,
    setattr: (...args) => operations.push(['attribute', owner.name, name, ...args]),
    message: (...args) => operations.push(['message', owner.name, name, ...args]),
  };
  Object.defineProperty(obj, 'nextobject', { get: () => owner.items[owner.items.indexOf(obj) + 1] || null });
  owner.items.push(obj); if (child) child.box = obj;
  return obj;
}
const host = patch('host'); const panel = patch('panel', host);
const agentBox = object(host, 'renamed-agent', 'bpatcher', panel);
const secret = object(panel, 'secret'); secret.selected = true;
const deepPanel = patch('internal', panel); object(panel, 'internal', 'patcher', deepPanel); object(deepPanel, 'deep-secret');
const siblingPanel = patch('panel', host); object(host, 'another-agent', 'bpatcher', siblingPanel); object(siblingPanel, 'other-secret');
const root = object(host, 'root'); const ordinary = patch('ordinary', host); object(host, 'sub', 'patcher', ordinary);
const first = object(ordinary, 'nested'); first.selected = true;
const second = object(ordinary, 'other');
first.patchcords.outputs.push({ dstobject: second, srcoutlet: 0, dstinlet: 0 });
root.patchcords.outputs.push({ dstobject: agentBox, srcoutlet: 0, dstinlet: 0 });
const scope = new Scope(panel, true);
assert.deepEqual(Array.from(scope.entries(), (e) => e.path), ['root', 'sub', 'sub::nested', 'sub::other']);
const unnamed = object(ordinary, '');
const prefixedHost = object(host, 'maxmcpid-user-object');
const unnamedEntry = scope.entries().find((entry) => entry.object === unnamed);
assert(unnamedEntry.path.includes('$unnamed-'));
assert.equal(unnamed.varname, '', 'Do not assign names to user objects');
assert.equal(scope.resolve(unnamedEntry.path).object, unnamed);
assert(scope.entries().some((entry) => entry.object === prefixedHost), 'Host names never identify the agent');
agentBox.varname = '';
assert(!scope.entries().some((entry) => entry.object === agentBox), 'An unnamed agent is still excluded by identity');
agentBox.varname = 'renamed-agent';
const previousFile = panel.filepath;
panel.filepath = ordinary.filepath;
assert(scope.entries().some((entry) => entry.object === first), 'Shared parent file paths must not hide ordinary embedded subpatches');
panel.filepath = previousFile;
assert.equal(scope.list(false).lines.length, 1, 'Agent boundary cords are excluded');
assert.equal(scope.list(true).boxes.length, 1, 'Selections in agent internals are excluded');
assert.equal(scope.resolve('sub::nested').object, first);
assert.equal(scope.resolve('nested').object, first);
object(host, 'nested');
assert.throws(() => scope.resolve('nested'), /ambiguous/);
assert.equal(scope.resolve('::nested').owner, host, 'Explicit root paths resolve duplicate names');
assert.equal(scope.resolve('sub::nested').object, first);
for (const forbidden of ['renamed-agent', 'secret', 'renamed-agent::secret', 'renamed-agent::internal::deep-secret', 'another-agent::other-secret']) {
  assert.throws(() => scope.resolve(forbidden), /outside allowed scope/);
  assert.throws(() => scope.destination(forbidden), /outside allowed scope/);
}
assert.throws(() => scope.resolve('::renamed-agent'));
const outputs = [];
class Dict { parse() {} }
const context = vm.createContext({ patcher: panel, jsarguments: ['js', 'parent'], Dict,
  require: () => ({ Scope }), outlet: (...args) => outputs.push(args),
  arrayfromargs: (name, args) => [name, ...args],
});
vm.runInContext(source('max_mcp.js'), context);
const execute = (action, extra = {}) => context.execute({ action, ...extra });
execute('get_object_attributes', { varname: 'sub::nested', request_id: 'attrs' });
assert.equal(JSON.parse(outputs.at(-1)[2].join('')).results.value, 42);
assert.throws(() => execute('get_object_attributes', { varname: 'renamed-agent::secret', request_id: 'denied-attrs' }));
for (const [action, args] of [
  ['set_number', { num: 0 }], ['set_message_text', { new_text: ['hello'] }],
  ['set_object_attribute', { attr_name: 'value', attr_value: [2] }],
  ['send_message_to_object', { message: ['set', 3] }], ['send_bang_to_object', {}], ['remove_object', {}],
]) {
  execute(action, { varname: 'sub::nested', ...args });
  const before = operations.length;
  for (const varname of ['renamed-agent', 'secret', 'renamed-agent::secret']) assert.throws(() => execute(action, { varname, ...args }));
  assert.equal(operations.length, before, `${action} must not touch agent objects`);
}
for (const action of ['connect_objects', 'disconnect_objects']) {
  execute(action, { src_varname: 'sub::nested', dst_varname: 'sub::other' });
  assert.throws(() => execute(action, { src_varname: 'root', dst_varname: 'sub::nested' }), /same subpatch/);
  for (const side of ['src_varname', 'dst_varname']) assert.throws(() => execute(action, { src_varname: 'root', dst_varname: 'root', [side]: 'renamed-agent' }));
}
execute('add_object', { patcher_path: 'sub', varname: 'new', position: [20, 40], obj_type: 'message', args: [] });
assert.deepEqual(operations.at(-2), ['add', 'ordinary']);
assert.throws(() => execute('add_object', { patcher_path: 'renamed-agent', varname: 'new', position: [0, 0] }));
execute('get_avoid_rect_position', { request_id: 'bounds' });
assert.deepEqual(JSON.parse(outputs.at(-1)[2].join('')).results, [0, 0, 40, 22]);
// An accessible ancestor containing another agent cannot be removed or messaged.
const protectedChild = patch('panel', ordinary); object(ordinary, 'agent-inside', 'bpatcher', protectedChild);
assert.throws(() => execute('remove_object', { varname: 'sub' }), /ancestor/);
assert.throws(() => execute('send_bang_to_object', { varname: 'sub' }), /ancestor/);
// A malformed or forbidden command returns a correlated error instead of timing out.
context.messagename = JSON.stringify({ action: 'set_number', varname: 'secret', num: 0, request_id: 'denied' });
context.anything();
assert.equal(JSON.parse(outputs.at(-1)[2].join('')).request_id, 'denied');
assert(JSON.parse(outputs.at(-1)[2].join('')).results.error);
// V8 ignores forged incoming dictionaries and only enumerates allowed objects.
const v8Outputs = [];
const v8 = vm.createContext({ patcher: panel, jsarguments: ['v8', 'parent'], require: () => ({ Scope }), outlet: (...args) => v8Outputs.push(args) });
vm.runInContext(source('max_mcp_v8_add_on.js'), v8);
v8.messagename = 'add_boxtext_dict'; v8.anything('read', 'forged-dictionary', 0);
const listing = JSON.parse(v8Outputs.at(-1)[2].join('')).results;
assert(listing.boxes.some(({ box }) => box.varname === 'sub::nested' && box.text === 'Text nested'));
assert(!JSON.stringify(listing).includes('secret'));
// Standalone mode retains its local host, with reserved infrastructure excluded.
const standalone = patch('standalone'); object(standalone, 'maxmcpid-hidden'); object(standalone, 'visible');
assert.equal(new Scope(standalone, false).list(false).boxes.length, 1);
assert.throws(() => new Scope(standalone, true).root(), /no host/);
// Run the same command dispatcher and V8 handoff in standalone mode.
const localChild = patch('local-child', standalone);
object(standalone, 'local-sub', 'patcher', localChild);
const localValue = object(localChild, 'local-value');
const localOutputs = [];
const local = vm.createContext({ patcher: standalone, jsarguments: ['js'], Dict,
  require: () => ({ Scope }), outlet: (...args) => localOutputs.push(args),
});
vm.runInContext(source('max_mcp.js'), local);
local.execute({ action: 'set_number', varname: 'local-sub::local-value', num: 0, request_id: 'local-edit' });
assert.equal(JSON.parse(localOutputs.at(-1)[2].join('')).results.success, true);
assert.deepEqual(operations.at(-1), ['message', 'local-child', 'local-value', 'set', 0]);
local.execute({ action: 'get_object_attributes', varname: 'local-sub::local-value', request_id: 'local-read' });
assert.equal(JSON.parse(localOutputs.at(-1)[2].join('')).results.value, 42);
assert.throws(() => local.execute({ action: 'remove_object', varname: 'maxmcpid-hidden' }));
const localV8 = vm.createContext({ patcher: standalone, jsarguments: ['v8'], require: () => ({ Scope }), outlet: (...args) => localOutputs.push(args) });
vm.runInContext(source('max_mcp_v8_add_on.js'), localV8);
localV8.messagename = 'add_boxtext_dict'; localV8.anything('local-list', 'dictionary', 0);
const localListing = JSON.parse(localOutputs.at(-1)[2].join('')).results;
assert(localListing.boxes.some(({ box }) => box.text === localValue.boxtext));
assert(!JSON.stringify(localListing).includes('maxmcpid-hidden'));
// The actual standalone demo keeps both runtime scripts in the same scope.
const standaloneSource = JSON.parse(source('max-msp-standalone/MaxMSP-demo.maxpat')).patcher;
const runAgent = standaloneSource.boxes.find(({ box }) => box.text === 'p run-agent').box.patcher;
assert(runAgent.boxes.some(({ box }) => box.text === 'js ../max_mcp.js'));
assert(runAgent.boxes.some(({ box }) => box.text === 'v8 ../max_mcp_v8_add_on.js'));
assert(!standaloneSource.boxes.some(({ box }) => ['remove_varname', 'assign_mcp_identifier_to_all_objects'].includes(box.text)));
console.log('PASS: host/nested inspection and all editing actions, agent subtree pruning, cords, ambiguity, creation, ancestor protection, V8 boundary, errors, and standalone mode.');
