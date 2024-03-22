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
 	{ "Name" : "wr_port_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wr_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
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
	{ wr_port_TDATA sc_out sc_lv 128 signal 8 } 
	{ wr_port_TVALID sc_out sc_logic 1 outvld 11 } 
	{ wr_port_TREADY sc_in sc_logic 1 outacc 8 } 
	{ wr_port_TKEEP sc_out sc_lv 16 signal 9 } 
	{ wr_port_TSTRB sc_out sc_lv 16 signal 10 } 
	{ wr_port_TLAST sc_out sc_lv 1 signal 11 } 
	{ idx sc_in sc_lv 8 signal 12 } 
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
	wr_port_V_data_V { axis {  { wr_port_TDATA out_data 1 128 }  { wr_port_TREADY out_acc 0 1 } } }
	wr_port_V_keep_V { axis {  { wr_port_TKEEP out_data 1 16 } } }
	wr_port_V_strb_V { axis {  { wr_port_TSTRB out_data 1 16 } } }
	wr_port_V_last_V { axis {  { wr_port_TVALID out_vld 1 1 }  { wr_port_TLAST out_data 1 1 } } }
	idx { ap_none {  { idx in_data 0 8 } } }
}
