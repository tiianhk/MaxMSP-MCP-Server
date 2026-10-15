autowatch = 1;
inlets = 1;
outlets = 2;
var Scope = require("patch-scope").Scope;
var scope = new Scope(this.patcher, jsarguments.length > 1 && jsarguments[1] === "parent");
function anything() {
    var id = arguments[0];
    try {
        if (messagename !== "add_boxtext_dict") throw new Error("Unsupported inspection handoff.");
        // Do not trust incoming object paths or traverse agent dictionaries.
        // Re-enumerate the permitted tree in V8, which supplies boxtext.
        var result = { request_id: id, results: scope.list(Boolean(arguments[2])) };
        var text = JSON.stringify(result), chunks = [];
        for (var i = 0; i < text.length; i += 1000) chunks.push(text.substring(i, i + 1000));
        outlet(1, "response", chunks);
    } catch (error) {
        outlet(0, "error", error.message);
        outlet(1, "response", JSON.stringify({ request_id: id, results: { error: error.message } }));
    }
}
