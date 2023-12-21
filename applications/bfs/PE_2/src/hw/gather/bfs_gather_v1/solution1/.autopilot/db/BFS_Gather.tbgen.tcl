set moduleName BFS_Gather
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {BFS_Gather}
set C_modelType { void 0 }
set C_modelArgList {
	{ peID uint 8 regular  }
	{ sw_data int 32 regular {pointer 0 volatile }  }
	{ exist int 1 regular {pointer 1 volatile }  }
	{ tmp_dist_0 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_1 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_2 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_3 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_4 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_5 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_6 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_7 int 64 regular {array 4096 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "peID", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "peID","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sw_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sw_data","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_0","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_1","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_2","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_3","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_4","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_5","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_6","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_7","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ peID sc_in sc_lv 8 signal 0 } 
	{ sw_data sc_in sc_lv 32 signal 1 } 
	{ exist sc_out sc_logic 1 signal 2 } 
	{ tmp_dist_0_address0 sc_out sc_lv 12 signal 3 } 
	{ tmp_dist_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmp_dist_0_we0 sc_out sc_lv 8 signal 3 } 
	{ tmp_dist_0_d0 sc_out sc_lv 64 signal 3 } 
	{ tmp_dist_0_q0 sc_in sc_lv 64 signal 3 } 
	{ tmp_dist_1_address0 sc_out sc_lv 12 signal 4 } 
	{ tmp_dist_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ tmp_dist_1_we0 sc_out sc_lv 8 signal 4 } 
	{ tmp_dist_1_d0 sc_out sc_lv 64 signal 4 } 
	{ tmp_dist_1_q0 sc_in sc_lv 64 signal 4 } 
	{ tmp_dist_2_address0 sc_out sc_lv 12 signal 5 } 
	{ tmp_dist_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ tmp_dist_2_we0 sc_out sc_lv 8 signal 5 } 
	{ tmp_dist_2_d0 sc_out sc_lv 64 signal 5 } 
	{ tmp_dist_2_q0 sc_in sc_lv 64 signal 5 } 
	{ tmp_dist_3_address0 sc_out sc_lv 12 signal 6 } 
	{ tmp_dist_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ tmp_dist_3_we0 sc_out sc_lv 8 signal 6 } 
	{ tmp_dist_3_d0 sc_out sc_lv 64 signal 6 } 
	{ tmp_dist_3_q0 sc_in sc_lv 64 signal 6 } 
	{ tmp_dist_4_address0 sc_out sc_lv 12 signal 7 } 
	{ tmp_dist_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ tmp_dist_4_we0 sc_out sc_lv 8 signal 7 } 
	{ tmp_dist_4_d0 sc_out sc_lv 64 signal 7 } 
	{ tmp_dist_4_q0 sc_in sc_lv 64 signal 7 } 
	{ tmp_dist_5_address0 sc_out sc_lv 12 signal 8 } 
	{ tmp_dist_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ tmp_dist_5_we0 sc_out sc_lv 8 signal 8 } 
	{ tmp_dist_5_d0 sc_out sc_lv 64 signal 8 } 
	{ tmp_dist_5_q0 sc_in sc_lv 64 signal 8 } 
	{ tmp_dist_6_address0 sc_out sc_lv 12 signal 9 } 
	{ tmp_dist_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ tmp_dist_6_we0 sc_out sc_lv 8 signal 9 } 
	{ tmp_dist_6_d0 sc_out sc_lv 64 signal 9 } 
	{ tmp_dist_6_q0 sc_in sc_lv 64 signal 9 } 
	{ tmp_dist_7_address0 sc_out sc_lv 12 signal 10 } 
	{ tmp_dist_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ tmp_dist_7_we0 sc_out sc_lv 8 signal 10 } 
	{ tmp_dist_7_d0 sc_out sc_lv 64 signal 10 } 
	{ tmp_dist_7_q0 sc_in sc_lv 64 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "peID", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "peID", "role": "default" }} , 
 	{ "name": "sw_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw_data", "role": "default" }} , 
 	{ "name": "exist", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist", "role": "default" }} , 
 	{ "name": "tmp_dist_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "address0" }} , 
 	{ "name": "tmp_dist_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "ce0" }} , 
 	{ "name": "tmp_dist_0_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "we0" }} , 
 	{ "name": "tmp_dist_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "d0" }} , 
 	{ "name": "tmp_dist_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "q0" }} , 
 	{ "name": "tmp_dist_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "address0" }} , 
 	{ "name": "tmp_dist_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "ce0" }} , 
 	{ "name": "tmp_dist_1_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "we0" }} , 
 	{ "name": "tmp_dist_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "d0" }} , 
 	{ "name": "tmp_dist_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "q0" }} , 
 	{ "name": "tmp_dist_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "address0" }} , 
 	{ "name": "tmp_dist_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "ce0" }} , 
 	{ "name": "tmp_dist_2_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "we0" }} , 
 	{ "name": "tmp_dist_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "d0" }} , 
 	{ "name": "tmp_dist_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "q0" }} , 
 	{ "name": "tmp_dist_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "address0" }} , 
 	{ "name": "tmp_dist_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "ce0" }} , 
 	{ "name": "tmp_dist_3_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "we0" }} , 
 	{ "name": "tmp_dist_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "d0" }} , 
 	{ "name": "tmp_dist_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "q0" }} , 
 	{ "name": "tmp_dist_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "address0" }} , 
 	{ "name": "tmp_dist_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "ce0" }} , 
 	{ "name": "tmp_dist_4_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "we0" }} , 
 	{ "name": "tmp_dist_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "d0" }} , 
 	{ "name": "tmp_dist_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "q0" }} , 
 	{ "name": "tmp_dist_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "address0" }} , 
 	{ "name": "tmp_dist_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "ce0" }} , 
 	{ "name": "tmp_dist_5_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "we0" }} , 
 	{ "name": "tmp_dist_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "d0" }} , 
 	{ "name": "tmp_dist_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "q0" }} , 
 	{ "name": "tmp_dist_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "address0" }} , 
 	{ "name": "tmp_dist_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "ce0" }} , 
 	{ "name": "tmp_dist_6_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "we0" }} , 
 	{ "name": "tmp_dist_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "d0" }} , 
 	{ "name": "tmp_dist_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "q0" }} , 
 	{ "name": "tmp_dist_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "address0" }} , 
 	{ "name": "tmp_dist_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "ce0" }} , 
 	{ "name": "tmp_dist_7_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "we0" }} , 
 	{ "name": "tmp_dist_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "d0" }} , 
 	{ "name": "tmp_dist_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "BFS_Gather",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "peID", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist", "Type" : "None", "Direction" : "O"},
			{"Name" : "tmp_dist_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_dist_7", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	BFS_Gather {
		peID {Type I LastRead 0 FirstWrite -1}
		sw_data {Type I LastRead 0 FirstWrite -1}
		exist {Type O LastRead -1 FirstWrite 1}
		tmp_dist_0 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_1 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_2 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_3 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_4 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_5 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_6 {Type IO LastRead 0 FirstWrite 1}
		tmp_dist_7 {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	peID { ap_none {  { peID in_data 0 8 } } }
	sw_data { ap_none {  { sw_data in_data 0 32 } } }
	exist { ap_none {  { exist out_data 1 1 } } }
	tmp_dist_0 { ap_memory {  { tmp_dist_0_address0 mem_address 1 12 }  { tmp_dist_0_ce0 mem_ce 1 1 }  { tmp_dist_0_we0 mem_we 1 8 }  { tmp_dist_0_d0 mem_din 1 64 }  { tmp_dist_0_q0 mem_dout 0 64 } } }
	tmp_dist_1 { ap_memory {  { tmp_dist_1_address0 mem_address 1 12 }  { tmp_dist_1_ce0 mem_ce 1 1 }  { tmp_dist_1_we0 mem_we 1 8 }  { tmp_dist_1_d0 mem_din 1 64 }  { tmp_dist_1_q0 mem_dout 0 64 } } }
	tmp_dist_2 { ap_memory {  { tmp_dist_2_address0 mem_address 1 12 }  { tmp_dist_2_ce0 mem_ce 1 1 }  { tmp_dist_2_we0 mem_we 1 8 }  { tmp_dist_2_d0 mem_din 1 64 }  { tmp_dist_2_q0 mem_dout 0 64 } } }
	tmp_dist_3 { ap_memory {  { tmp_dist_3_address0 mem_address 1 12 }  { tmp_dist_3_ce0 mem_ce 1 1 }  { tmp_dist_3_we0 mem_we 1 8 }  { tmp_dist_3_d0 mem_din 1 64 }  { tmp_dist_3_q0 mem_dout 0 64 } } }
	tmp_dist_4 { ap_memory {  { tmp_dist_4_address0 mem_address 1 12 }  { tmp_dist_4_ce0 mem_ce 1 1 }  { tmp_dist_4_we0 mem_we 1 8 }  { tmp_dist_4_d0 mem_din 1 64 }  { tmp_dist_4_q0 mem_dout 0 64 } } }
	tmp_dist_5 { ap_memory {  { tmp_dist_5_address0 mem_address 1 12 }  { tmp_dist_5_ce0 mem_ce 1 1 }  { tmp_dist_5_we0 mem_we 1 8 }  { tmp_dist_5_d0 mem_din 1 64 }  { tmp_dist_5_q0 mem_dout 0 64 } } }
	tmp_dist_6 { ap_memory {  { tmp_dist_6_address0 mem_address 1 12 }  { tmp_dist_6_ce0 mem_ce 1 1 }  { tmp_dist_6_we0 mem_we 1 8 }  { tmp_dist_6_d0 mem_din 1 64 }  { tmp_dist_6_q0 mem_dout 0 64 } } }
	tmp_dist_7 { ap_memory {  { tmp_dist_7_address0 mem_address 1 12 }  { tmp_dist_7_ce0 mem_ce 1 1 }  { tmp_dist_7_we0 mem_we 1 8 }  { tmp_dist_7_d0 mem_din 1 64 }  { tmp_dist_7_q0 mem_dout 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
