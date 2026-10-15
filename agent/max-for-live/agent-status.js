autowatch = 1;
inlets = 1;
outlets = 3;

function show_status(label, color, port, clients) {
    outlet(0, "set", label);
    outlet(0, "bgcolor", color);
    var port_number = Number(port);
    var valid_port = isFinite(port_number) && port_number === Math.floor(port_number) && port_number > 0 && port_number <= 65535;
    outlet(1, "set", "Port:", valid_port ? port_number : "--");
    outlet(2, "set", clients ? "MCP client connected" : "No MCP client connected");
}

function stopped() {
    show_status("STOPPED", [0.35, 0.35, 0.35, 1], 0, 0);
}

function agent_status(state, port, clients) {
    if (state === "running") {
        show_status("RUNNING", [0.12, 0.48, 0.24, 1], port, clients);
    } else if (state === "error") {
        show_status("ERROR - check Max Console", [0.65, 0.18, 0.18, 1], 0, 0);
    } else {
        stopped();
    }
}

function process_running(value) {
    if (!value) stopped();
}

function anything() {
    var args = arrayfromargs(arguments);
    if (args[0] === "error") {
        agent_status("error", 0, 0);
    } else if (messagename === "stop" || messagename === "terminated") {
        stopped();
    } else if (messagename === "loadstart" || messagename === "restarting") {
        show_status("STARTING", [0.6, 0.42, 0.1, 1], 0, 0);
    }
}

function loadbang() {
    stopped();
}
