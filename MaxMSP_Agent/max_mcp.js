
autowatch = 1; // 1
inlets = 2; // inlet 0: network messages, inlet 1: console messages
outlets = 4; // For status, responses, etc.

var p = this.patcher
var obj_count = 0;
var boxes = [];
var lines = [];
var connection_count = 0;
var MAX_CONNECTIONS = 500;
var MAX_OBJECTS = 1; // disable object cap while testing stability with v8
var console_messages = []; // Buffer for console messages

function safe_parse_json(str) {
    try {
        return JSON.parse(str);
    } catch (e) {
        outlet(0, "error", "Invalid JSON: " + e.message);
        return null;
    }
}

function split_long_string(inString, maxLength) {
    // var longString = inString.replace(/\s+/g, "");
    var result = [];
    for (var i = 0; i < inString.length; i += maxLength) {
        result.push(inString.substring(i, i + maxLength));
    }
    return result;
}

// Handler for inlet 1 - captures console messages
function msg_int(val) {
    if (inlet == 1) {
        console_messages.push({type: "int", value: val, timestamp: Date.now()});
    }
}

function msg_float(val) {
    if (inlet == 1) {
        console_messages.push({type: "float", value: val, timestamp: Date.now()});
    }
}

function list() {
    if (inlet == 1) {
        var args = arrayfromargs(arguments);
        console_messages.push({type: "list", value: args, timestamp: Date.now()});
    }
}

// Called when a message arrives at inlet 0 (from [udpreceive] or similar)
function anything() {
    // If this is from inlet 1, store as console message
    if (inlet == 1) {
        var msg = arrayfromargs(messagename, arguments);
        console_messages.push({type: messagename, value: msg, timestamp: Date.now()});
        return;
    }

    var msg = arrayfromargs(messagename, arguments).join(" ");
    var data = safe_parse_json(msg);
    if (!data) {
        outlet(3, "console_message", msg);
        return;
    }

    switch (data.action) {
        case "fetch_test":
            if (data.request_id) {
                get_objects_in_patch(data.request_id);
            } else {
                outlet(0, "error", "Missing request_id for fetch_test");
            }
            break;
        case "get_objects_in_patch":
            if (data.request_id) {
                get_objects_in_patch(data.request_id, data.include_tagged || false);
            } else {
                outlet(0, "error", "Missing request_id for get_objects_in_patch");
            }
            break;
        case "get_objects_in_selected":
            if (data.request_id) {
                get_objects_in_selected(data.request_id, data.include_tagged || false);
            } else {
                outlet(0, "error", "Missing request_id for get_objects_in_selected");
            }
            break;
        case "get_object_attributes":
            if (data.request_id && data.varname) {
                get_object_attributes(data.request_id, data.varname);
            } else {
                outlet(0, "error", "Missing request_id or varname for get_object_attributes");
            }
            break;
        case "get_avoid_rect_position":
            if (data.request_id) {
                get_avoid_rect_position(data.request_id);
            }
            break;
        case "add_object":
            if (data.obj_type && data.position && data.varname) {
                add_object(data.position[0], data.position[1], data.obj_type, data.args, data.varname);
            } else {
                outlet(0, "error", "Missing obj_type or position or varname for add_object");
            }
            break;
        case "remove_object":
            if (data.varname) {
                remove_object(data.varname);
            } else {
                outlet(0, "error", "Missing varname for remove_object");
            }
            break;
        case "connect_objects":
            if (data.src_varname && data.dst_varname) {
                connect_objects(data.src_varname, data.outlet_idx || 0, data.dst_varname, data.inlet_idx || 0);
            } else {
                outlet(0, "error", "Missing src_varname or dst_varname for connect_objects");
            }
            break;
        case "disconnect_objects":
            if (data.src_varname && data.dst_varname) {
                disconnect_objects(data.src_varname, data.outlet_idx || 0, data.dst_varname, data.inlet_idx || 0);
            } else {
                outlet(0, "error", "Missing src_varname or dst_varname for disconnect_objects");
            }
            break;
        case "set_object_attribute":
            if (data.varname && data.attr_name && data.attr_value) {
                set_object_attribute(data.varname, data.attr_name, data.attr_value);
            } else {
                outlet(0, "error", "Missing varname or attr_name for attr_value");
            }
            break;
        case "set_message_text":
            if (data.varname && data.new_text) {
                set_message_text(data.varname, data.new_text);
            }
            break;
        case "send_message_to_object":
            if (data.varname && data.message) {
                send_message_to_object(data.varname, data.message);
            }
            break;
        case "send_bang_to_object":
            if (data.varname) {
                send_bang_to_object(data.varname);
            }
            break;
        case "set_number":
            if (data.varname && data.num) {
                set_number(data.varname, data.num);
            }
            break;
        case "get_max_console_messages":
            if (data.request_id) {
                get_max_console_messages(data.request_id);
            } else {
                outlet(0, "error", "Missing request_id for get_max_console_messages");
            }
            break;
        default:
            outlet(0, "error", "Unknown action: " + data.action);
    }
}

// function fetch_test(request_id) {
// 	var str = get_patcher_objects(request_id)
// 	//outlet(1, request_id)
// }

function add_object(x, y, type, args, var_name) {
    var new_obj = p.newdefault(x, y, type, args);
    new_obj.varname = var_name;
    if (type == "message" || type == "comment" || type == "flonum") {
        new_obj.message("set", args);
    }
}

function remove_object(var_name) {
	var obj = p.getnamed(var_name);
    if (obj) {
	    p.remove(obj);
    }
}

function connect_objects(src_varname, outlet_idx, dst_varname, inlet_idx) {
    var src = p.getnamed(src_varname);
    var dst = p.getnamed(dst_varname);
    p.connect(src, outlet_idx, dst, inlet_idx);
}

function disconnect_objects(src_varname, outlet_idx, dst_varname, inlet_idx) {
	var src = p.getnamed(src_varname);
    var dst = p.getnamed(dst_varname);
	p.disconnect(src, outlet_idx, dst, inlet_idx);
}

function set_object_attribute(varname, attr_name, attr_value) {
    var obj = p.getnamed(varname);
    if (obj) {
        if (obj.maxclass == "message" || obj.maxclass == "comment") {
            if (attr_name == "text") {
                obj.message("set", attr_value);
            }
        }
        // Check if the attribute exists before setting it
        var attrnames = obj.getattrnames();
        if (attrnames.indexOf(attr_name) == -1) {
            post("Attribute not found: " + attr_name);
            return;
        }
        // Set the attribute
        obj.setattr(attr_name, attr_value);
    } else {
        post("Object not found: " + varname);
    }
}

function set_message_text(varname, new_text) {
    var obj = p.getnamed(varname);
    if (obj) {
        if (obj.maxclass == "message") {
            obj.message("set", new_text);
        } else {
            post("Object is not a message box: " + varname);
        }
    } else {
        post("Object not found: " + varname);
    }
}

function send_message_to_object(varname, message) {
    var obj = p.getnamed(varname);
    if (obj) {
        obj.message(message);
    } else {
        post("Object not found: " + varname);
    }
}

function send_bang_to_object(varname) {
    var obj = p.getnamed(varname);
    if (obj) {
        obj.message("bang");
    } else {
        post("Object not found: " + varname);
    }
}

function set_text_in_comment(varname, text) {
    var obj = p.getnamed(varname);
    if (obj) {
        if (obj.maxclass == "comment") {
            obj.message("set", text);
        } else {
            post("Object is not a comment box: " + varname);
        }
    } else {
        post("Object not found: " + varname);
    }
}

function set_number(varname, num) {
    var obj = p.getnamed(varname);
    if (obj) {
        obj.message("set", num);
    } else {
        post("Object not found: " + varname);
    }
}

// ========================================
// fetch request:

function get_objects_in_patch(request_id, include_tagged) {

	var p = this.patcher
    obj_count = 0;
    boxes = [];
    lines = [];
    connection_count = 0;

    var object_limit_reached = false;

    try {
        p.applydeep(function(obj) {
            if (MAX_OBJECTS > 0 && obj_count >= MAX_OBJECTS) {
                object_limit_reached = true;
                return;
            }
            collect_objects(obj, include_tagged);
        });
    } catch (e) {
        outlet(0, "error", "JavaScript error during patch analysis: " + e.message);
        object_limit_reached = true;
    }

    var patcher_dict = {};
    patcher_dict["boxes"] = boxes;
    patcher_dict["lines"] = lines;

    if (object_limit_reached && MAX_OBJECTS > 0) {
        patcher_dict["warning"] = "Safety limit reached (" + MAX_OBJECTS + " objects, " + MAX_CONNECTIONS + " connections). Analysis truncated to prevent crashes.";
        outlet(0, "warning", "Large/complex patch detected - analysis limited to " + MAX_OBJECTS + " objects to prevent crashes");
    }

    // use these if no v8:
    // var results = {"request_id": request_id, "results": patcher_dict}
    // outlet(1, "response", split_long_string(JSON.stringify(results, null, 2), 2000));

    // use this if has v8:
    outlet(2, "add_boxtext", request_id, JSON.stringify(patcher_dict, null, 0));
}

function get_objects_in_selected(request_id, include_tagged) {

	var p = this.patcher
    obj_count = 0;
    boxes = [];
    lines = [];
    connection_count = 0;

    var object_limit_reached = false;

    try {
        p.applydeepif(function(obj) {
            if (MAX_OBJECTS > 0 && obj_count >= MAX_OBJECTS) {
                object_limit_reached = true;
                return;
            }
            collect_objects(obj, include_tagged);
        }, function (obj) {
            return obj.selected;
        });
    } catch (e) {
        outlet(0, "error", "JavaScript error during selection analysis: " + e.message);
        object_limit_reached = true;
    }

    var patcher_dict = {};
    patcher_dict["boxes"] = boxes;
    patcher_dict["lines"] = lines;

    if (object_limit_reached && MAX_OBJECTS > 0) {
        patcher_dict["warning"] = "Safety limit reached (" + MAX_OBJECTS + " objects, " + MAX_CONNECTIONS + " connections). Selection analysis truncated to prevent crashes.";
        outlet(0, "warning", "Large/complex selection detected - analysis limited to " + MAX_OBJECTS + " objects to prevent crashes");
    }

    // use these if no v8:
    // var results = {"request_id": request_id, "results": patcher_dict}
    // outlet(1, "response", split_long_string(JSON.stringify(results, null, 2), 2000));

    // use this if has v8:
    outlet(2, "add_boxtext", request_id, JSON.stringify(patcher_dict, null, 0));
}

function collect_objects(obj, include_tagged) {
    try {
        // Skip objects with potentially dangerous varnmes
        if (!include_tagged && obj.varname && obj.varname.substring(0, 8) == "maxmcpid"){
            return;
        }
        if (!obj.varname){
            obj.varname = "obj-" + obj_count;
        }
        obj_count += 1;

        if ((obj_count % 200) === 0) {
            var progress_msg = "collect_objects processed " + obj_count + " objects; latest maxclass=" + (obj.maxclass || "unknown") + " varname=" + obj.varname;
            post(progress_msg);
            outlet(3, "console_message", "v8: " + progress_msg);
        }

        // Safely collect patchcords with connection limit
        try {
            var outputs = obj.patchcords.outputs;
            if (outputs && outputs.length){
                for (var i = 0; i < Math.min(outputs.length, 20); i++) { // Limit connections per object
                    if (connection_count >= MAX_CONNECTIONS) {
                        break;
                    }
                    if (outputs[i] && outputs[i].dstobject && outputs[i].dstobject.varname) {
                        lines.push({patchline: {
                            source: [obj.varname, outputs[i].srcoutlet || 0],
                            destination: [outputs[i].dstobject.varname, outputs[i].dstinlet || 0]
                        }});
                        connection_count++;
                    }
                }
            }
        } catch (e) {
            // Skip patchcord collection if it fails
        }

        // Skip attribute collection entirely to prevent js_atomtoval crashes
        // This was the main source of crashes in the stack trace

        boxes.push({box:{
            maxclass: obj.maxclass || "unknown",
            varname: obj.varname,
            patching_rect: obj.rect || [0, 0, 100, 20]
        }});
    } catch (e) {
        // If any object processing fails, skip it entirely
        return;
    }
}

function get_object_attributes(request_id, var_name) {
    try {
    	var p = this.patcher
        var obj = p.getnamed(var_name);
        if (!obj) {
            var results = {"request_id": request_id, "results": {"error": "Object not found: " + var_name}}
            outlet(1, "response", JSON.stringify(results, null, 0));
    	    return;
        }

        // Skip attribute retrieval for complex objects that can cause crashes
        if (obj.maxclass == "js" || obj.maxclass == "node.script" || obj.maxclass == "v8" || obj.maxclass == "jsui") {
            var results = {"request_id": request_id, "results": {"warning": "Attributes skipped for " + obj.maxclass + " objects to prevent crashes"}}
            outlet(1, "response", JSON.stringify(results, null, 0));
            return;
        }

        var attrnames = obj.getattrnames();
        var attributes = {};

        // Limit attribute collection and use safe retrieval
        if (attrnames && attrnames.length){
            var max_attrs = Math.min(attrnames.length, 50); // Limit to 50 attributes
            for (var i = 0; i < max_attrs; i++) {
                try {
                    var name = attrnames[i];
                    if (name && typeof name === "string") {
                        // Skip potentially dangerous attributes
                        if (name.indexOf("script") === -1 && name.indexOf("code") === -1) {
                            var value = obj.getattr(name);
                            // Only store simple values
                            if (typeof value === "string" || typeof value === "number" || typeof value === "boolean") {
                                attributes[name] = value;
                            }
                        }
                    }
                } catch (e) {
                    // Skip this attribute if it causes any error
                    continue;
                }
            }
        }

        var results = {"request_id": request_id, "results": attributes}
        outlet(1, "response", split_long_string(JSON.stringify(results, null, 0), 2500));
    } catch (e) {
        var results = {"request_id": request_id, "results": {"error": "Failed to get attributes: " + e.message}}
        outlet(1, "response", JSON.stringify(results, null, 0));
    }
}

function get_max_console_messages(request_id) {
    try {
        // Copy the console messages and clear the buffer
        var messages = console_messages.slice();
        console_messages = [];

        var results = {"request_id": request_id, "results": messages}
        outlet(1, "response", JSON.stringify(results, null, 0));
    } catch (e) {
        var results = {"request_id": request_id, "results": {"error": "Failed to get console messages: " + e.message}}
        outlet(1, "response", JSON.stringify(results, null, 0));
    }
}

function get_window_rect() {
    var w = this.patcher.wind;
    var title = w.title;
    var size = w.size;
    // outlet(1, "response", split_long_string(JSON.stringify(results, null, 0), 2500));
}

function get_avoid_rect_position(request_id) {
    try {
        var p = this.patcher;
        var l, t, r, b;
        var obj_count = 0;
        var MAX_RECT_OBJECTS = 500; // Limit objects for rect calculation

        p.applyif(
            function (obj) {
                if (obj_count >= MAX_RECT_OBJECTS) {
                    return; // Stop processing if we hit the limit
                }
                obj_count++;

                try {
                    if (obj.rect && obj.rect.length >= 4) {
                        if (obj.rect[0] < l || l == undefined) {
                            l = obj.rect[0];
                        }
                        if (obj.rect[1] < t || t == undefined) {
                            t = obj.rect[1];
                        }
                        if (obj.rect[2] > r || r == undefined) {
                            r = obj.rect[2];
                        }
                        if (obj.rect[3] > b || b == undefined) {
                            b = obj.rect[3];
                        }
                    }
                } catch (e) {
                    // Skip this object if rect access fails
                }
            },
            function (obj) {
                try {
                    return obj.varname && obj.varname.substring(0, 8) != "maxmcpid";
                } catch (e) {
                    return false;
                }
        });

        // Provide sensible defaults if no valid rects found
        var avoid_rect = [l || 50, t || 50, r || 300, b || 300];

        var results = {"request_id": request_id, "results": avoid_rect}
        outlet(1, "response", JSON.stringify(results, null, 1));
    } catch (e) {
        // Fallback rect if everything fails
        var results = {"request_id": request_id, "results": [50, 50, 300, 300]}
        outlet(1, "response", JSON.stringify(results, null, 1));
    }
}

// ========================================
// for debugging use only:


function remove_varname() {
    // for debugging
    // remove all objects' varname
    var p = max.frontpatcher;
    p.applydeep(function (obj) {
        obj.varname = "";
    });
}

function assign_mcp_identifier_to_all_objects() {
    // for debugging
    // remove all objects' varname
	var idx = 0
    var p = max.frontpatcher;
    p.applydeep(function (obj) {
        obj.varname = "maxmcpid-"+idx;
		idx += 1
    });
}


function print_varname() {
    // for debugging
    // remove all objects' varname
    var p = max.frontpatcher;
    p.applydeep(function (obj) {
        post(obj.varname)
    });
}

function parsed_patcher() {
	if (max.frontpatcher.filepath == ""){
		post(NOT_SAVED);
		return;
	}
	var lines = new String();
    var patcher_file = new File(max.frontpatcher.filepath);
    //post("max.frontpatcher.filepath: " + patcher_file + "\n");

	while (patcher_file.position != patcher_file.eof){
		lines += patcher_file.readline();
	}
	patcher_file.close();

    var parsed_patcher = JSON.parse(lines);
	// post(JSON.stringify(parsed_patcher));
}
