autowatch = 1;
inlets = 1;
outlets = 1;
var enabled = false;

function logging(value) {
    enabled = Number(value) !== 0;
}

function anything() {
    var args = arrayfromargs(arguments);
    if (enabled || messagename === "error" || args[0] === "error") {
        outlet(0, [messagename].concat(args));
    }
}
