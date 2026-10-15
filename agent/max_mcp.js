autowatch = 1;
inlets = 1;
outlets = 3;
var Scope = require("patch-scope").Scope;
var scope = new Scope(this.patcher, jsarguments.length > 1 && jsarguments[1] === "parent");
var patch_data = new Dict();

function chunks(text) {
    var result = [];
    for (var i = 0; i < text.length; i += 1000) result.push(text.substring(i, i + 1000));
    return result;
}
function respond(id, results) {
    if (id) outlet(1, "response", chunks(JSON.stringify({ request_id: id, results: results })));
}
function editable(entry) {
    function check(patcher) {
        var object = patcher.firstobject;
        while (object) {
            var child = scope.child(object);
            if (scope.protected(object, child)) throw new Error("Cannot edit an ancestor of the MCP agent.");
            if (child) check(child);
            object = object.nextobject;
        }
    }
    if (entry.child) check(entry.child);
    return entry;
}
function target(name) { return editable(scope.resolve(name)); }
function safe_name(name) {
    if (typeof name !== "string" || !name || name.indexOf("::") !== -1) throw new Error("Invalid or reserved scripting name.");
}
function inspect_patch(id, selected) {
    // Enumerate here as well as in V8; both sides apply the same scope policy.
    patch_data.parse(JSON.stringify(scope.list(selected)));
    outlet(2, "add_boxtext_dict", id, patch_data.name, selected ? 1 : 0);
}
function execute(data) {
    var entry, object, src, dst, owner;
    switch (data.action) {
    case "fetch_test":
    case "get_objects_in_patch": inspect_patch(data.request_id, false); return;
    case "get_objects_in_selected": inspect_patch(data.request_id, true); return;
    case "get_object_attributes":
        object = scope.resolve(data.varname).object;
        var attributes = {};
        object.getattrnames().forEach(function (name) { attributes[name] = object.getattr(name); });
        respond(data.request_id, attributes); return;
    case "get_avoid_rect_position":
        // Host objects only; never expose agent bounds or child coordinate spaces.
        var bounds = null;
        scope.entries().forEach(function (item) {
            if (item.owner !== scope.root()) return;
            var r = item.object.rect;
            bounds = bounds ? [Math.min(bounds[0], r[0]), Math.min(bounds[1], r[1]), Math.max(bounds[2], r[2]), Math.max(bounds[3], r[3])] : r.slice();
        });
        respond(data.request_id, bounds || [0, 0, 0, 0]); return;
    case "add_object":
        safe_name(data.varname);
        owner = scope.destination(data.patcher_path || "");
        var existing = owner.firstobject;
        while (existing) {
            if (existing.varname === data.varname) throw new Error("Scripting name already exists in destination.");
            existing = existing.nextobject;
        }
        if (!Array.isArray(data.position) || data.position.length !== 2) throw new Error("Expected two position coordinates.");
        object = owner.newdefault(data.position[0], data.position[1], data.obj_type, data.args || []);
        object.varname = data.varname;
        if (data.obj_type === "message" || data.obj_type === "comment") object.message("set", data.args || []);
        break;
    case "remove_object": entry = target(data.varname); entry.owner.remove(entry.object); break;
    case "connect_objects":
    case "disconnect_objects":
        src = target(data.src_varname); dst = target(data.dst_varname);
        if (src.owner !== dst.owner) throw new Error("Patch cords require objects in the same subpatch.");
        src.owner[data.action === "connect_objects" ? "connect" : "disconnect"](src.object, data.outlet_idx || 0, dst.object, data.inlet_idx || 0);
        break;
    case "set_object_attribute":
        object = target(data.varname).object;
        if (data.attr_name === "varname") safe_name(data.attr_value[0]);
        if (data.attr_name === "text" && (object.maxclass === "message" || object.maxclass === "comment")) object.message("set", data.attr_value);
        else object.setattr(data.attr_name, data.attr_value);
        break;
    case "set_message_text":
        object = target(data.varname).object;
        if (object.maxclass !== "message") throw new Error("Target is not a message box.");
        object.message("set", data.new_text); break;
    case "send_message_to_object": object = target(data.varname).object; object.message(data.message); break;
    case "send_bang_to_object": object = target(data.varname).object; object.message("bang"); break;
    case "set_number": object = target(data.varname).object; object.message("set", data.num); break;
    default: throw new Error("Unknown action: " + data.action);
    }
    respond(data.request_id, { success: true });
}
function anything() {
    var data;
    try {
        data = JSON.parse(arrayfromargs(messagename, arguments).join(" "));
        execute(data);
    } catch (error) {
        outlet(0, "error", error.message);
        respond(data && data.request_id, { error: error.message });
    }
}
