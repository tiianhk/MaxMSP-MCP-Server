import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const root = fileURLToPath(new URL('../agent/', import.meta.url));
const files = [
  'max-for-live/M4L-MCP-Agent.maxpat',
  'max-for-live/M4L-Demo.amxd',
  'max-msp-standalone/MaxMSP-demo.maxpat',
];
let references = 0;
function inspect(patcher, directory) {
  for (const { box } of patcher.boxes ?? []) {
    const match = /^(?:js|v8|node\.script)\s+(\S+)/.exec(box.text ?? '');
    if (match) {
      assert((fs.existsSync(path.resolve(directory, match[1])) || fs.existsSync(path.resolve(root, match[1]))), `Missing script: ${match[1]}`);
      references++;
    }
    if (box.filename?.endsWith('.js')) {
      assert(fs.existsSync(path.resolve(directory, box.filename)), `Missing saved script: ${box.filename}`);
    }
    if (box.patcher) inspect(box.patcher, directory);
  }
  for (const dependency of patcher.dependency_cache ?? []) {
    assert(!dependency.bootpath, 'Machine-specific dependency path remains');
    if (dependency.name?.endsWith('.js')) {
      assert(fs.existsSync(path.resolve(directory, dependency.patcherrelativepath ?? '.', dependency.name)));
    }
  }
}
for (const relative of files) {
  const filename = path.join(root, relative);
  const bytes = fs.readFileSync(filename);
  let source = bytes.toString('utf8');
  if (relative.endsWith('.amxd')) {
    assert.equal(bytes.toString('ascii', 0, 4), 'ampf');
    assert.equal(bytes.readUInt32LE(28), bytes.length - 32);
    source = bytes.subarray(32).toString('utf8').replace(/\0+$/, '');
  }
  inspect(JSON.parse(source).patcher, path.dirname(filename));
}
assert(references > 0);
assert(fs.existsSync(path.join(root, 'package.json')));
assert(fs.existsSync(path.join(root, 'package-lock.json')));
console.log(`PASS: ${files.length} patch/device files and ${references} script references resolve in the new layout.`);
