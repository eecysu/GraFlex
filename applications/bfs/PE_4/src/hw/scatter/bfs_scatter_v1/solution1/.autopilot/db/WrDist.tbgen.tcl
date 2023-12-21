set moduleName WrDist
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {WrDist}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp_dist_0 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_1 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_2 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_3 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_4 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_5 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_6 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_7 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_8 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_9 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_10 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_11 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_12 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_13 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_14 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_15 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_16 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_17 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_18 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_19 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_20 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_21 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_22 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_23 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_24 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_25 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_26 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_27 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_28 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_29 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_30 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ tmp_dist_31 int 64 regular {array 4096 { 1 } 1 1 }  }
	{ wr_port_V_data_V int 128 regular {axi_s 1 volatile  { wr_port Data } }  }
	{ wr_port_V_keep_V int 16 regular {axi_s 1 volatile  { wr_port Keep } }  }
	{ wr_port_V_strb_V int 16 regular {axi_s 1 volatile  { wr_port Strb } }  }
	{ wr_port_V_last_V int 1 regular {axi_s 1 volatile  { wr_port Last } }  }
	{ idx uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp_dist_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_9", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_11", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_12", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_13", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_14", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_15", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_16", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_17", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_18", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_19", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_20", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_21", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_22", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_23", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_24", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_25", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_26", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_27", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_28", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_29", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_30", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_dist_31", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wr_port_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_dist_0_address0 sc_out sc_lv 12 signal 0 } 
	{ tmp_dist_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ tmp_dist_0_q0 sc_in sc_lv 64 signal 0 } 
	{ tmp_dist_1_address0 sc_out sc_lv 12 signal 1 } 
	{ tmp_dist_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ tmp_dist_1_q0 sc_in sc_lv 64 signal 1 } 
	{ tmp_dist_2_address0 sc_out sc_lv 12 signal 2 } 
	{ tmp_dist_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp_dist_2_q0 sc_in sc_lv 64 signal 2 } 
	{ tmp_dist_3_address0 sc_out sc_lv 12 signal 3 } 
	{ tmp_dist_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmp_dist_3_q0 sc_in sc_lv 64 signal 3 } 
	{ tmp_dist_4_address0 sc_out sc_lv 12 signal 4 } 
	{ tmp_dist_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ tmp_dist_4_q0 sc_in sc_lv 64 signal 4 } 
	{ tmp_dist_5_address0 sc_out sc_lv 12 signal 5 } 
	{ tmp_dist_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ tmp_dist_5_q0 sc_in sc_lv 64 signal 5 } 
	{ tmp_dist_6_address0 sc_out sc_lv 12 signal 6 } 
	{ tmp_dist_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ tmp_dist_6_q0 sc_in sc_lv 64 signal 6 } 
	{ tmp_dist_7_address0 sc_out sc_lv 12 signal 7 } 
	{ tmp_dist_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ tmp_dist_7_q0 sc_in sc_lv 64 signal 7 } 
	{ tmp_dist_8_address0 sc_out sc_lv 12 signal 8 } 
	{ tmp_dist_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ tmp_dist_8_q0 sc_in sc_lv 64 signal 8 } 
	{ tmp_dist_9_address0 sc_out sc_lv 12 signal 9 } 
	{ tmp_dist_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ tmp_dist_9_q0 sc_in sc_lv 64 signal 9 } 
	{ tmp_dist_10_address0 sc_out sc_lv 12 signal 10 } 
	{ tmp_dist_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ tmp_dist_10_q0 sc_in sc_lv 64 signal 10 } 
	{ tmp_dist_11_address0 sc_out sc_lv 12 signal 11 } 
	{ tmp_dist_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ tmp_dist_11_q0 sc_in sc_lv 64 signal 11 } 
	{ tmp_dist_12_address0 sc_out sc_lv 12 signal 12 } 
	{ tmp_dist_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ tmp_dist_12_q0 sc_in sc_lv 64 signal 12 } 
	{ tmp_dist_13_address0 sc_out sc_lv 12 signal 13 } 
	{ tmp_dist_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ tmp_dist_13_q0 sc_in sc_lv 64 signal 13 } 
	{ tmp_dist_14_address0 sc_out sc_lv 12 signal 14 } 
	{ tmp_dist_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ tmp_dist_14_q0 sc_in sc_lv 64 signal 14 } 
	{ tmp_dist_15_address0 sc_out sc_lv 12 signal 15 } 
	{ tmp_dist_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ tmp_dist_15_q0 sc_in sc_lv 64 signal 15 } 
	{ tmp_dist_16_address0 sc_out sc_lv 12 signal 16 } 
	{ tmp_dist_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ tmp_dist_16_q0 sc_in sc_lv 64 signal 16 } 
	{ tmp_dist_17_address0 sc_out sc_lv 12 signal 17 } 
	{ tmp_dist_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ tmp_dist_17_q0 sc_in sc_lv 64 signal 17 } 
	{ tmp_dist_18_address0 sc_out sc_lv 12 signal 18 } 
	{ tmp_dist_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ tmp_dist_18_q0 sc_in sc_lv 64 signal 18 } 
	{ tmp_dist_19_address0 sc_out sc_lv 12 signal 19 } 
	{ tmp_dist_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ tmp_dist_19_q0 sc_in sc_lv 64 signal 19 } 
	{ tmp_dist_20_address0 sc_out sc_lv 12 signal 20 } 
	{ tmp_dist_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ tmp_dist_20_q0 sc_in sc_lv 64 signal 20 } 
	{ tmp_dist_21_address0 sc_out sc_lv 12 signal 21 } 
	{ tmp_dist_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ tmp_dist_21_q0 sc_in sc_lv 64 signal 21 } 
	{ tmp_dist_22_address0 sc_out sc_lv 12 signal 22 } 
	{ tmp_dist_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ tmp_dist_22_q0 sc_in sc_lv 64 signal 22 } 
	{ tmp_dist_23_address0 sc_out sc_lv 12 signal 23 } 
	{ tmp_dist_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ tmp_dist_23_q0 sc_in sc_lv 64 signal 23 } 
	{ tmp_dist_24_address0 sc_out sc_lv 12 signal 24 } 
	{ tmp_dist_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ tmp_dist_24_q0 sc_in sc_lv 64 signal 24 } 
	{ tmp_dist_25_address0 sc_out sc_lv 12 signal 25 } 
	{ tmp_dist_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ tmp_dist_25_q0 sc_in sc_lv 64 signal 25 } 
	{ tmp_dist_26_address0 sc_out sc_lv 12 signal 26 } 
	{ tmp_dist_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ tmp_dist_26_q0 sc_in sc_lv 64 signal 26 } 
	{ tmp_dist_27_address0 sc_out sc_lv 12 signal 27 } 
	{ tmp_dist_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ tmp_dist_27_q0 sc_in sc_lv 64 signal 27 } 
	{ tmp_dist_28_address0 sc_out sc_lv 12 signal 28 } 
	{ tmp_dist_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ tmp_dist_28_q0 sc_in sc_lv 64 signal 28 } 
	{ tmp_dist_29_address0 sc_out sc_lv 12 signal 29 } 
	{ tmp_dist_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ tmp_dist_29_q0 sc_in sc_lv 64 signal 29 } 
	{ tmp_dist_30_address0 sc_out sc_lv 12 signal 30 } 
	{ tmp_dist_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ tmp_dist_30_q0 sc_in sc_lv 64 signal 30 } 
	{ tmp_dist_31_address0 sc_out sc_lv 12 signal 31 } 
	{ tmp_dist_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ tmp_dist_31_q0 sc_in sc_lv 64 signal 31 } 
	{ wr_port_TDATA sc_out sc_lv 128 signal 32 } 
	{ wr_port_TVALID sc_out sc_logic 1 outvld 35 } 
	{ wr_port_TREADY sc_in sc_logic 1 outacc 32 } 
	{ wr_port_TKEEP sc_out sc_lv 16 signal 33 } 
	{ wr_port_TSTRB sc_out sc_lv 16 signal 34 } 
	{ wr_port_TLAST sc_out sc_lv 1 signal 35 } 
	{ idx sc_in sc_lv 8 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp_dist_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "address0" }} , 
 	{ "name": "tmp_dist_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "ce0" }} , 
 	{ "name": "tmp_dist_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "q0" }} , 
 	{ "name": "tmp_dist_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "address0" }} , 
 	{ "name": "tmp_dist_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "ce0" }} , 
 	{ "name": "tmp_dist_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "q0" }} , 
 	{ "name": "tmp_dist_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "address0" }} , 
 	{ "name": "tmp_dist_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "ce0" }} , 
 	{ "name": "tmp_dist_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "q0" }} , 
 	{ "name": "tmp_dist_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "address0" }} , 
 	{ "name": "tmp_dist_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "ce0" }} , 
 	{ "name": "tmp_dist_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "q0" }} , 
 	{ "name": "tmp_dist_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "address0" }} , 
 	{ "name": "tmp_dist_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "ce0" }} , 
 	{ "name": "tmp_dist_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "q0" }} , 
 	{ "name": "tmp_dist_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "address0" }} , 
 	{ "name": "tmp_dist_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "ce0" }} , 
 	{ "name": "tmp_dist_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "q0" }} , 
 	{ "name": "tmp_dist_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "address0" }} , 
 	{ "name": "tmp_dist_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "ce0" }} , 
 	{ "name": "tmp_dist_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "q0" }} , 
 	{ "name": "tmp_dist_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "address0" }} , 
 	{ "name": "tmp_dist_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "ce0" }} , 
 	{ "name": "tmp_dist_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "q0" }} , 
 	{ "name": "tmp_dist_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "address0" }} , 
 	{ "name": "tmp_dist_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "ce0" }} , 
 	{ "name": "tmp_dist_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "q0" }} , 
 	{ "name": "tmp_dist_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "address0" }} , 
 	{ "name": "tmp_dist_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "ce0" }} , 
 	{ "name": "tmp_dist_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "q0" }} , 
 	{ "name": "tmp_dist_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "address0" }} , 
 	{ "name": "tmp_dist_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "ce0" }} , 
 	{ "name": "tmp_dist_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "q0" }} , 
 	{ "name": "tmp_dist_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "address0" }} , 
 	{ "name": "tmp_dist_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "ce0" }} , 
 	{ "name": "tmp_dist_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "q0" }} , 
 	{ "name": "tmp_dist_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "address0" }} , 
 	{ "name": "tmp_dist_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "ce0" }} , 
 	{ "name": "tmp_dist_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "q0" }} , 
 	{ "name": "tmp_dist_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "address0" }} , 
 	{ "name": "tmp_dist_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "ce0" }} , 
 	{ "name": "tmp_dist_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "q0" }} , 
 	{ "name": "tmp_dist_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "address0" }} , 
 	{ "name": "tmp_dist_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "ce0" }} , 
 	{ "name": "tmp_dist_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "q0" }} , 
 	{ "name": "tmp_dist_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "address0" }} , 
 	{ "name": "tmp_dist_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "ce0" }} , 
 	{ "name": "tmp_dist_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "q0" }} , 
 	{ "name": "tmp_dist_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "address0" }} , 
 	{ "name": "tmp_dist_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "ce0" }} , 
 	{ "name": "tmp_dist_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "q0" }} , 
 	{ "name": "tmp_dist_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "address0" }} , 
 	{ "name": "tmp_dist_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "ce0" }} , 
 	{ "name": "tmp_dist_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "q0" }} , 
 	{ "name": "tmp_dist_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "address0" }} , 
 	{ "name": "tmp_dist_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "ce0" }} , 
 	{ "name": "tmp_dist_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "q0" }} , 
 	{ "name": "tmp_dist_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "address0" }} , 
 	{ "name": "tmp_dist_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "ce0" }} , 
 	{ "name": "tmp_dist_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "q0" }} , 
 	{ "name": "tmp_dist_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "address0" }} , 
 	{ "name": "tmp_dist_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "ce0" }} , 
 	{ "name": "tmp_dist_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "q0" }} , 
 	{ "name": "tmp_dist_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "address0" }} , 
 	{ "name": "tmp_dist_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "ce0" }} , 
 	{ "name": "tmp_dist_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "q0" }} , 
 	{ "name": "tmp_dist_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "address0" }} , 
 	{ "name": "tmp_dist_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "ce0" }} , 
 	{ "name": "tmp_dist_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "q0" }} , 
 	{ "name": "tmp_dist_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "address0" }} , 
 	{ "name": "tmp_dist_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "ce0" }} , 
 	{ "name": "tmp_dist_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "q0" }} , 
 	{ "name": "tmp_dist_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "address0" }} , 
 	{ "name": "tmp_dist_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "ce0" }} , 
 	{ "name": "tmp_dist_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "q0" }} , 
 	{ "name": "tmp_dist_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "address0" }} , 
 	{ "name": "tmp_dist_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "ce0" }} , 
 	{ "name": "tmp_dist_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "q0" }} , 
 	{ "name": "tmp_dist_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "address0" }} , 
 	{ "name": "tmp_dist_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "ce0" }} , 
 	{ "name": "tmp_dist_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "q0" }} , 
 	{ "name": "tmp_dist_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "address0" }} , 
 	{ "name": "tmp_dist_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "ce0" }} , 
 	{ "name": "tmp_dist_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "q0" }} , 
 	{ "name": "tmp_dist_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "address0" }} , 
 	{ "name": "tmp_dist_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "ce0" }} , 
 	{ "name": "tmp_dist_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "q0" }} , 
 	{ "name": "tmp_dist_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "address0" }} , 
 	{ "name": "tmp_dist_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "ce0" }} , 
 	{ "name": "tmp_dist_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "q0" }} , 
 	{ "name": "tmp_dist_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "address0" }} , 
 	{ "name": "tmp_dist_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "ce0" }} , 
 	{ "name": "tmp_dist_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "q0" }} , 
 	{ "name": "tmp_dist_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "address0" }} , 
 	{ "name": "tmp_dist_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "ce0" }} , 
 	{ "name": "tmp_dist_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "q0" }} , 
 	{ "name": "wr_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "wr_port_V_data_V", "role": "default" }} , 
 	{ "name": "wr_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_port_V_last_V", "role": "default" }} , 
 	{ "name": "wr_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_port_V_data_V", "role": "default" }} , 
 	{ "name": "wr_port_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wr_port_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_port_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wr_port_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_port_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_port_V_last_V", "role": "default" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "WrDist",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_dist_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_dist_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wr_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wr_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wr_port_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "wr_port_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "wr_port_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	WrDist {
		tmp_dist_0 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_1 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_2 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_3 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_4 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_5 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_6 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_7 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_8 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_9 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_10 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_11 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_12 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_13 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_14 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_15 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_16 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_17 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_18 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_19 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_20 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_21 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_22 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_23 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_24 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_25 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_26 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_27 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_28 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_29 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_30 {Type I LastRead 1 FirstWrite -1}
		tmp_dist_31 {Type I LastRead 1 FirstWrite -1}
		wr_port_V_data_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_keep_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_strb_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_last_V {Type O LastRead -1 FirstWrite 2}
		idx {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_dist_0 { ap_memory {  { tmp_dist_0_address0 mem_address 1 12 }  { tmp_dist_0_ce0 mem_ce 1 1 }  { tmp_dist_0_q0 mem_dout 0 64 } } }
	tmp_dist_1 { ap_memory {  { tmp_dist_1_address0 mem_address 1 12 }  { tmp_dist_1_ce0 mem_ce 1 1 }  { tmp_dist_1_q0 mem_dout 0 64 } } }
	tmp_dist_2 { ap_memory {  { tmp_dist_2_address0 mem_address 1 12 }  { tmp_dist_2_ce0 mem_ce 1 1 }  { tmp_dist_2_q0 mem_dout 0 64 } } }
	tmp_dist_3 { ap_memory {  { tmp_dist_3_address0 mem_address 1 12 }  { tmp_dist_3_ce0 mem_ce 1 1 }  { tmp_dist_3_q0 mem_dout 0 64 } } }
	tmp_dist_4 { ap_memory {  { tmp_dist_4_address0 mem_address 1 12 }  { tmp_dist_4_ce0 mem_ce 1 1 }  { tmp_dist_4_q0 mem_dout 0 64 } } }
	tmp_dist_5 { ap_memory {  { tmp_dist_5_address0 mem_address 1 12 }  { tmp_dist_5_ce0 mem_ce 1 1 }  { tmp_dist_5_q0 mem_dout 0 64 } } }
	tmp_dist_6 { ap_memory {  { tmp_dist_6_address0 mem_address 1 12 }  { tmp_dist_6_ce0 mem_ce 1 1 }  { tmp_dist_6_q0 mem_dout 0 64 } } }
	tmp_dist_7 { ap_memory {  { tmp_dist_7_address0 mem_address 1 12 }  { tmp_dist_7_ce0 mem_ce 1 1 }  { tmp_dist_7_q0 mem_dout 0 64 } } }
	tmp_dist_8 { ap_memory {  { tmp_dist_8_address0 mem_address 1 12 }  { tmp_dist_8_ce0 mem_ce 1 1 }  { tmp_dist_8_q0 mem_dout 0 64 } } }
	tmp_dist_9 { ap_memory {  { tmp_dist_9_address0 mem_address 1 12 }  { tmp_dist_9_ce0 mem_ce 1 1 }  { tmp_dist_9_q0 mem_dout 0 64 } } }
	tmp_dist_10 { ap_memory {  { tmp_dist_10_address0 mem_address 1 12 }  { tmp_dist_10_ce0 mem_ce 1 1 }  { tmp_dist_10_q0 mem_dout 0 64 } } }
	tmp_dist_11 { ap_memory {  { tmp_dist_11_address0 mem_address 1 12 }  { tmp_dist_11_ce0 mem_ce 1 1 }  { tmp_dist_11_q0 mem_dout 0 64 } } }
	tmp_dist_12 { ap_memory {  { tmp_dist_12_address0 mem_address 1 12 }  { tmp_dist_12_ce0 mem_ce 1 1 }  { tmp_dist_12_q0 mem_dout 0 64 } } }
	tmp_dist_13 { ap_memory {  { tmp_dist_13_address0 mem_address 1 12 }  { tmp_dist_13_ce0 mem_ce 1 1 }  { tmp_dist_13_q0 mem_dout 0 64 } } }
	tmp_dist_14 { ap_memory {  { tmp_dist_14_address0 mem_address 1 12 }  { tmp_dist_14_ce0 mem_ce 1 1 }  { tmp_dist_14_q0 mem_dout 0 64 } } }
	tmp_dist_15 { ap_memory {  { tmp_dist_15_address0 mem_address 1 12 }  { tmp_dist_15_ce0 mem_ce 1 1 }  { tmp_dist_15_q0 mem_dout 0 64 } } }
	tmp_dist_16 { ap_memory {  { tmp_dist_16_address0 mem_address 1 12 }  { tmp_dist_16_ce0 mem_ce 1 1 }  { tmp_dist_16_q0 mem_dout 0 64 } } }
	tmp_dist_17 { ap_memory {  { tmp_dist_17_address0 mem_address 1 12 }  { tmp_dist_17_ce0 mem_ce 1 1 }  { tmp_dist_17_q0 mem_dout 0 64 } } }
	tmp_dist_18 { ap_memory {  { tmp_dist_18_address0 mem_address 1 12 }  { tmp_dist_18_ce0 mem_ce 1 1 }  { tmp_dist_18_q0 mem_dout 0 64 } } }
	tmp_dist_19 { ap_memory {  { tmp_dist_19_address0 mem_address 1 12 }  { tmp_dist_19_ce0 mem_ce 1 1 }  { tmp_dist_19_q0 mem_dout 0 64 } } }
	tmp_dist_20 { ap_memory {  { tmp_dist_20_address0 mem_address 1 12 }  { tmp_dist_20_ce0 mem_ce 1 1 }  { tmp_dist_20_q0 mem_dout 0 64 } } }
	tmp_dist_21 { ap_memory {  { tmp_dist_21_address0 mem_address 1 12 }  { tmp_dist_21_ce0 mem_ce 1 1 }  { tmp_dist_21_q0 mem_dout 0 64 } } }
	tmp_dist_22 { ap_memory {  { tmp_dist_22_address0 mem_address 1 12 }  { tmp_dist_22_ce0 mem_ce 1 1 }  { tmp_dist_22_q0 mem_dout 0 64 } } }
	tmp_dist_23 { ap_memory {  { tmp_dist_23_address0 mem_address 1 12 }  { tmp_dist_23_ce0 mem_ce 1 1 }  { tmp_dist_23_q0 mem_dout 0 64 } } }
	tmp_dist_24 { ap_memory {  { tmp_dist_24_address0 mem_address 1 12 }  { tmp_dist_24_ce0 mem_ce 1 1 }  { tmp_dist_24_q0 mem_dout 0 64 } } }
	tmp_dist_25 { ap_memory {  { tmp_dist_25_address0 mem_address 1 12 }  { tmp_dist_25_ce0 mem_ce 1 1 }  { tmp_dist_25_q0 mem_dout 0 64 } } }
	tmp_dist_26 { ap_memory {  { tmp_dist_26_address0 mem_address 1 12 }  { tmp_dist_26_ce0 mem_ce 1 1 }  { tmp_dist_26_q0 mem_dout 0 64 } } }
	tmp_dist_27 { ap_memory {  { tmp_dist_27_address0 mem_address 1 12 }  { tmp_dist_27_ce0 mem_ce 1 1 }  { tmp_dist_27_q0 mem_dout 0 64 } } }
	tmp_dist_28 { ap_memory {  { tmp_dist_28_address0 mem_address 1 12 }  { tmp_dist_28_ce0 mem_ce 1 1 }  { tmp_dist_28_q0 mem_dout 0 64 } } }
	tmp_dist_29 { ap_memory {  { tmp_dist_29_address0 mem_address 1 12 }  { tmp_dist_29_ce0 mem_ce 1 1 }  { tmp_dist_29_q0 mem_dout 0 64 } } }
	tmp_dist_30 { ap_memory {  { tmp_dist_30_address0 mem_address 1 12 }  { tmp_dist_30_ce0 mem_ce 1 1 }  { tmp_dist_30_q0 mem_dout 0 64 } } }
	tmp_dist_31 { ap_memory {  { tmp_dist_31_address0 mem_address 1 12 }  { tmp_dist_31_ce0 mem_ce 1 1 }  { tmp_dist_31_q0 mem_dout 0 64 } } }
	wr_port_V_data_V { axis {  { wr_port_TDATA out_data 1 128 }  { wr_port_TREADY out_acc 0 1 } } }
	wr_port_V_keep_V { axis {  { wr_port_TKEEP out_data 1 16 } } }
	wr_port_V_strb_V { axis {  { wr_port_TSTRB out_data 1 16 } } }
	wr_port_V_last_V { axis {  { wr_port_TVALID out_vld 1 1 }  { wr_port_TLAST out_data 1 1 } } }
	idx { ap_none {  { idx in_data 0 8 } } }
}
