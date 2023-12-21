set moduleName BuffOfst
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
set C_modelName {BuffOfst}
set C_modelType { void 0 }
set C_modelArgList {
	{ rd_req_V int 32 regular {fifo 1 volatile }  }
	{ rd_start int 1 regular {pointer 1 volatile }  }
	{ ofst_buff int 64 regular {array 786432 { 3 0 } 0 1 }  }
	{ rd_port_V_data_V int 128 regular {axi_s 0 volatile  { rd_port Data } }  }
	{ rd_port_V_keep_V int 16 regular {axi_s 0 volatile  { rd_port Keep } }  }
	{ rd_port_V_strb_V int 16 regular {axi_s 0 volatile  { rd_port Strb } }  }
	{ rd_port_V_last_V int 1 regular {axi_s 0 volatile  { rd_port Last } }  }
	{ size int 20 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rd_req_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rd_start", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ofst_buff", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rd_port_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rd_port_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rd_port_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rd_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rd_req_V_din sc_out sc_lv 32 signal 0 } 
	{ rd_req_V_full_n sc_in sc_logic 1 signal 0 } 
	{ rd_req_V_write sc_out sc_logic 1 signal 0 } 
	{ rd_start sc_out sc_logic 1 signal 1 } 
	{ rd_start_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ ofst_buff_address1 sc_out sc_lv 20 signal 2 } 
	{ ofst_buff_ce1 sc_out sc_logic 1 signal 2 } 
	{ ofst_buff_we1 sc_out sc_logic 1 signal 2 } 
	{ ofst_buff_d1 sc_out sc_lv 64 signal 2 } 
	{ rd_port_TDATA sc_in sc_lv 128 signal 3 } 
	{ rd_port_TVALID sc_in sc_logic 1 invld 3 } 
	{ rd_port_TREADY sc_out sc_logic 1 inacc 6 } 
	{ rd_port_TKEEP sc_in sc_lv 16 signal 4 } 
	{ rd_port_TSTRB sc_in sc_lv 16 signal 5 } 
	{ rd_port_TLAST sc_in sc_lv 1 signal 6 } 
	{ size sc_in sc_lv 20 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rd_req_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_req_V", "role": "din" }} , 
 	{ "name": "rd_req_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_req_V", "role": "full_n" }} , 
 	{ "name": "rd_req_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_req_V", "role": "write" }} , 
 	{ "name": "rd_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_start", "role": "default" }} , 
 	{ "name": "rd_start_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rd_start", "role": "ap_vld" }} , 
 	{ "name": "ofst_buff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ofst_buff", "role": "address1" }} , 
 	{ "name": "ofst_buff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ofst_buff", "role": "ce1" }} , 
 	{ "name": "ofst_buff_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ofst_buff", "role": "we1" }} , 
 	{ "name": "ofst_buff_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ofst_buff", "role": "d1" }} , 
 	{ "name": "rd_port_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rd_port_V_data_V", "role": "default" }} , 
 	{ "name": "rd_port_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rd_port_V_data_V", "role": "default" }} , 
 	{ "name": "rd_port_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rd_port_V_last_V", "role": "default" }} , 
 	{ "name": "rd_port_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rd_port_V_keep_V", "role": "default" }} , 
 	{ "name": "rd_port_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rd_port_V_strb_V", "role": "default" }} , 
 	{ "name": "rd_port_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_port_V_last_V", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "size", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "BuffOfst",
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
			{"Name" : "rd_req_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rd_req_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_start", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ofst_buff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rd_port_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rd_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_port_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rd_port_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rd_port_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	BuffOfst {
		rd_req_V {Type O LastRead -1 FirstWrite 3}
		rd_start {Type O LastRead -1 FirstWrite 3}
		ofst_buff {Type O LastRead -1 FirstWrite 4}
		rd_port_V_data_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_keep_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_strb_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_last_V {Type I LastRead 4 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rd_req_V { ap_fifo {  { rd_req_V_din fifo_data 1 32 }  { rd_req_V_full_n fifo_status 0 1 }  { rd_req_V_write fifo_update 1 1 } } }
	rd_start { ap_vld {  { rd_start out_data 1 1 }  { rd_start_ap_vld out_vld 1 1 } } }
	ofst_buff { ap_memory {  { ofst_buff_address1 MemPortADDR2 1 20 }  { ofst_buff_ce1 MemPortCE2 1 1 }  { ofst_buff_we1 MemPortWE2 1 1 }  { ofst_buff_d1 MemPortDIN2 1 64 } } }
	rd_port_V_data_V { axis {  { rd_port_TDATA in_data 0 128 }  { rd_port_TVALID in_vld 0 1 } } }
	rd_port_V_keep_V { axis {  { rd_port_TKEEP in_data 0 16 } } }
	rd_port_V_strb_V { axis {  { rd_port_TSTRB in_data 0 16 } } }
	rd_port_V_last_V { axis {  { rd_port_TREADY in_acc 1 1 }  { rd_port_TLAST in_data 0 1 } } }
	size { ap_none {  { size in_data 0 20 } } }
}
