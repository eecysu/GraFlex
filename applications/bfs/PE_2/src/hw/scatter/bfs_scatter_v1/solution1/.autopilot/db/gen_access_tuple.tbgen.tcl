set moduleName gen_access_tuple
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
set C_modelName {gen_access_tuple}
set C_modelType { void 0 }
set C_modelArgList {
	{ ofst_buff int 64 regular {array 786432 { 1 1 } 1 1 }  }
	{ rlt_tail_idx int 32 regular  }
	{ batchIdx int 26 regular  }
	{ n_mem_tuples int 16 regular {pointer 1}  }
	{ mem_req_buff int 32 regular {array 4096 { 3 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ofst_buff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rlt_tail_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "batchIdx", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "n_mem_tuples", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mem_req_buff", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ofst_buff_address0 sc_out sc_lv 20 signal 0 } 
	{ ofst_buff_ce0 sc_out sc_logic 1 signal 0 } 
	{ ofst_buff_q0 sc_in sc_lv 64 signal 0 } 
	{ ofst_buff_address1 sc_out sc_lv 20 signal 0 } 
	{ ofst_buff_ce1 sc_out sc_logic 1 signal 0 } 
	{ ofst_buff_q1 sc_in sc_lv 64 signal 0 } 
	{ rlt_tail_idx sc_in sc_lv 32 signal 1 } 
	{ batchIdx sc_in sc_lv 26 signal 2 } 
	{ n_mem_tuples sc_out sc_lv 16 signal 3 } 
	{ n_mem_tuples_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ mem_req_buff_address1 sc_out sc_lv 12 signal 4 } 
	{ mem_req_buff_ce1 sc_out sc_logic 1 signal 4 } 
	{ mem_req_buff_we1 sc_out sc_logic 1 signal 4 } 
	{ mem_req_buff_d1 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ofst_buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ofst_buff", "role": "address0" }} , 
 	{ "name": "ofst_buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ofst_buff", "role": "ce0" }} , 
 	{ "name": "ofst_buff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ofst_buff", "role": "q0" }} , 
 	{ "name": "ofst_buff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ofst_buff", "role": "address1" }} , 
 	{ "name": "ofst_buff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ofst_buff", "role": "ce1" }} , 
 	{ "name": "ofst_buff_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ofst_buff", "role": "q1" }} , 
 	{ "name": "rlt_tail_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rlt_tail_idx", "role": "default" }} , 
 	{ "name": "batchIdx", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "batchIdx", "role": "default" }} , 
 	{ "name": "n_mem_tuples", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_mem_tuples", "role": "default" }} , 
 	{ "name": "n_mem_tuples_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "n_mem_tuples", "role": "ap_vld" }} , 
 	{ "name": "mem_req_buff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "mem_req_buff", "role": "address1" }} , 
 	{ "name": "mem_req_buff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_req_buff", "role": "ce1" }} , 
 	{ "name": "mem_req_buff_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_req_buff", "role": "we1" }} , 
 	{ "name": "mem_req_buff_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_req_buff", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "gen_access_tuple",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "131585",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ofst_buff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rlt_tail_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "batchIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_mem_tuples", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mem_req_buff", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	gen_access_tuple {
		ofst_buff {Type I LastRead 3 FirstWrite -1}
		rlt_tail_idx {Type I LastRead 0 FirstWrite -1}
		batchIdx {Type I LastRead 0 FirstWrite -1}
		n_mem_tuples {Type O LastRead -1 FirstWrite 0}
		mem_req_buff {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "131585"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "131585"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ofst_buff { ap_memory {  { ofst_buff_address0 mem_address 1 20 }  { ofst_buff_ce0 mem_ce 1 1 }  { ofst_buff_q0 mem_dout 0 64 }  { ofst_buff_address1 MemPortADDR2 1 20 }  { ofst_buff_ce1 MemPortCE2 1 1 }  { ofst_buff_q1 MemPortDOUT2 0 64 } } }
	rlt_tail_idx { ap_none {  { rlt_tail_idx in_data 0 32 } } }
	batchIdx { ap_none {  { batchIdx in_data 0 26 } } }
	n_mem_tuples { ap_vld {  { n_mem_tuples out_data 1 16 }  { n_mem_tuples_ap_vld out_vld 1 1 } } }
	mem_req_buff { ap_memory {  { mem_req_buff_address1 MemPortADDR2 1 12 }  { mem_req_buff_ce1 MemPortCE2 1 1 }  { mem_req_buff_we1 MemPortWE2 1 1 }  { mem_req_buff_d1 MemPortDIN2 1 32 } } }
}
