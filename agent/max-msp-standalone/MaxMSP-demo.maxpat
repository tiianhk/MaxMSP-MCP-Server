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
      357.0,
      -818.0,
      1041.0,
      673.0
    ],
    "gridsize": [
      15.0,
      15.0
    ],
    "showrootpatcherontab": 0,
    "showontab": 0,
    "boxes": [
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
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
              357.0,
              -792.0,
              1041.0,
              647.0
            ],
            "gridsize": [
              15.0,
              15.0
            ],
            "showontab": 2,
            "boxes": [
              {
                "box": {
                  "color": [
                    0.869177997112274,
                    0.548376858234406,
                    0.0,
                    1.0
                  ],
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
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
                      478.0,
                      168.0,
                      1000.0,
                      780.0
                    ],
                    "gridsize": [
                      15.0,
                      15.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            424.0,
                            238.0,
                            122.0,
                            22.0
                          ],
                          "text": "r 1155-ready-for-dicts",
                          "varname": "maxmcpid-300"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
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
                              300.0,
                              126.0,
                              1094.0,
                              543.0
                            ],
                            "gridsize": [
                              15.0,
                              15.0
                            ],
                            "boxes": [
                              {
                                "box": {
                                  "id": "obj-39",
                                  "maxclass": "newobj",
                                  "numinlets": 10,
                                  "numoutlets": 9,
                                  "outlettype": [
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    ""
                                  ],
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
                                      84.0,
                                      129.0,
                                      833.0,
                                      824.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            428.0,
                                            37.0,
                                            22.0
                                          ],
                                          "text": "zl.rev",
                                          "varname": "maxmcpid-299"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-48",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            496.0,
                                            79.0,
                                            22.0
                                          ],
                                          "text": "append bang",
                                          "varname": "maxmcpid-298"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-47",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            465.0,
                                            47.0,
                                            22.0
                                          ],
                                          "text": "zl.iter 1",
                                          "varname": "maxmcpid-297"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-46",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 9,
                                          "outlettype": [
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            529.0,
                                            103.0,
                                            22.0
                                          ],
                                          "text": "spray 9 1",
                                          "varname": "maxmcpid-296"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-44",
                                          "maxclass": "message",
                                          "numinlets": 2,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            142.0,
                                            29.5,
                                            22.0
                                          ],
                                          "text": "$1",
                                          "varname": "maxmcpid-295"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-42",
                                          "maxclass": "newobj",
                                          "numinlets": 9,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            "list"
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            100.0,
                                            103.0,
                                            22.0
                                          ],
                                          "text": "funnel 9 1",
                                          "varname": "maxmcpid-294"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-36",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            394.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-293"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-35",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "int",
                                            "bang",
                                            "int"
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            184.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "t i b i",
                                          "varname": "maxmcpid-292"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-34",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            78.0,
                                            272.0,
                                            63.0,
                                            22.0
                                          ],
                                          "text": "zl.filter",
                                          "varname": "maxmcpid-291"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-30",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            318.0,
                                            39.0,
                                            22.0
                                          ],
                                          "text": "zl.join",
                                          "varname": "maxmcpid-290"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-29",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            78.0,
                                            234.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-289"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-14",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-288"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-16",
                                          "index": 10,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            "bang"
                                          ],
                                          "patching_rect": [
                                            423.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-287"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-17",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            99.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-286"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-18",
                                          "index": 3,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            134.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-285"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-19",
                                          "index": 4,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            169.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-284"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-20",
                                          "index": 5,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            204.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-283"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-21",
                                          "index": 6,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            239.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-282"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-22",
                                          "index": 7,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            274.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-281"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-23",
                                          "index": 8,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            309.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-280"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-24",
                                          "index": 9,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            344.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-279"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-25",
                                          "index": 2,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            86.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-278"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-26",
                                          "index": 3,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            121.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-277"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-27",
                                          "index": 4,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            156.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-276"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-28",
                                          "index": 5,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            191.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-275"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-31",
                                          "index": 6,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            226.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-274"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-32",
                                          "index": 7,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            261.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-273"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-33",
                                          "index": 8,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            296.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-272"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-37",
                                          "index": 9,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            331.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-271"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-38",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            50.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-270"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            0
                                          ],
                                          "source": [
                                            "obj-14",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-36",
                                            0
                                          ],
                                          "source": [
                                            "obj-16",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            1
                                          ],
                                          "source": [
                                            "obj-17",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            2
                                          ],
                                          "source": [
                                            "obj-18",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            3
                                          ],
                                          "source": [
                                            "obj-19",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            4
                                          ],
                                          "source": [
                                            "obj-20",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            5
                                          ],
                                          "source": [
                                            "obj-21",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            6
                                          ],
                                          "source": [
                                            "obj-22",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            7
                                          ],
                                          "source": [
                                            "obj-23",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            8
                                          ],
                                          "source": [
                                            "obj-24",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-34",
                                            0
                                          ],
                                          "source": [
                                            "obj-29",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-29",
                                            1
                                          ],
                                          "midpoints": [
                                            59.5,
                                            350.0,
                                            187.0,
                                            350.0,
                                            187.0,
                                            223.0,
                                            106.5,
                                            223.0
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-30",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-36",
                                            1
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-30",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-30",
                                            1
                                          ],
                                          "source": [
                                            "obj-34",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-29",
                                            0
                                          ],
                                          "source": [
                                            "obj-35",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-30",
                                            0
                                          ],
                                          "source": [
                                            "obj-35",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-34",
                                            1
                                          ],
                                          "source": [
                                            "obj-35",
                                            2
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-36",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-44",
                                            0
                                          ],
                                          "source": [
                                            "obj-42",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-35",
                                            0
                                          ],
                                          "source": [
                                            "obj-44",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-25",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-26",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            2
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-27",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            3
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-28",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            4
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-31",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            5
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-32",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            6
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-33",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            7
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-37",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            8
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-38",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-48",
                                            0
                                          ],
                                          "source": [
                                            "obj-47",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-46",
                                            0
                                          ],
                                          "source": [
                                            "obj-48",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-47",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-12"
                                  },
                                  "patching_rect": [
                                    783.25,
                                    219.0,
                                    113.5,
                                    22.0
                                  ],
                                  "text": "p initializer-storage",
                                  "varname": "maxmcpid-269"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-49",
                                  "index": 1,
                                  "maxclass": "outlet",
                                  "numinlets": 1,
                                  "numoutlets": 0,
                                  "patching_rect": [
                                    110.5,
                                    418.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-268"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-45",
                                  "maxclass": "newobj",
                                  "numinlets": 1,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    "bang"
                                  ],
                                  "patching_rect": [
                                    1016.0,
                                    144.0,
                                    22.0,
                                    22.0
                                  ],
                                  "text": "t b",
                                  "varname": "maxmcpid-267"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-12",
                                  "index": 2,
                                  "maxclass": "inlet",
                                  "numinlets": 0,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
                                  "patching_rect": [
                                    1016.0,
                                    21.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-266"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-7",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-265"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-264"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-263"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-262"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-261"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-260"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-259"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-258"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-257"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-14"
                                  },
                                  "patching_rect": [
                                    727.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-256"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-6",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-255"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-254"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-253"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-252"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-251"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-250"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-249"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-248"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-247"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-16"
                                  },
                                  "patching_rect": [
                                    648.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-246"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-5",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-245"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-244"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-243"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-242"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-241"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-240"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-239"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-238"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-237"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-18"
                                  },
                                  "patching_rect": [
                                    568.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-236"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-4",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-235"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-234"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-233"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-232"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-231"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-230"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-229"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-228"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-227"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-20"
                                  },
                                  "patching_rect": [
                                    489.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-226"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-3",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-225"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-224"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-223"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-222"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-221"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-220"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-219"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-218"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-217"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-22"
                                  },
                                  "patching_rect": [
                                    412.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-216"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-13",
                                  "linecount": 3,
                                  "maxclass": "comment",
                                  "numinlets": 1,
                                  "numoutlets": 0,
                                  "patching_rect": [
                                    149.0,
                                    21.0,
                                    151.0,
                                    47.0
                                  ],
                                  "text": "Threading and dicts go together like peanut butter and tomatoes",
                                  "varname": "maxmcpid-215"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-11",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-214"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-213"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-212"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-211"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-210"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-209"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-208"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-207"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-206"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-24"
                                  },
                                  "patching_rect": [
                                    335.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-205"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-10",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-204"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-203"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-202"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-201"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-200"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-199"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-198"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-197"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-196"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-26"
                                  },
                                  "patching_rect": [
                                    260.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-195"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-9",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-194"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-193"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-192"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-191"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-190"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-189"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-188"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-187"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-186"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-28"
                                  },
                                  "patching_rect": [
                                    185.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-185"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-8",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-184"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-183"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-182"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-181"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-180"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-179"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-178"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-177"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-176"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-30"
                                  },
                                  "patching_rect": [
                                    110.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-175"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-2",
                                  "index": 1,
                                  "maxclass": "inlet",
                                  "numinlets": 0,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
                                  "patching_rect": [
                                    100.0,
                                    21.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-174"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-1",
                                  "maxclass": "newobj",
                                  "numinlets": 10,
                                  "numoutlets": 10,
                                  "outlettype": [
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    ""
                                  ],
                                  "patching_rect": [
                                    110.5,
                                    144.0,
                                    490.0,
                                    22.0
                                  ],
                                  "text": "routepass restarted start stop terminated processStatus npm status manager debug_break",
                                  "varname": "maxmcpid-173"
                                }
                              }
                            ],
                            "lines": [
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-10",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-11",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-3",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    8
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    7
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    6
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    5
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    4
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    3
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    2
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    1
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    0
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-4",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-5",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-6",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-7",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-8",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-9",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-10",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-11",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-45",
                                    0
                                  ],
                                  "source": [
                                    "obj-12",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-1",
                                    0
                                  ],
                                  "source": [
                                    "obj-2",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-3",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-10",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-11",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-3",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-4",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-5",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-6",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-7",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-8",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-9",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-4",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    9
                                  ],
                                  "source": [
                                    "obj-45",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-5",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-6",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-7",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-8",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-9",
                                    0
                                  ]
                                }
                              }
                            ],
                            "originid": "pat-10"
                          },
                          "patching_rect": [
                            330.0,
                            275.0,
                            113.0,
                            22.0
                          ],
                          "text": "p retain-dictionaries",
                          "varname": "maxmcpid-172"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            584.0,
                            321.0,
                            71.0,
                            22.0
                          ],
                          "text": "r 1155-jweb",
                          "varname": "maxmcpid-171"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            302.0,
                            238.0,
                            29.5,
                            22.0
                          ],
                          "text": "t l l",
                          "varname": "maxmcpid-170"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-31",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            376.0,
                            321.0,
                            198.0,
                            22.0
                          ],
                          "text": "loadmess readfile n4m.monitor.html",
                          "varname": "maxmcpid-169"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-35",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            298.0,
                            183.0,
                            79.0,
                            22.0
                          ],
                          "text": "route running",
                          "varname": "maxmcpid-168"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-45",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            211.0,
                            60.0,
                            22.0
                          ],
                          "text": "route port",
                          "varname": "maxmcpid-167"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-36",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            189.0,
                            183.0,
                            92.0,
                            22.0
                          ],
                          "text": "route command",
                          "varname": "maxmcpid-166"
                        }
                      },
                      {
                        "box": {
                          "color": [
                            0.993703722953796,
                            0.693519413471222,
                            0.151275768876076,
                            1.0
                          ],
                          "id": "obj-37",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            115.0,
                            100.0,
                            168.0,
                            22.0
                          ],
                          "saved_object_attributes": {
                            "autostart": 0,
                            "defer": 0,
                            "node_bin_path": "",
                            "npm_bin_path": "",
                            "watch": 0
                          },
                          "text": "node.script ../max_mcp_node.js",
                          "textfile": {
                            "filename": "max_mcp_node.js",
                            "flags": 0,
                            "embed": 0,
                            "autowatch": 1
                          },
                          "varname": "maxmcpid-165"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-38",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            93.0,
                            183.0,
                            79.0,
                            22.0
                          ],
                          "text": "route request",
                          "varname": "maxmcpid-164"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-1",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            115.0,
                            40.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-163"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-2",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            243.0,
                            435.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-162"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-4",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            322.5,
                            423.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-161"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-6",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            102.0,
                            423.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-160"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-37",
                            0
                          ],
                          "source": [
                            "obj-1",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            1
                          ],
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-6",
                            0
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-8",
                            0
                          ],
                          "source": [
                            "obj-16",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-6",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-6",
                            0
                          ],
                          "source": [
                            "obj-31",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            0
                          ],
                          "source": [
                            "obj-35",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-36",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-35",
                            0
                          ],
                          "source": [
                            "obj-37",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-36",
                            0
                          ],
                          "order": 0,
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-38",
                            0
                          ],
                          "order": 1,
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-45",
                            0
                          ],
                          "order": 2,
                          "source": [
                            "obj-37",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-38",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-2",
                            0
                          ],
                          "source": [
                            "obj-45",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-6",
                            0
                          ],
                          "source": [
                            "obj-8",
                            0
                          ]
                        }
                      }
                    ],
                    "originid": "pat-8"
                  },
                  "patching_rect": [
                    755.0,
                    198.0,
                    103.0,
                    22.0
                  ],
                  "text": "p MaxMSP-Agent",
                  "varname": "maxmcpid-159"
                }
              },
              {
                "box": {
                  "color": [
                    0.988235294117647,
                    0.745098039215686,
                    0.388235294117647,
                    1.0
                  ],
                  "filename": "../max_mcp_v8_add_on.js",
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    816.0,
                    235.0,
                    155.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "parameter_enable": 0
                  },
                  "text": "v8 ../max_mcp_v8_add_on.js",
                  "textfile": {
                    "filename": "max_mcp_v8_add_on.js",
                    "flags": 0,
                    "embed": 0,
                    "autowatch": 1
                  },
                  "varname": "maxmcpid-158"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
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
                      59.0,
                      119.0,
                      1000.0,
                      780.0
                    ],
                    "gridsize": [
                      15.0,
                      15.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            400.0,
                            176.5,
                            124.0,
                            22.0
                          ],
                          "text": "s 1155-ready-for-dicts",
                          "varname": "maxmcpid-157"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-25",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "bang",
                            "bang"
                          ],
                          "patching_rect": [
                            351.0,
                            141.5,
                            62.0,
                            22.0
                          ],
                          "text": "bangbang",
                          "varname": "maxmcpid-156"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-18",
                          "linecount": 2,
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            164.0,
                            165.0,
                            134.0,
                            35.0
                          ],
                          "text": ";\rmax openfilefront $1 $2",
                          "varname": "maxmcpid-155"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-34",
                          "maxclass": "newobj",
                          "numinlets": 4,
                          "numoutlets": 4,
                          "outlettype": [
                            "",
                            "",
                            "",
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            100.0,
                            161.0,
                            22.0
                          ],
                          "text": "route reveal open onloadend",
                          "varname": "maxmcpid-154"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "linecount": 2,
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            165.0,
                            84.0,
                            35.0
                          ],
                          "text": ";\rmax reveal $1",
                          "varname": "maxmcpid-153"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-46",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            40.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-152"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-4",
                            0
                          ],
                          "source": [
                            "obj-25",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-18",
                            0
                          ],
                          "source": [
                            "obj-34",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-2",
                            0
                          ],
                          "source": [
                            "obj-34",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-25",
                            0
                          ],
                          "source": [
                            "obj-34",
                            2
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-34",
                            0
                          ],
                          "source": [
                            "obj-46",
                            0
                          ]
                        }
                      }
                    ],
                    "originid": "pat-32"
                  },
                  "patching_rect": [
                    755.0,
                    546.0,
                    46.0,
                    22.0
                  ],
                  "text": "p other",
                  "varname": "maxmcpid-151"
                }
              },
              {
                "box": {
                  "bubble": 1,
                  "bubblepoint": 0.0,
                  "bubbleside": 2,
                  "fontface": 0,
                  "id": "obj-14",
                  "linecount": 5,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    900.0,
                    28.0,
                    134.0,
                    93.0
                  ],
                  "text": "Change a port when necessary. The port number need to match the port number in the server.py file",
                  "varname": "maxmcpid-150"
                }
              },
              {
                "box": {
                  "bubble": 1,
                  "bubblepoint": 0.2,
                  "bubbleside": 2,
                  "id": "obj-13",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    761.0,
                    28.0,
                    124.0,
                    39.0
                  ],
                  "text": "Start/stop the server",
                  "varname": "maxmcpid-149"
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    797.0,
                    268.0,
                    159.0,
                    22.0
                  ],
                  "text": "print port-number @popup 1",
                  "varname": "maxmcpid-148"
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    899.0,
                    134.0,
                    59.0,
                    22.0
                  ],
                  "text": "port 5002",
                  "varname": "maxmcpid-147"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    774.0,
                    111.0,
                    65.0,
                    22.0
                  ],
                  "text": "script stop",
                  "varname": "maxmcpid-146"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    755.0,
                    78.0,
                    66.0,
                    22.0
                  ],
                  "text": "script start",
                  "varname": "maxmcpid-145"
                }
              },
              {
                "box": {
                  "color": [
                    0.905882352941176,
                    0.709803921568627,
                    0.341176470588235,
                    1.0
                  ],
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "patching_rect": [
                    886.0,
                    198.0,
                    85.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "filename": "max_mcp.js",
                    "parameter_enable": 0
                  },
                  "text": "js ../max_mcp.js",
                  "varname": "maxmcpid-144"
                }
              },
              {
                "box": {
                  "disablefind": 0,
                  "id": "obj-33",
                  "maxclass": "jweb",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    755.0,
                    304.0,
                    277.0,
                    220.0
                  ],
                  "rendermode": 0,
                  "url": "file://n4m.monitor.html",
                  "varname": "maxmcpid-143"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "midpoints": [
                    961.5,
                    260.0,
                    982.0,
                    260.0,
                    982.0,
                    185.0,
                    764.5,
                    185.0
                  ],
                  "source": [
                    "obj-3",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-47",
                    0
                  ],
                  "source": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "source": [
                    "obj-44",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-3",
                    0
                  ],
                  "midpoints": [
                    961.5,
                    226.92578125,
                    825.5,
                    226.92578125
                  ],
                  "source": [
                    "obj-7",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-8",
                    0
                  ],
                  "midpoints": [
                    928.5,
                    228.6796875,
                    981.15234375,
                    228.6796875,
                    981.15234375,
                    185.0,
                    764.5,
                    185.0
                  ],
                  "source": [
                    "obj-7",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-33",
                    0
                  ],
                  "source": [
                    "obj-8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-48",
                    0
                  ],
                  "source": [
                    "obj-8",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-7",
                    0
                  ],
                  "midpoints": [
                    848.5,
                    226.33203125,
                    875.0,
                    226.33203125,
                    875.0,
                    196.0,
                    895.5,
                    196.0
                  ],
                  "source": [
                    "obj-8",
                    2
                  ]
                }
              }
            ],
            "originid": "pat-6"
          },
          "patching_rect": [
            147.0,
            117.0,
            101.0,
            22.0
          ],
          "text": "p run-agent",
          "varname": "maxmcpid-142"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 0,
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
              0.0,
              26.0,
              1041.0,
              647.0
            ],
            "gridsize": [
              15.0,
              15.0
            ],
            "showontab": 2,
            "boxes": [
              {
                "box": {
                  "id": "obj-2",
                  "linecount": 3,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    42.0,
                    41.0,
                    372.0,
                    47.0
                  ],
                  "text": "The communication between Max and MCP is through Socket.IO. Therefore, we'll need to install a few Node for Max modules with npm. ",
                  "varname": "maxmcpid-2[1]"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
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
                      0.0,
                      0.0,
                      1000.0,
                      780.0
                    ],
                    "gridsize": [
                      15.0,
                      15.0
                    ],
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-15",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            172.0,
                            100.0,
                            122.0,
                            22.0
                          ],
                          "text": "r 1155-ready-for-dicts",
                          "varname": "maxmcpid-141"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
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
                              300.0,
                              126.0,
                              1094.0,
                              543.0
                            ],
                            "gridsize": [
                              15.0,
                              15.0
                            ],
                            "boxes": [
                              {
                                "box": {
                                  "id": "obj-39",
                                  "maxclass": "newobj",
                                  "numinlets": 10,
                                  "numoutlets": 9,
                                  "outlettype": [
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    ""
                                  ],
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
                                      84.0,
                                      129.0,
                                      833.0,
                                      824.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            428.0,
                                            37.0,
                                            22.0
                                          ],
                                          "text": "zl.rev",
                                          "varname": "maxmcpid-140"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-48",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            496.0,
                                            79.0,
                                            22.0
                                          ],
                                          "text": "append bang",
                                          "varname": "maxmcpid-139"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-47",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            465.0,
                                            47.0,
                                            22.0
                                          ],
                                          "text": "zl.iter 1",
                                          "varname": "maxmcpid-138"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-46",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 9,
                                          "outlettype": [
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            529.0,
                                            103.0,
                                            22.0
                                          ],
                                          "text": "spray 9 1",
                                          "varname": "maxmcpid-137"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-44",
                                          "maxclass": "message",
                                          "numinlets": 2,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            142.0,
                                            29.5,
                                            22.0
                                          ],
                                          "text": "$1",
                                          "varname": "maxmcpid-136"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-42",
                                          "maxclass": "newobj",
                                          "numinlets": 9,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            "list"
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            100.0,
                                            103.0,
                                            22.0
                                          ],
                                          "text": "funnel 9 1",
                                          "varname": "maxmcpid-135"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-36",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            394.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-134"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-35",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "int",
                                            "bang",
                                            "int"
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            184.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "t i b i",
                                          "varname": "maxmcpid-133"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-34",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            78.0,
                                            272.0,
                                            63.0,
                                            22.0
                                          ],
                                          "text": "zl.filter",
                                          "varname": "maxmcpid-132"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-30",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            318.0,
                                            39.0,
                                            22.0
                                          ],
                                          "text": "zl.join",
                                          "varname": "maxmcpid-131"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-29",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            78.0,
                                            234.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-130"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-14",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            50.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-129"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-16",
                                          "index": 10,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            "bang"
                                          ],
                                          "patching_rect": [
                                            423.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-128"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-17",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            99.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-127"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-18",
                                          "index": 3,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            134.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-126"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-19",
                                          "index": 4,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            169.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-125"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-20",
                                          "index": 5,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            204.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-124"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-21",
                                          "index": 6,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            239.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-123"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-22",
                                          "index": 7,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            274.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-122"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-23",
                                          "index": 8,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            309.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-121"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-24",
                                          "index": 9,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            344.0,
                                            40.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-120"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-25",
                                          "index": 2,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            86.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-119"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-26",
                                          "index": 3,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            121.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-118"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-27",
                                          "index": 4,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            156.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-117"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-28",
                                          "index": 5,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            191.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-116"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-31",
                                          "index": 6,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            226.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-115"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-32",
                                          "index": 7,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            261.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-114"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-33",
                                          "index": 8,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            296.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-113"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-37",
                                          "index": 9,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            331.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-112"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-38",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            50.0,
                                            606.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-111"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            0
                                          ],
                                          "source": [
                                            "obj-14",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-36",
                                            0
                                          ],
                                          "source": [
                                            "obj-16",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            1
                                          ],
                                          "source": [
                                            "obj-17",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            2
                                          ],
                                          "source": [
                                            "obj-18",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            3
                                          ],
                                          "source": [
                                            "obj-19",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            4
                                          ],
                                          "source": [
                                            "obj-20",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            5
                                          ],
                                          "source": [
                                            "obj-21",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            6
                                          ],
                                          "source": [
                                            "obj-22",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            7
                                          ],
                                          "source": [
                                            "obj-23",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-42",
                                            8
                                          ],
                                          "source": [
                                            "obj-24",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-34",
                                            0
                                          ],
                                          "source": [
                                            "obj-29",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-29",
                                            1
                                          ],
                                          "midpoints": [
                                            59.5,
                                            350.0,
                                            187.0,
                                            350.0,
                                            187.0,
                                            223.0,
                                            106.5,
                                            223.0
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-30",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-36",
                                            1
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-30",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-30",
                                            1
                                          ],
                                          "source": [
                                            "obj-34",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-29",
                                            0
                                          ],
                                          "source": [
                                            "obj-35",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-30",
                                            0
                                          ],
                                          "source": [
                                            "obj-35",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-34",
                                            1
                                          ],
                                          "source": [
                                            "obj-35",
                                            2
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-36",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-44",
                                            0
                                          ],
                                          "source": [
                                            "obj-42",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-35",
                                            0
                                          ],
                                          "source": [
                                            "obj-44",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-25",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-26",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            2
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-27",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            3
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-28",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            4
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-31",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            5
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-32",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            6
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-33",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            7
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-37",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            8
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-38",
                                            0
                                          ],
                                          "source": [
                                            "obj-46",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-48",
                                            0
                                          ],
                                          "source": [
                                            "obj-47",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-46",
                                            0
                                          ],
                                          "source": [
                                            "obj-48",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-47",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-40"
                                  },
                                  "patching_rect": [
                                    783.25,
                                    219.0,
                                    113.5,
                                    22.0
                                  ],
                                  "text": "p initializer-storage",
                                  "varname": "maxmcpid-110"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-49",
                                  "index": 1,
                                  "maxclass": "outlet",
                                  "numinlets": 1,
                                  "numoutlets": 0,
                                  "patching_rect": [
                                    110.5,
                                    418.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-109"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-45",
                                  "maxclass": "newobj",
                                  "numinlets": 1,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    "bang"
                                  ],
                                  "patching_rect": [
                                    1016.0,
                                    144.0,
                                    22.0,
                                    22.0
                                  ],
                                  "text": "t b",
                                  "varname": "maxmcpid-108"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-12",
                                  "index": 2,
                                  "maxclass": "inlet",
                                  "numinlets": 0,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
                                  "patching_rect": [
                                    1016.0,
                                    21.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-107"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-7",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-106"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-105"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-104"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-103"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-102"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-101"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-100"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-99"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-98"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-42"
                                  },
                                  "patching_rect": [
                                    727.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-97"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-6",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-96"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-95"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-94"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-93"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-92"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-91"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-90"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-89"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-88"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-44"
                                  },
                                  "patching_rect": [
                                    648.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-87"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-5",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-86"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-85"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-84"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-83"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-82"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-81"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-80"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-79"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-78"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-46"
                                  },
                                  "patching_rect": [
                                    568.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-77"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-4",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-76"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-75"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-74"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-73"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-72"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-71"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-70"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-69"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-68"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-48"
                                  },
                                  "patching_rect": [
                                    489.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-67"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-3",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-66"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-65"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-64"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-63"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-62"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-61"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-60"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-59"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-58"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-50"
                                  },
                                  "patching_rect": [
                                    412.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-57"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-13",
                                  "linecount": 3,
                                  "maxclass": "comment",
                                  "numinlets": 1,
                                  "numoutlets": 0,
                                  "patching_rect": [
                                    149.0,
                                    21.0,
                                    151.0,
                                    47.0
                                  ],
                                  "text": "Threading and dicts go together like peanut butter and tomatoes",
                                  "varname": "maxmcpid-56"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-11",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-55"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-54"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-53"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-52"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-51"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-50"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-49"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-48"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-47"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-52"
                                  },
                                  "patching_rect": [
                                    335.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-46"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-10",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-45"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-44"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-43"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-42"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-41"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-40"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-39"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-38"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-37"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-54"
                                  },
                                  "patching_rect": [
                                    260.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-36"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-9",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-35"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-34"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-33"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-32"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-31"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-30"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-29"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-28"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-27"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-56"
                                  },
                                  "patching_rect": [
                                    185.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-26"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-8",
                                  "maxclass": "newobj",
                                  "numinlets": 2,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
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
                                      963.0,
                                      462.0,
                                      640.0,
                                      480.0
                                    ],
                                    "gridsize": [
                                      15.0,
                                      15.0
                                    ],
                                    "boxes": [
                                      {
                                        "box": {
                                          "id": "obj-9",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            122.0,
                                            55.0,
                                            22.0
                                          ],
                                          "text": "zl.slice 1",
                                          "varname": "maxmcpid-25"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-8",
                                          "index": 1,
                                          "maxclass": "outlet",
                                          "numinlets": 1,
                                          "numoutlets": 0,
                                          "patching_rect": [
                                            243.0,
                                            335.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-24"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-2",
                                          "index": 2,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-23"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-1",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            243.0,
                                            162.0,
                                            38.0,
                                            22.0
                                          ],
                                          "text": "zl.reg",
                                          "varname": "maxmcpid-22"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-6",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 5,
                                          "outlettype": [
                                            "dictionary",
                                            "",
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            273.0,
                                            50.5,
                                            22.0
                                          ],
                                          "saved_object_attributes": {
                                            "embed": 0,
                                            "legacy": 1,
                                            "parameter_enable": 0,
                                            "parameter_mappable": 0
                                          },
                                          "text": "dict",
                                          "varname": "maxmcpid-21"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-5",
                                          "maxclass": "newobj",
                                          "numinlets": 1,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            234.0,
                                            86.0,
                                            22.0
                                          ],
                                          "text": "prepend name",
                                          "varname": "maxmcpid-20"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-4",
                                          "maxclass": "newobj",
                                          "numinlets": 2,
                                          "numoutlets": 2,
                                          "outlettype": [
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            200.0,
                                            91.0,
                                            22.0
                                          ],
                                          "text": "route dictionary",
                                          "varname": "maxmcpid-19"
                                        }
                                      },
                                      {
                                        "box": {
                                          "id": "obj-3",
                                          "maxclass": "newobj",
                                          "numinlets": 3,
                                          "numoutlets": 3,
                                          "outlettype": [
                                            "",
                                            "",
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            162.0,
                                            111.0,
                                            22.0
                                          ],
                                          "text": "route success error",
                                          "varname": "maxmcpid-18"
                                        }
                                      },
                                      {
                                        "box": {
                                          "comment": "",
                                          "id": "obj-7",
                                          "index": 1,
                                          "maxclass": "inlet",
                                          "numinlets": 0,
                                          "numoutlets": 1,
                                          "outlettype": [
                                            ""
                                          ],
                                          "patching_rect": [
                                            98.0,
                                            48.0,
                                            30.0,
                                            30.0
                                          ],
                                          "varname": "maxmcpid-17"
                                        }
                                      }
                                    ],
                                    "lines": [
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-8",
                                            0
                                          ],
                                          "source": [
                                            "obj-1",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            0
                                          ],
                                          "source": [
                                            "obj-2",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            1
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-4",
                                            0
                                          ],
                                          "source": [
                                            "obj-3",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-5",
                                            0
                                          ],
                                          "source": [
                                            "obj-4",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-6",
                                            0
                                          ],
                                          "source": [
                                            "obj-5",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-1",
                                            1
                                          ],
                                          "order": 0,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-9",
                                            0
                                          ],
                                          "order": 1,
                                          "source": [
                                            "obj-7",
                                            0
                                          ]
                                        }
                                      },
                                      {
                                        "patchline": {
                                          "destination": [
                                            "obj-3",
                                            0
                                          ],
                                          "source": [
                                            "obj-9",
                                            1
                                          ]
                                        }
                                      }
                                    ],
                                    "originid": "pat-58"
                                  },
                                  "patching_rect": [
                                    110.5,
                                    359.0,
                                    71.0,
                                    22.0
                                  ],
                                  "text": "p retain-dict",
                                  "varname": "maxmcpid-16"
                                }
                              },
                              {
                                "box": {
                                  "comment": "",
                                  "id": "obj-2",
                                  "index": 1,
                                  "maxclass": "inlet",
                                  "numinlets": 0,
                                  "numoutlets": 1,
                                  "outlettype": [
                                    ""
                                  ],
                                  "patching_rect": [
                                    100.0,
                                    21.0,
                                    30.0,
                                    30.0
                                  ],
                                  "varname": "maxmcpid-15"
                                }
                              },
                              {
                                "box": {
                                  "id": "obj-1",
                                  "maxclass": "newobj",
                                  "numinlets": 10,
                                  "numoutlets": 10,
                                  "outlettype": [
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    "",
                                    ""
                                  ],
                                  "patching_rect": [
                                    110.5,
                                    144.0,
                                    490.0,
                                    22.0
                                  ],
                                  "text": "routepass restarted start stop terminated processStatus npm status manager debug_break",
                                  "varname": "maxmcpid-14"
                                }
                              }
                            ],
                            "lines": [
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-10",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-11",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-3",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    8
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    7
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    6
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    5
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    4
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    3
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    2
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    1
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    0
                                  ],
                                  "order": 0,
                                  "source": [
                                    "obj-1",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-4",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-5",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-6",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-7",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-8",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-9",
                                    0
                                  ],
                                  "order": 1,
                                  "source": [
                                    "obj-1",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-10",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-11",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-45",
                                    0
                                  ],
                                  "source": [
                                    "obj-12",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-1",
                                    0
                                  ],
                                  "source": [
                                    "obj-2",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-3",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-10",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    2
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-11",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    3
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-3",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    4
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-4",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    5
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-5",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    6
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-6",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    7
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-7",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    8
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-8",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-9",
                                    1
                                  ],
                                  "source": [
                                    "obj-39",
                                    1
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-4",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-39",
                                    9
                                  ],
                                  "source": [
                                    "obj-45",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-5",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-6",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-7",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-8",
                                    0
                                  ]
                                }
                              },
                              {
                                "patchline": {
                                  "destination": [
                                    "obj-49",
                                    0
                                  ],
                                  "source": [
                                    "obj-9",
                                    0
                                  ]
                                }
                              }
                            ],
                            "originid": "pat-38"
                          },
                          "patching_rect": [
                            78.0,
                            137.0,
                            113.0,
                            22.0
                          ],
                          "text": "p retain-dictionaries",
                          "varname": "maxmcpid-13"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-22",
                          "maxclass": "newobj",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            332.0,
                            183.0,
                            71.0,
                            22.0
                          ],
                          "text": "r 1155-jweb",
                          "varname": "maxmcpid-12"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": [
                            "",
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            100.0,
                            29.5,
                            22.0
                          ],
                          "text": "t l l",
                          "varname": "maxmcpid-11"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-31",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            124.0,
                            183.0,
                            198.0,
                            22.0
                          ],
                          "text": "loadmess readfile n4m.monitor.html",
                          "varname": "maxmcpid-10"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-3",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [
                            ""
                          ],
                          "patching_rect": [
                            50.0,
                            40.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-9"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-5",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [
                            140.0,
                            265.0,
                            30.0,
                            30.0
                          ],
                          "varname": "maxmcpid-8"
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": [
                            "obj-2",
                            1
                          ],
                          "source": [
                            "obj-15",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-2",
                            0
                          ],
                          "source": [
                            "obj-16",
                            1
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-16",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-2",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-22",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-16",
                            0
                          ],
                          "source": [
                            "obj-3",
                            0
                          ]
                        }
                      },
                      {
                        "patchline": {
                          "destination": [
                            "obj-5",
                            0
                          ],
                          "source": [
                            "obj-31",
                            0
                          ]
                        }
                      }
                    ],
                    "originid": "pat-36"
                  },
                  "patching_rect": [
                    232.0,
                    269.0,
                    75.0,
                    22.0
                  ],
                  "text": "p debug-tool",
                  "varname": "maxmcpid-7"
                }
              },
              {
                "box": {
                  "disablefind": 0,
                  "id": "obj-33",
                  "maxclass": "jweb",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    232.0,
                    300.0,
                    400.0,
                    220.0
                  ],
                  "rendermode": 0,
                  "url": "file://n4m.monitor.html",
                  "varname": "maxmcpid-6"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    42.0,
                    163.0,
                    86.0,
                    33.0
                  ],
                  "text": "Check npm installation",
                  "varname": "maxmcpid-5"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    42.0,
                    198.0,
                    106.0,
                    22.0
                  ],
                  "text": "script npm version",
                  "varname": "maxmcpid-4"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    181.0,
                    198.0,
                    98.0,
                    22.0
                  ],
                  "text": "script npm install",
                  "varname": "maxmcpid-3"
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "linecount": 2,
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    184.0,
                    163.0,
                    222.0,
                    33.0
                  ],
                  "text": "Install all dependencies declared in the package.json file",
                  "varname": "maxmcpid-2"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    42.0,
                    244.0,
                    168.0,
                    22.0
                  ],
                  "saved_object_attributes": {
                    "autostart": 0,
                    "defer": 0,
                    "node_bin_path": "",
                    "npm_bin_path": "",
                    "watch": 0
                  },
                  "text": "node.script ../max_mcp_node.js",
                  "textfile": {
                    "filename": "max_mcp_node.js",
                    "flags": 0,
                    "embed": 0,
                    "autowatch": 1
                  },
                  "varname": "maxmcpid-1"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "obj-6",
                    0
                  ],
                  "source": [
                    "obj-1",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-33",
                    0
                  ],
                  "source": [
                    "obj-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "source": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "obj-1",
                    0
                  ],
                  "source": [
                    "obj-8",
                    0
                  ]
                }
              }
            ],
            "originid": "pat-34"
          },
          "patching_rect": [
            62.0,
            104.0,
            49.0,
            22.0
          ],
          "text": "p install",
          "varname": "maxmcpid-0"
        }
      }
    ],
    "lines": [],
    "originid": "pat-4",
    "dependency_cache": [
      {
        "name": "max_mcp.js",
        "patcherrelativepath": "..",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "max_mcp_node.js",
        "patcherrelativepath": "..",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "max_mcp_v8_add_on.js",
        "patcherrelativepath": "..",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
