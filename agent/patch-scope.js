// Shared ES5 policy for both Max JavaScript engines.
function Scope(panel, parentMode) {
    this.panel = panel;
    this.parentMode = parentMode;
}
Scope.prototype.root = function () {
    if (this.parentMode) {
        if (!this.panel.parentpatcher) throw new Error("Agent has no host patch; access denied.");
        return this.panel.parentpatcher;
    }
    return this.panel;
};
Scope.prototype.child = function (object) {
    if (object.maxclass !== "patcher" && object.maxclass !== "bpatcher") return null;
    return object.subpatcher();
};
Scope.prototype.protected = function (object, child) {
    if (this.parentMode && (object === this.panel.box || child === this.panel)) return true;
    // Protect other instances of the same panel as well, even when renamed.
    if (this.parentMode && child) {
        var file = String(child.filepath || "").replace(/\\/g, "/").split("/").pop();
        if (file === "M4L-MCP-Agent.maxpat") return true;
        try {
            file = String(object.getattr("name") || "").replace(/\\/g, "/").split("/").pop();
            if (file === "M4L-MCP-Agent.maxpat") return true;
        } catch (error) {}
    }
    // Legacy standalone infrastructure uses this reserved prefix.
    return !this.parentMode && String(object.varname || "").indexOf("maxmcpid") === 0;
};
Scope.prototype.entries = function () {
    var result = [], self = this, count = 0;
    function walk(patcher, prefix, ancestors) {
        if (ancestors.indexOf(patcher) !== -1) throw new Error("Cyclic patch hierarchy; access denied.");
        var items = [], object = patcher.firstobject;
        while (object) { items.push(object); object = object.nextobject; }
        var names = {};
        items.forEach(function (item) { if (item.varname) names["$" + item.varname] = true; });
        items.forEach(function (item) {
            var child = self.child(item);
            if (self.protected(item, child)) return; // Never descend into agent internals.
            var name = item.varname ? String(item.varname) : "";
            if (!name) {
                do { name = "$unnamed-" + count++; } while (names["$" + name]);
                names["$" + name] = true;
            }
            if (name.indexOf("::") !== -1) throw new Error("Scripting names must not contain ::");
            var full = prefix ? prefix + "::" + name : name;
            if (result.some(function (entry) { return entry.path === full; })) throw new Error("Duplicate scripting path: " + full);
            result.push({ object: item, owner: patcher, child: child, path: full, patcher_path: prefix });
            if (child) walk(child, full, ancestors.concat([patcher]));
        });
    }
    walk(this.root(), "", []);
    return result;
};
Scope.prototype.resolve = function (name, entries) {
    entries = entries || this.entries();
    if (String(name).indexOf("::") === 0) {
        var rootName = String(name).substring(2);
        var rootMatches = entries.filter(function (entry) { return entry.patcher_path === "" && entry.path === rootName; });
        if (rootMatches.length !== 1) throw new Error("Target is outside allowed host scope: " + name);
        return rootMatches[0];
    }
    var exact = entries.filter(function (entry) { return entry.path === name; });
    // Qualified paths are authoritative; simple names must be unique across the tree.
    var matches = String(name).indexOf("::") !== -1 ? exact : entries.filter(function (entry) { return entry.object.varname === name || entry.path === name; });
    if (matches.length !== 1) throw new Error("Target is outside allowed scope, missing, or ambiguous: " + name);
    return matches[0];
};
Scope.prototype.destination = function (name) {
    if (!name) return this.root();
    var entry = this.resolve(name);
    if (!entry.child) throw new Error("Destination is not an accessible subpatch: " + name);
    return entry.child;
};
Scope.prototype.list = function (selected) {
    var all = this.entries(), visible = all.filter(function (entry) { return !selected || entry.object.selected; });
    var lines = [];
    function reference(entry) { return entry.patcher_path ? entry.path : "::" + entry.path; }
    var boxes = visible.map(function (entry) {
        var object = entry.object;
        var outputs = object.patchcords ? object.patchcords.outputs : [];
        outputs.forEach(function (cord) {
            var destination = visible.filter(function (candidate) { return candidate.object === cord.dstobject && candidate.owner === entry.owner; })[0];
            if (destination) lines.push({ patchline: { source: [reference(entry), cord.srcoutlet], destination: [reference(destination), cord.dstinlet], patcher_path: entry.patcher_path } });
        });
        var box = { maxclass: object.maxclass, varname: reference(entry), local_varname: object.varname || null, patcher_path: entry.patcher_path, patching_rect: object.rect };
        try { if (object.boxtext !== undefined) box.text = object.boxtext; } catch (error) {}
        return { box: box };
    });
    return { boxes: boxes, lines: lines };
};
exports.Scope = Scope;
