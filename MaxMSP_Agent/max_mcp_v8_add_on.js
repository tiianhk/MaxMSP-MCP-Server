
autowatch = 1; // 1
inlets = 1; // Receive network messages here
outlets = 2; // For status, responses, etc.

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


function anything() {
    var a = arrayfromargs(messagename, arguments);
    switch (messagename) {
        case "add_boxtext":
            if (arguments.length < 2) {
                post("add_boxtext: need two args: request_id, stringified_patcher_dict \n");
                return;
            }
            add_boxtext(arguments[0], arguments[1]);
            break;
        default:
            outlet(1, messagename, ...arguments);
            // outlet(1, "response", arguments[1]);
    }
}

function add_boxtext(request_id, data){
    // post(patcher_dict + "\n");
    var patcher_dict = safe_parse_json(data);
    var p = this.patcher;

    if (!patcher_dict || !Array.isArray(patcher_dict.boxes)) {
        outlet(0, "error", "add_boxtext: missing boxes in patcher_dict for request " + request_id);
        return;
    }

    patcher_dict.boxes.forEach(function (b) {
        var obj = p.getnamed(b.box.varname);
        if (obj) {
            b.box["text"] = obj.boxtext;
        }
    });

    var results = {"request_id": request_id, "results": patcher_dict}
    outlet(1, "response", split_long_string(JSON.stringify(results, null, 0), 2500));
}

