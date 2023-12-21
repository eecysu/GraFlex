set moduleName BFS_Ctrl_2X1_VER1
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {BFS_Ctrl_2X1_VER1}
set C_modelType { void 0 }
set C_modelArgList {
	{ dummyParam int 1 regular {pointer 0 volatile }  }
	{ N_Vertex int 32 regular  }
	{ resWrite int 1 regular {pointer 1 volatile }  }
	{ glblIterIdx int 16 regular {pointer 1}  }
	{ cnt_scatter_0 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_1 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_0 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_1 int 32 regular {pointer 0 volatile }  }
	{ exist_0 int 1 regular {pointer 0 volatile }  }
	{ exist_1 int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dummyParam", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dummyParam","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "N_Vertex", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "N_Vertex","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "resWrite", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "resWrite","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "glblIterIdx", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "glblIterIdx","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_0","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_1","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_0","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_1","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_0","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_1","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dummyParam sc_in sc_logic 1 signal 0 } 
	{ N_Vertex sc_in sc_lv 32 signal 1 } 
	{ resWrite sc_out sc_logic 1 signal 2 } 
	{ glblIterIdx sc_out sc_lv 16 signal 3 } 
	{ cnt_scatter_0 sc_in sc_lv 32 signal 4 } 
	{ cnt_scatter_1 sc_in sc_lv 32 signal 5 } 
	{ cnt_gather_0 sc_in sc_lv 32 signal 6 } 
	{ cnt_gather_1 sc_in sc_lv 32 signal 7 } 
	{ exist_0 sc_in sc_logic 1 signal 8 } 
	{ exist_1 sc_in sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dummyParam", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dummyParam", "role": "default" }} , 
 	{ "name": "N_Vertex", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N_Vertex", "role": "default" }} , 
 	{ "name": "resWrite", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resWrite", "role": "default" }} , 
 	{ "name": "glblIterIdx", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "glblIterIdx", "role": "default" }} , 
 	{ "name": "cnt_scatter_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_0", "role": "default" }} , 
 	{ "name": "cnt_scatter_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_1", "role": "default" }} , 
 	{ "name": "cnt_gather_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_0", "role": "default" }} , 
 	{ "name": "cnt_gather_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_1", "role": "default" }} , 
 	{ "name": "exist_0", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_0", "role": "default" }} , 
 	{ "name": "exist_1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "BFS_Ctrl_2X1_VER1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dummyParam", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_BFS_PE_fu_142", "Port" : "dummyParam"}]},
			{"Name" : "N_Vertex", "Type" : "None", "Direction" : "I"},
			{"Name" : "resWrite", "Type" : "None", "Direction" : "O"},
			{"Name" : "glblIterIdx", "Type" : "None", "Direction" : "O"},
			{"Name" : "cnt_scatter_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "iterIdx", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BFS_PE_fu_142", "Parent" : "0",
		"CDFG" : "BFS_PE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dummyParam", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	BFS_Ctrl_2X1_VER1 {
		dummyParam {Type I LastRead 1 FirstWrite -1}
		N_Vertex {Type I LastRead 1 FirstWrite -1}
		resWrite {Type O LastRead -1 FirstWrite 0}
		glblIterIdx {Type O LastRead -1 FirstWrite 2}
		cnt_scatter_0 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_1 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_0 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_1 {Type I LastRead 4 FirstWrite -1}
		exist_0 {Type I LastRead 5 FirstWrite -1}
		exist_1 {Type I LastRead 5 FirstWrite -1}
		iterIdx {Type IO LastRead -1 FirstWrite -1}}
	BFS_PE {
		dummyParam {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dummyParam { ap_none {  { dummyParam in_data 0 1 } } }
	N_Vertex { ap_none {  { N_Vertex in_data 0 32 } } }
	resWrite { ap_none {  { resWrite out_data 1 1 } } }
	glblIterIdx { ap_none {  { glblIterIdx out_data 1 16 } } }
	cnt_scatter_0 { ap_none {  { cnt_scatter_0 in_data 0 32 } } }
	cnt_scatter_1 { ap_none {  { cnt_scatter_1 in_data 0 32 } } }
	cnt_gather_0 { ap_none {  { cnt_gather_0 in_data 0 32 } } }
	cnt_gather_1 { ap_none {  { cnt_gather_1 in_data 0 32 } } }
	exist_0 { ap_none {  { exist_0 in_data 0 1 } } }
	exist_1 { ap_none {  { exist_1 in_data 0 1 } } }
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
