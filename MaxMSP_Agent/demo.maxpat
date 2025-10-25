{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 93.0, 1009.0, 773.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.0, 162.0, 102.0, 22.0 ],
					"text" : "remove_varname",
					"varname" : "maxmcpid-303"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 603.0, 200.0, 205.0, 22.0 ],
					"text" : "assign_mcp_identifier_to_all_objects",
					"varname" : "maxmcpid-302"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.865085244178772, 0.586760640144348, 0.054060600697994, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 568.0, 256.0, 85.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "max_mcp.js",
						"parameter_enable" : 0
					}
,
					"text" : "js max_mcp.js",
					"varname" : "maxmcpid-301"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 119.0, 1009.0, 747.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 2,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"patching_rect" : [ 1172.0, 600.0, 193.0, 35.0 ],
									"text" : "console @patcherfilter thispatcher @showonlyerrors 0",
									"varname" : "maxmcpid-777"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "MaxMSP-Agent.maxpat",
									"numinlets" : 1,
									"numoutlets" : 3,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 691.749986886978149, 204.166658878326416, 445.0, 452.0 ],
									"varname" : "maxmcpid-888",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.988235294117647, 0.745098039215686, 0.388235294117647, 1.0 ],
									"filename" : "max_mcp_v8_add_on.js",
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 825.0, 694.0, 503.0, 49.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "v8 /Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent/max_mcp_v8_add_on.js",
									"textfile" : 									{
										"filename" : "max_mcp_v8_add_on.js",
										"flags" : 0,
										"embed" : 0,
										"autowatch" : 1
									}
,
									"varname" : "maxmcpid-158"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 9,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 119.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 400.0, 176.5, 124.0, 22.0 ],
													"text" : "s 1155-ready-for-dicts",
													"varname" : "maxmcpid-157"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 351.0, 141.5, 62.0, 22.0 ],
													"text" : "bangbang",
													"varname" : "maxmcpid-156"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 164.0, 165.0, 134.0, 35.0 ],
													"text" : ";\rmax openfilefront $1 $2",
													"varname" : "maxmcpid-155"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 50.0, 100.0, 161.0, 22.0 ],
													"text" : "route reveal open onloadend",
													"varname" : "maxmcpid-154"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 165.0, 84.0, 35.0 ],
													"text" : ";\rmax reveal $1",
													"varname" : "maxmcpid-153"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-46",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"varname" : "maxmcpid-152"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-34", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 762.5, 1126.5625, 46.0, 22.0 ],
									"text" : "p other",
									"varname" : "maxmcpid-151"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.0,
									"bubbleside" : 2,
									"fontface" : 0,
									"id" : "obj-14",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 900.0, 28.0, 134.0, 93.0 ],
									"text" : "Change a port when necessary. The port number need to match the port number in the server.py file",
									"varname" : "maxmcpid-150"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.2,
									"bubbleside" : 2,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 761.0, 28.0, 124.0, 39.0 ],
									"text" : "Start/stop the server",
									"varname" : "maxmcpid-149"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.8125, 771.875, 159.0, 22.0 ],
									"text" : "print port-number @popup 1",
									"varname" : "maxmcpid-148"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 899.0, 134.0, 59.0, 22.0 ],
									"text" : "port 5002",
									"varname" : "maxmcpid-147"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 774.0, 111.0, 65.0, 22.0 ],
									"text" : "script stop",
									"varname" : "maxmcpid-146"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 755.0, 78.0, 66.0, 22.0 ],
									"text" : "script start",
									"varname" : "maxmcpid-145"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.905882352941176, 0.709803921568627, 0.341176470588235, 1.0 ],
									"filename" : "max_mcp.js",
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1078.0, 771.875, 301.0, 49.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "v8 /Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent/max_mcp.js",
									"textfile" : 									{
										"filename" : "max_mcp.js",
										"flags" : 0,
										"embed" : 0,
										"autowatch" : 1
									}
,
									"varname" : "maxmcpid-144"
								}

							}
, 							{
								"box" : 								{
									"disablefind" : 0,
									"id" : "obj-33",
									"maxclass" : "jweb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.8125, 864.0625, 277.0, 220.0 ],
									"rendermode" : 0,
									"url" : "file://n4m.monitor.html",
									"varname" : "maxmcpid-143"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1318.5, 753.0, 678.0, 753.0, 678.0, 201.0, 701.249986886978149, 201.0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1181.5, 828.0, 678.0, 828.0, 678.0, 201.0, 701.249986886978149, 201.0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 1275.5, 851.2734375, 810.0, 851.2734375, 810.0, 690.0, 834.5, 690.0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 147.0, 117.0, 101.0, 22.0 ],
					"text" : "p run-agent",
					"varname" : "maxmcpid-142"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1009.0, 747.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 2,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 41.0, 372.0, 47.0 ],
									"text" : "The communication between Max and MCP is through Socket.IO. Therefore, we'll need to install a few Node for Max modules with npm. ",
									"varname" : "maxmcpid-2[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 9,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 172.0, 100.0, 122.0, 22.0 ],
													"text" : "r 1155-ready-for-dicts",
													"varname" : "maxmcpid-141"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 9,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 300.0, 126.0, 1094.0, 543.0 ],
														"gridsize" : [ 15.0, 15.0 ],
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-39",
																	"maxclass" : "newobj",
																	"numinlets" : 10,
																	"numoutlets" : 9,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 84.0, 129.0, 833.0, 824.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 428.0, 37.0, 22.0 ],
																					"text" : "zl.rev",
																					"varname" : "maxmcpid-140"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-48",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 496.0, 79.0, 22.0 ],
																					"text" : "append bang",
																					"varname" : "maxmcpid-139"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-47",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 465.0, 47.0, 22.0 ],
																					"text" : "zl.iter 1",
																					"varname" : "maxmcpid-138"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-46",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 9,
																					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
																					"patching_rect" : [ 50.0, 529.0, 103.0, 22.0 ],
																					"text" : "spray 9 1",
																					"varname" : "maxmcpid-137"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-44",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 142.0, 29.5, 22.0 ],
																					"text" : "$1",
																					"varname" : "maxmcpid-136"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-42",
																					"maxclass" : "newobj",
																					"numinlets" : 9,
																					"numoutlets" : 1,
																					"outlettype" : [ "list" ],
																					"patching_rect" : [ 50.0, 100.0, 103.0, 22.0 ],
																					"text" : "funnel 9 1",
																					"varname" : "maxmcpid-135"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-36",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 394.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-134"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-35",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"outlettype" : [ "int", "bang", "int" ],
																					"patching_rect" : [ 50.0, 184.0, 91.0, 22.0 ],
																					"text" : "t i b i",
																					"varname" : "maxmcpid-133"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-34",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 78.0, 272.0, 63.0, 22.0 ],
																					"text" : "zl.filter",
																					"varname" : "maxmcpid-132"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-30",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 50.0, 318.0, 39.0, 22.0 ],
																					"text" : "zl.join",
																					"varname" : "maxmcpid-131"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-29",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 78.0, 234.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-130"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-14",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-129"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-16",
																					"index" : 10,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"patching_rect" : [ 423.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-128"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-17",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 99.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-127"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-18",
																					"index" : 3,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 134.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-126"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-19",
																					"index" : 4,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 169.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-125"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-20",
																					"index" : 5,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 204.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-124"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-21",
																					"index" : 6,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 239.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-123"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-22",
																					"index" : 7,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 274.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-122"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-23",
																					"index" : 8,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 309.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-121"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-24",
																					"index" : 9,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 344.0, 40.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-120"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-25",
																					"index" : 2,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 86.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-119"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-26",
																					"index" : 3,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 121.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-118"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-27",
																					"index" : 4,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 156.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-117"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-28",
																					"index" : 5,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 191.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-116"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-31",
																					"index" : 6,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 226.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-115"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-32",
																					"index" : 7,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 261.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-114"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-33",
																					"index" : 8,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 296.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-113"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-37",
																					"index" : 9,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 331.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-112"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-38",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 606.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-111"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 0 ],
																					"source" : [ "obj-14", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-36", 0 ],
																					"source" : [ "obj-16", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 1 ],
																					"source" : [ "obj-17", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 2 ],
																					"source" : [ "obj-18", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 3 ],
																					"source" : [ "obj-19", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 4 ],
																					"source" : [ "obj-20", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 5 ],
																					"source" : [ "obj-21", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 6 ],
																					"source" : [ "obj-22", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 7 ],
																					"source" : [ "obj-23", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-42", 8 ],
																					"source" : [ "obj-24", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-34", 0 ],
																					"source" : [ "obj-29", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-29", 1 ],
																					"midpoints" : [ 59.5, 350.0, 187.0, 350.0, 187.0, 223.0, 106.5, 223.0 ],
																					"order" : 0,
																					"source" : [ "obj-30", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-36", 1 ],
																					"order" : 1,
																					"source" : [ "obj-30", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-30", 1 ],
																					"source" : [ "obj-34", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-29", 0 ],
																					"source" : [ "obj-35", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-30", 0 ],
																					"source" : [ "obj-35", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-34", 1 ],
																					"source" : [ "obj-35", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-36", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-44", 0 ],
																					"source" : [ "obj-42", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-35", 0 ],
																					"source" : [ "obj-44", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-25", 0 ],
																					"source" : [ "obj-46", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-26", 0 ],
																					"source" : [ "obj-46", 2 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-27", 0 ],
																					"source" : [ "obj-46", 3 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-28", 0 ],
																					"source" : [ "obj-46", 4 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-31", 0 ],
																					"source" : [ "obj-46", 5 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-32", 0 ],
																					"source" : [ "obj-46", 6 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-33", 0 ],
																					"source" : [ "obj-46", 7 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-37", 0 ],
																					"source" : [ "obj-46", 8 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-38", 0 ],
																					"source" : [ "obj-46", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-48", 0 ],
																					"source" : [ "obj-47", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-46", 0 ],
																					"source" : [ "obj-48", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-47", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 783.25, 219.0, 113.5, 22.0 ],
																	"text" : "p initializer-storage",
																	"varname" : "maxmcpid-110"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-49",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 110.5, 418.0, 30.0, 30.0 ],
																	"varname" : "maxmcpid-109"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-45",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 1016.0, 144.0, 22.0, 22.0 ],
																	"text" : "t b",
																	"varname" : "maxmcpid-108"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-12",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 1016.0, 21.0, 30.0, 30.0 ],
																	"varname" : "maxmcpid-107"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-106"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-105"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-104"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-103"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-102"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-101"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-100"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-99"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-98"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 727.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-97"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-96"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-95"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-94"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-93"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-92"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-91"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-90"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-89"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-88"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 648.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-87"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-86"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-85"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-84"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-83"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-82"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-81"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-80"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-79"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-78"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 568.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-77"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-76"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-75"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-74"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-73"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-72"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-71"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-70"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-69"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-68"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 489.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-67"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-66"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-65"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-64"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-63"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-62"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-61"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-60"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-59"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-58"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 412.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-57"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"linecount" : 3,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 149.0, 21.0, 151.0, 47.0 ],
																	"text" : "Threading and dicts go together like peanut butter and tomatoes",
																	"varname" : "maxmcpid-56"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-55"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-54"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-53"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-52"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-51"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-50"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-49"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-48"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-47"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 335.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-46"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-45"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-44"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-43"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-42"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-41"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-40"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-39"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-38"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-37"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 260.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-36"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-35"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-34"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-33"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-32"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-31"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-30"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-29"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-28"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-27"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 185.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-26"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-8",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 9,
																			"minor" : 0,
																			"revision" : 9,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 963.0, 462.0, 640.0, 480.0 ],
																		"gridsize" : [ 15.0, 15.0 ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 122.0, 55.0, 22.0 ],
																					"text" : "zl.slice 1",
																					"varname" : "maxmcpid-25"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-8",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 243.0, 335.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-24"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-2",
																					"index" : 2,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 243.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-23"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-1",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 243.0, 162.0, 38.0, 22.0 ],
																					"text" : "zl.reg",
																					"varname" : "maxmcpid-22"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-6",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 5,
																					"outlettype" : [ "dictionary", "", "", "", "" ],
																					"patching_rect" : [ 98.0, 273.0, 50.5, 22.0 ],
																					"saved_object_attributes" : 																					{
																						"embed" : 0,
																						"legacy" : 1,
																						"parameter_enable" : 0,
																						"parameter_mappable" : 0
																					}
,
																					"text" : "dict",
																					"varname" : "maxmcpid-21"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 234.0, 86.0, 22.0 ],
																					"text" : "prepend name",
																					"varname" : "maxmcpid-20"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-4",
																					"maxclass" : "newobj",
																					"numinlets" : 2,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "" ],
																					"patching_rect" : [ 98.0, 200.0, 91.0, 22.0 ],
																					"text" : "route dictionary",
																					"varname" : "maxmcpid-19"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-3",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ],
																					"patching_rect" : [ 98.0, 162.0, 111.0, 22.0 ],
																					"text" : "route success error",
																					"varname" : "maxmcpid-18"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-7",
																					"index" : 1,
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 98.0, 48.0, 30.0, 30.0 ],
																					"varname" : "maxmcpid-17"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-4", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-5", 0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-1", 1 ],
																					"order" : 0,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"order" : 1,
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-9", 1 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 110.5, 359.0, 71.0, 22.0 ],
																	"text" : "p retain-dict",
																	"varname" : "maxmcpid-16"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 100.0, 21.0, 30.0, 30.0 ],
																	"varname" : "maxmcpid-15"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 10,
																	"numoutlets" : 10,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
																	"patching_rect" : [ 110.5, 144.0, 490.0, 22.0 ],
																	"text" : "routepass restarted start stop terminated processStatus npm status manager debug_break",
																	"varname" : "maxmcpid-14"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 8 ],
																	"order" : 0,
																	"source" : [ "obj-1", 8 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 7 ],
																	"order" : 0,
																	"source" : [ "obj-1", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 6 ],
																	"order" : 0,
																	"source" : [ "obj-1", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 5 ],
																	"order" : 0,
																	"source" : [ "obj-1", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 4 ],
																	"order" : 0,
																	"source" : [ "obj-1", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 3 ],
																	"order" : 0,
																	"source" : [ "obj-1", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 2 ],
																	"order" : 0,
																	"source" : [ "obj-1", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 1 ],
																	"order" : 0,
																	"source" : [ "obj-1", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 0 ],
																	"order" : 0,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 8 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-45", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 1 ],
																	"source" : [ "obj-39", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 1 ],
																	"source" : [ "obj-39", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 1 ],
																	"source" : [ "obj-39", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 1 ],
																	"source" : [ "obj-39", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 1 ],
																	"source" : [ "obj-39", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"source" : [ "obj-39", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 1 ],
																	"source" : [ "obj-39", 8 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-39", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 1 ],
																	"source" : [ "obj-39", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 9 ],
																	"source" : [ "obj-45", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 78.0, 137.0, 113.0, 22.0 ],
													"text" : "p retain-dictionaries",
													"varname" : "maxmcpid-13"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.0, 183.0, 71.0, 22.0 ],
													"text" : "r 1155-jweb",
													"varname" : "maxmcpid-12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 100.0, 29.5, 22.0 ],
													"text" : "t l l",
													"varname" : "maxmcpid-11"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 124.0, 183.0, 198.0, 22.0 ],
													"text" : "loadmess readfile n4m.monitor.html",
													"varname" : "maxmcpid-10"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"varname" : "maxmcpid-9"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 140.0, 265.0, 30.0, 30.0 ],
													"varname" : "maxmcpid-8"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 232.0, 269.0, 75.0, 22.0 ],
									"text" : "p debug-tool",
									"varname" : "maxmcpid-7"
								}

							}
, 							{
								"box" : 								{
									"disablefind" : 0,
									"id" : "obj-33",
									"maxclass" : "jweb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 232.0, 300.0, 400.0, 220.0 ],
									"rendermode" : 0,
									"url" : "file://n4m.monitor.html",
									"varname" : "maxmcpid-6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 163.0, 86.0, 33.0 ],
									"text" : "Check npm installation",
									"varname" : "maxmcpid-5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 198.0, 106.0, 22.0 ],
									"text" : "script npm version",
									"varname" : "maxmcpid-4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.0, 198.0, 98.0, 22.0 ],
									"text" : "script npm install",
									"varname" : "maxmcpid-3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 163.0, 222.0, 33.0 ],
									"text" : "Install all dependencies declared in the package.json file",
									"varname" : "maxmcpid-2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 42.0, 244.0, 168.0, 22.0 ],
									"saved_object_attributes" : 									{
										"autostart" : 0,
										"defer" : 0,
										"node_bin_path" : "",
										"npm_bin_path" : "",
										"watch" : 0
									}
,
									"text" : "node.script max_mcp_node.js",
									"textfile" : 									{
										"filename" : "max_mcp_node.js",
										"flags" : 0,
										"embed" : 0,
										"autowatch" : 1
									}
,
									"varname" : "maxmcpid-1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 62.0, 104.0, 49.0, 22.0 ],
					"text" : "p install",
					"varname" : "maxmcpid-0"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "MaxMSP-Agent.maxpat",
				"bootpath" : "/Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "max_mcp.js",
				"bootpath" : "/Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "max_mcp_node.js",
				"bootpath" : "/Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "max_mcp_v8_add_on.js",
				"bootpath" : "/Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "retain-dictionaries.maxpat",
				"bootpath" : "/Volumes/RecordBoxNVMe/ReturnToTheSource/MaxMSP-MCP-Server/MaxMSP_Agent",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
