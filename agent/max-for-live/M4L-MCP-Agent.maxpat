{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      1150,
      950
    ],
    "openinpresentation": 1,
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "text": "M4L MCP Agent",
          "patching_rect": [
            30,
            20,
            300,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "varname": "maxmcpid-title",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            494,
            22
          ]
        }
      },
      {
        "box": {
          "id": "help",
          "maxclass": "comment",
          "text": "Install once, then Start. Status confirms the bridge.",
          "patching_rect": [
            30,
            55,
            330,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "varname": "maxmcpid-help",
          "presentation": 1,
          "presentation_rect": [
            12,
            32,
            494,
            22
          ]
        }
      },
      {
        "box": {
          "id": "install",
          "maxclass": "message",
          "text": "script npm install",
          "patching_rect": [
            30,
            180,
            145,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-install",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "start",
          "maxclass": "message",
          "text": "script start",
          "patching_rect": [
            190,
            180,
            145,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-start",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "stop",
          "maxclass": "message",
          "text": "script stop",
          "patching_rect": [
            320,
            180,
            145,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-stop",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "text": "Controls the containing patch.",
          "patching_rect": [
            30,
            90,
            330,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "varname": "maxmcpid-note",
          "presentation": 1,
          "presentation_rect": [
            12,
            168,
            494,
            22
          ]
        }
      },
      {
        "box": {
          "id": "node",
          "maxclass": "newobj",
          "text": "node.script max_mcp_node.js",
          "patching_rect": [
            30,
            230,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "varname": "maxmcpid-node"
        }
      },
      {
        "box": {
          "id": "route",
          "maxclass": "newobj",
          "text": "route command request port agent_status",
          "patching_rect": [
            30,
            310,
            200,
            22
          ],
          "numinlets": 1,
          "numoutlets": 5,
          "varname": "maxmcpid-route"
        }
      },
      {
        "box": {
          "id": "js",
          "maxclass": "newobj",
          "text": "js ../max_mcp.js parent",
          "patching_rect": [
            30,
            400,
            170,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "varname": "maxmcpid-js"
        }
      },
      {
        "box": {
          "id": "v8",
          "maxclass": "newobj",
          "text": "v8 ../max_mcp_v8_add_on.js parent",
          "patching_rect": [
            30,
            490,
            230,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "varname": "maxmcpid-v8"
        }
      },
      {
        "box": {
          "id": "status",
          "maxclass": "newobj",
          "text": "print maxmsp-agent",
          "patching_rect": [
            400,
            310,
            140,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "varname": "maxmcpid-status"
        }
      },
      {
        "box": {
          "id": "status-ui",
          "maxclass": "newobj",
          "text": "js agent-status.js",
          "patching_rect": [
            660,
            550,
            150,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "varname": "maxmcpid-status-ui"
        }
      },
      {
        "box": {
          "id": "state-display",
          "maxclass": "message",
          "text": "STOPPED",
          "patching_rect": [
            660,
            650,
            300,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-state-display",
          "ignoreclick": 1,
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "bgcolor": [
            0.35,
            0.35,
            0.35,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            100,
            494,
            24
          ]
        }
      },
      {
        "box": {
          "id": "port-display",
          "maxclass": "message",
          "text": "Port: --",
          "patching_rect": [
            660,
            720,
            130,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-port-display",
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            130,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "client-display",
          "maxclass": "message",
          "text": "No MCP client connected",
          "patching_rect": [
            820,
            720,
            200,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-client-display",
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            130,
            130,
            376,
            22
          ]
        }
      },
      {
        "box": {
          "id": "lifecycle",
          "maxclass": "newobj",
          "text": "route running",
          "patching_rect": [
            660,
            310,
            100,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "varname": "maxmcpid-lifecycle"
        }
      },
      {
        "box": {
          "id": "running-prepend",
          "maxclass": "newobj",
          "text": "prepend process_running",
          "patching_rect": [
            660,
            390,
            165,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-running-prepend"
        }
      },
      {
        "box": {
          "id": "running-select",
          "maxclass": "newobj",
          "text": "sel 1",
          "patching_rect": [
            850,
            390,
            50,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "varname": "maxmcpid-running-select"
        }
      },
      {
        "box": {
          "id": "status-query",
          "maxclass": "message",
          "text": "agent_status",
          "patching_rect": [
            850,
            460,
            90,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-status-query"
        }
      },
      {
        "box": {
          "id": "poll-load",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "patching_rect": [
            30,
            650,
            90,
            22
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-load"
        }
      },
      {
        "box": {
          "id": "poll",
          "maxclass": "newobj",
          "text": "qmetro 1000",
          "patching_rect": [
            30,
            720,
            90,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-poll"
        }
      },
      {
        "box": {
          "id": "running-query",
          "maxclass": "message",
          "text": "script running",
          "patching_rect": [
            30,
            790,
            100,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-running-query"
        }
      },
      {
        "box": {
          "id": "status-prepend",
          "maxclass": "newobj",
          "text": "prepend agent_status",
          "patching_rect": [
            660,
            470,
            145,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-status-prepend"
        }
      },
      {
        "box": {
          "id": "logs-toggle",
          "maxclass": "textbutton",
          "patching_rect": [
            400,
            650,
            105,
            24
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "varname": "maxmcpid-logs-toggle",
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            401,
            65,
            105,
            26
          ],
          "text": "Console Logs",
          "texton": "Console Logs",
          "mode": 1,
          "outlettype": [
            "int",
            "",
            "int"
          ],
          "bgcolor": [
            0.35,
            0.35,
            0.35,
            1
          ],
          "bgoncolor": [
            0.95,
            0.72,
            0.16,
            1
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "textoncolor": [
            0.12,
            0.12,
            0.12,
            1
          ]
        }
      },
      {
        "box": {
          "id": "logs-value",
          "maxclass": "newobj",
          "patching_rect": [
            400,
            720,
            55,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-logs-value",
          "text": "int 0"
        }
      },
      {
        "box": {
          "id": "logs-prepend",
          "maxclass": "newobj",
          "patching_rect": [
            400,
            790,
            110,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-logs-prepend",
          "text": "prepend logging"
        }
      },
      {
        "box": {
          "id": "logs-filter",
          "maxclass": "newobj",
          "patching_rect": [
            400,
            860,
            150,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-logs-filter",
          "text": "js agent-console.js"
        }
      },
      {
        "box": {
          "id": "install-button",
          "maxclass": "textbutton",
          "text": "Install Dependencies",
          "texton": "Install Dependencies",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "",
            "int"
          ],
          "patching_rect": [
            30,
            120,
            145,
            26
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            65,
            145,
            26
          ],
          "varname": "maxmcpid-install-button",
          "bgcolor": [
            0.28,
            0.28,
            0.28,
            1
          ],
          "bgoncolor": [
            0.45,
            0.45,
            0.45,
            1
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "textoncolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "start-button",
          "maxclass": "textbutton",
          "text": "Start Server",
          "texton": "Start Server",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "",
            "int"
          ],
          "patching_rect": [
            190,
            120,
            110,
            26
          ],
          "presentation": 1,
          "presentation_rect": [
            165,
            65,
            110,
            26
          ],
          "varname": "maxmcpid-start-button",
          "bgcolor": [
            0.28,
            0.28,
            0.28,
            1
          ],
          "bgoncolor": [
            0.45,
            0.45,
            0.45,
            1
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "textoncolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "stop-button",
          "maxclass": "textbutton",
          "text": "Stop Server",
          "texton": "Stop Server",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "",
            "int"
          ],
          "patching_rect": [
            320,
            120,
            110,
            26
          ],
          "presentation": 1,
          "presentation_rect": [
            283,
            65,
            110,
            26
          ],
          "varname": "maxmcpid-stop-button",
          "bgcolor": [
            0.28,
            0.28,
            0.28,
            1
          ],
          "bgoncolor": [
            0.45,
            0.45,
            0.45,
            1
          ],
          "textcolor": [
            1,
            1,
            1,
            1
          ],
          "textoncolor": [
            1,
            1,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "poll-delay",
          "maxclass": "newobj",
          "text": "delay 1000",
          "patching_rect": [
            160,
            650,
            90,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-delay"
        }
      },
      {
        "box": {
          "id": "poll-enable",
          "maxclass": "newobj",
          "text": "t 1",
          "patching_rect": [
            160,
            720,
            40,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-enable"
        }
      },
      {
        "box": {
          "id": "poll-disable",
          "maxclass": "newobj",
          "text": "t 0",
          "patching_rect": [
            280,
            650,
            40,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-disable"
        }
      },
      {
        "box": {
          "id": "poll-close",
          "maxclass": "newobj",
          "text": "closebang",
          "patching_rect": [
            280,
            580,
            70,
            22
          ],
          "numinlets": 0,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-close"
        }
      },
      {
        "box": {
          "id": "poll-cancel",
          "maxclass": "message",
          "text": "stop",
          "patching_rect": [
            280,
            720,
            40,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "varname": "maxmcpid-poll-cancel"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "install",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start",
            0
          ],
          "destination": [
            "node",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "stop",
            0
          ],
          "destination": [
            "node",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "node",
            0
          ],
          "destination": [
            "route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            0
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            1
          ],
          "destination": [
            "js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            2
          ],
          "destination": [
            "logs-filter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            2
          ],
          "destination": [
            "v8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            1
          ],
          "destination": [
            "node",
            0
          ],
          "midpoints": [
            520,
            422,
            520,
            210,
            39,
            210
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "js",
            0
          ],
          "destination": [
            "status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v8",
            1
          ],
          "destination": [
            "node",
            0
          ],
          "midpoints": [
            550,
            512,
            550,
            210,
            39,
            210
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "v8",
            0
          ],
          "destination": [
            "status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "route",
            3
          ],
          "destination": [
            "status-prepend",
            0
          ],
          "midpoints": [
            180,
            350,
            640,
            350,
            640,
            455,
            669,
            455
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "node",
            1
          ],
          "destination": [
            "lifecycle",
            0
          ],
          "midpoints": [
            221,
            275,
            669,
            275
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle",
            0
          ],
          "destination": [
            "running-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "running-prepend",
            0
          ],
          "destination": [
            "status-ui",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle",
            0
          ],
          "destination": [
            "running-select",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "running-select",
            0
          ],
          "destination": [
            "status-query",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status-query",
            0
          ],
          "destination": [
            "node",
            0
          ],
          "midpoints": [
            1000,
            490,
            1000,
            200,
            39,
            200
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle",
            1
          ],
          "destination": [
            "status-ui",
            0
          ],
          "midpoints": [
            980,
            350,
            980,
            535,
            669,
            535
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status-ui",
            0
          ],
          "destination": [
            "state-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status-ui",
            1
          ],
          "destination": [
            "port-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status-ui",
            2
          ],
          "destination": [
            "client-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "poll-load",
            0
          ],
          "destination": [
            "poll",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "poll",
            0
          ],
          "destination": [
            "running-query",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "running-query",
            0
          ],
          "destination": [
            "node",
            0
          ],
          "midpoints": [
            1090,
            820,
            1090,
            180,
            39,
            180
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "lifecycle",
            1
          ],
          "destination": [
            "logs-filter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "status-prepend",
            0
          ],
          "destination": [
            "status-ui",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logs-toggle",
            0
          ],
          "destination": [
            "logs-value",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logs-value",
            0
          ],
          "destination": [
            "logs-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logs-prepend",
            0
          ],
          "destination": [
            "logs-filter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logs-prepend",
            0
          ],
          "destination": [
            "node",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "running-select",
            0
          ],
          "destination": [
            "logs-value",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "logs-filter",
            0
          ],
          "destination": [
            "status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "install-button",
            0
          ],
          "destination": [
            "install",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start-button",
            0
          ],
          "destination": [
            "start",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop-button",
            0
          ],
          "destination": [
            "stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start",
            0
          ],
          "destination": [
            "poll-delay",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "poll-delay",
            0
          ],
          "destination": [
            "poll-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "poll-enable",
            0
          ],
          "destination": [
            "poll",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop",
            0
          ],
          "destination": [
            "poll-disable",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "poll-disable",
            0
          ],
          "destination": [
            "poll",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "poll-close",
            0
          ],
          "destination": [
            "poll-disable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "stop",
            0
          ],
          "destination": [
            "poll-cancel",
            0
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "poll-cancel",
            0
          ],
          "destination": [
            "poll-delay",
            0
          ]
        }
      }
    ]
  }
}
