autowatch = 1;

const Max = require("max-api");
const { Server } = require("socket.io");

// Configuration
var PORT = 5002;
const NAMESPACE = "/mcp";

// Report readiness only after the listening socket is bound.
var io;
var listening = false;
var clients = 0;
var logging = false;

function log(message) {
  if (logging) Max.post(message);
}

function report_status() {
  Max.outlet("agent_status", listening ? "running" : "stopped", listening ? PORT : 0, clients);
}

function start_bridge() {
  listening = false;
  clients = 0;
  io = new Server(PORT, { cors: { origin: "*" } });
  io.httpServer.on("listening", () => {
    listening = true;
    Max.outlet("port", `Server listening on port ${PORT}`);
    report_status();
  });
  io.httpServer.on("error", (error) => {
    listening = false;
    Max.post(`MCP bridge error: ${error.message}`);
    Max.outlet("agent_status", "error", 0, 0);
  });
  io.httpServer.on("close", () => {
    listening = false;
    clients = 0;
    report_status();
  });
  io.of(NAMESPACE).on("connection", (socket) => {
    clients += 1;
    report_status();
    log(`Socket.IO client connected: ${socket.id}`);
    socket.on("command", (data) => Max.outlet("command", JSON.stringify(data)));
    socket.on("request", (data) => Max.outlet("request", JSON.stringify(data)));
    socket.on("port", (port) => change_port(port));
    socket.on("disconnect", () => {
      clients = Math.max(0, clients - 1);
      report_status();
      log(`Socket.IO client disconnected: ${socket.id}`);
    });
  });
}

function change_port(port) {
  const nextPort = Number(port);
  if (!Number.isInteger(nextPort) || nextPort < 1 || nextPort > 65535) return;
  io.close(() => {
    PORT = nextPort;
    start_bridge();
  });
}

start_bridge();
Max.addHandler("agent_status", report_status);
Max.addHandler("logging", (value) => { logging = Number(value) !== 0; });

function safe_parse_json(str) {
    try {
        return JSON.parse(str);
    } catch (e) {
        Max.post("error, Invalid JSON: " + e.message);
        Max.post("This is likely because the patcher has too much objects, select some of them and try again");
        return null;
    }
}

Max.addHandler("response", async (...msg) => {
	var str = msg.join("")
	var data = safe_parse_json(str);
	await io.of(NAMESPACE).emit("response", data);
	// await Max.post(`Sent response: ${JSON.stringify(data)}`);
});

Max.addHandler("port", change_port);
