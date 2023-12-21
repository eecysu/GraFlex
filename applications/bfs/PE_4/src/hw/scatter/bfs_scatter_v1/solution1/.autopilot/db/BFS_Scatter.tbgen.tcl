set moduleName BFS_Scatter
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
set C_modelName {BFS_Scatter}
set C_modelType { void 0 }
set C_modelArgList {
	{ CSR_V int 33 regular  }
	{ CSR_E int 33 regular  }
	{ glbl_d int 33 regular  }
	{ rd_baseAddr int 64 regular {pointer 1 volatile }  }
	{ wr_baseAddr int 64 regular {pointer 1 volatile }  }
	{ rd_port_V_data_V int 128 regular {axi_s 0 volatile  { rd_port Data } }  }
	{ rd_port_V_keep_V int 16 regular {axi_s 0 volatile  { rd_port Keep } }  }
	{ rd_port_V_strb_V int 16 regular {axi_s 0 volatile  { rd_port Strb } }  }
	{ rd_port_V_last_V int 1 regular {axi_s 0 volatile  { rd_port Last } }  }
	{ wr_port_V_data_V int 128 regular {axi_s 1 volatile  { wr_port Data } }  }
	{ wr_port_V_keep_V int 16 regular {axi_s 1 volatile  { wr_port Keep } }  }
	{ wr_port_V_strb_V int 16 regular {axi_s 1 volatile  { wr_port Strb } }  }
	{ wr_port_V_last_V int 1 regular {axi_s 1 volatile  { wr_port Last } }  }
	{ rd_req_V int 32 regular {fifo 1 volatile }  }
	{ wr_len int 16 regular {pointer 1 volatile }  }
	{ rd_start int 1 regular {pointer 1 volatile }  }
	{ wr_start int 1 regular {pointer 1 volatile }  }
	{ N_Vertex int 32 regular  }
	{ root int 32 regular  }
	{ peID uint 8 regular  }
	{ sw_data_0_V int 32 regular {fifo 1 volatile }  }
	{ sw_data_1_V int 32 regular {fifo 1 volatile }  }
	{ sw_data_2_V int 32 regular {fifo 1 volatile }  }
	{ sw_data_3_V int 32 regular {fifo 1 volatile }  }
	{ glblIterIdx int 16 regular {pointer 0}  }
	{ cycle_cnt int 32 regular {pointer 0 volatile }  }
	{ launch_recv int 1 regular {pointer 1 volatile }  }
	{ resWrite uint 1 regular  }
	{ tmp_dist_0 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_1 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_2 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_3 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_4 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_5 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_6 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_7 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_8 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_9 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_10 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_11 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_12 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_13 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_14 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_15 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_16 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_17 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_18 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_19 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_20 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_21 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_22 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_23 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_24 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_25 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_26 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_27 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_28 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_29 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_30 int 64 regular {array 4096 { 2 } 1 1 }  }
	{ tmp_dist_31 int 64 regular {array 4096 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "CSR_V", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "CSR_V","cData": "int33","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "CSR_E", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "CSR_E","cData": "int33","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "glbl_d", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "glbl_d","cData": "int33","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_baseAddr", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_baseAddr","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_baseAddr", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_baseAddr","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_port_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_port.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_port_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_port.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_port_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_port.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_port.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_port_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_port.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_port_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_port.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_port_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_port.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_port_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_port.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_req_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_req.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_len", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_len","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rd_start", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rd_start","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wr_start", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wr_start","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "N_Vertex", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "N_Vertex","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "root", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "root","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "peID", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "peID","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sw_data_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sw_data_0.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sw_data_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sw_data_1.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sw_data_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sw_data_2.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sw_data_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sw_data_3.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "glblIterIdx", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "glblIterIdx","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cycle_cnt", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cycle_cnt","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "launch_recv", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "launch_recv","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "resWrite", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "resWrite","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_0","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_1","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_2","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_3","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_4","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_5","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_6","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_7","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_8","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_9", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_9","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_10","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_11", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_11","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_12", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_12","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_13", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_13","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_14", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_14","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_15", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_15","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_16", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_16","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_17", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_17","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_18", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_18","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_19", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_19","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_20", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_20","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_21", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_21","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_22", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_22","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_23", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_23","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_24", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_24","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_25", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_25","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_26", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_26","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_27", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_27","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_28", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_28","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_29", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_29","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_30", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_30","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tmp_dist_31", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tmp_dist_31","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 208
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ CSR_V sc_in sc_lv 33 signal 0 } 
	{ CSR_E sc_in sc_lv 33 signal 1 } 
	{ glbl_d sc_in sc_lv 33 signal 2 } 
	{ rd_baseAddr sc_out sc_lv 64 signal 3 } 
	{ wr_baseAddr sc_out sc_lv 64 signal 4 } 
	{ rd_port_TDATA sc_in sc_lv 128 signal 5 } 
	{ rd_port_TVALID sc_in sc_logic 1 invld 8 } 
	{ rd_port_TREADY sc_out sc_logic 1 inacc 8 } 
	{ rd_port_TKEEP sc_in sc_lv 16 signal 6 } 
	{ rd_port_TSTRB sc_in sc_lv 16 signal 7 } 
	{ rd_port_TLAST sc_in sc_lv 1 signal 8 } 
	{ wr_port_TDATA sc_out sc_lv 128 signal 9 } 
	{ wr_port_TVALID sc_out sc_logic 1 outvld 12 } 
	{ wr_port_TREADY sc_in sc_logic 1 outacc 12 } 
	{ wr_port_TKEEP sc_out sc_lv 16 signal 10 } 
	{ wr_port_TSTRB sc_out sc_lv 16 signal 11 } 
	{ wr_port_TLAST sc_out sc_lv 1 signal 12 } 
	{ rd_req_V_din sc_out sc_lv 32 signal 13 } 
	{ rd_req_V_full_n sc_in sc_logic 1 signal 13 } 
	{ rd_req_V_write sc_out sc_logic 1 signal 13 } 
	{ wr_len sc_out sc_lv 16 signal 14 } 
	{ rd_start sc_out sc_logic 1 signal 15 } 
	{ wr_start sc_out sc_logic 1 signal 16 } 
	{ N_Vertex sc_in sc_lv 32 signal 17 } 
	{ root sc_in sc_lv 32 signal 18 } 
	{ peID sc_in sc_lv 8 signal 19 } 
	{ sw_data_0_V_din sc_out sc_lv 32 signal 20 } 
	{ sw_data_0_V_full_n sc_in sc_logic 1 signal 20 } 
	{ sw_data_0_V_write sc_out sc_logic 1 signal 20 } 
	{ sw_data_1_V_din sc_out sc_lv 32 signal 21 } 
	{ sw_data_1_V_full_n sc_in sc_logic 1 signal 21 } 
	{ sw_data_1_V_write sc_out sc_logic 1 signal 21 } 
	{ sw_data_2_V_din sc_out sc_lv 32 signal 22 } 
	{ sw_data_2_V_full_n sc_in sc_logic 1 signal 22 } 
	{ sw_data_2_V_write sc_out sc_logic 1 signal 22 } 
	{ sw_data_3_V_din sc_out sc_lv 32 signal 23 } 
	{ sw_data_3_V_full_n sc_in sc_logic 1 signal 23 } 
	{ sw_data_3_V_write sc_out sc_logic 1 signal 23 } 
	{ glblIterIdx sc_in sc_lv 16 signal 24 } 
	{ cycle_cnt sc_in sc_lv 32 signal 25 } 
	{ launch_recv sc_out sc_logic 1 signal 26 } 
	{ resWrite sc_in sc_logic 1 signal 27 } 
	{ tmp_dist_0_address0 sc_out sc_lv 12 signal 28 } 
	{ tmp_dist_0_ce0 sc_out sc_logic 1 signal 28 } 
	{ tmp_dist_0_we0 sc_out sc_logic 1 signal 28 } 
	{ tmp_dist_0_d0 sc_out sc_lv 64 signal 28 } 
	{ tmp_dist_0_q0 sc_in sc_lv 64 signal 28 } 
	{ tmp_dist_1_address0 sc_out sc_lv 12 signal 29 } 
	{ tmp_dist_1_ce0 sc_out sc_logic 1 signal 29 } 
	{ tmp_dist_1_we0 sc_out sc_logic 1 signal 29 } 
	{ tmp_dist_1_d0 sc_out sc_lv 64 signal 29 } 
	{ tmp_dist_1_q0 sc_in sc_lv 64 signal 29 } 
	{ tmp_dist_2_address0 sc_out sc_lv 12 signal 30 } 
	{ tmp_dist_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ tmp_dist_2_we0 sc_out sc_logic 1 signal 30 } 
	{ tmp_dist_2_d0 sc_out sc_lv 64 signal 30 } 
	{ tmp_dist_2_q0 sc_in sc_lv 64 signal 30 } 
	{ tmp_dist_3_address0 sc_out sc_lv 12 signal 31 } 
	{ tmp_dist_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ tmp_dist_3_we0 sc_out sc_logic 1 signal 31 } 
	{ tmp_dist_3_d0 sc_out sc_lv 64 signal 31 } 
	{ tmp_dist_3_q0 sc_in sc_lv 64 signal 31 } 
	{ tmp_dist_4_address0 sc_out sc_lv 12 signal 32 } 
	{ tmp_dist_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ tmp_dist_4_we0 sc_out sc_logic 1 signal 32 } 
	{ tmp_dist_4_d0 sc_out sc_lv 64 signal 32 } 
	{ tmp_dist_4_q0 sc_in sc_lv 64 signal 32 } 
	{ tmp_dist_5_address0 sc_out sc_lv 12 signal 33 } 
	{ tmp_dist_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ tmp_dist_5_we0 sc_out sc_logic 1 signal 33 } 
	{ tmp_dist_5_d0 sc_out sc_lv 64 signal 33 } 
	{ tmp_dist_5_q0 sc_in sc_lv 64 signal 33 } 
	{ tmp_dist_6_address0 sc_out sc_lv 12 signal 34 } 
	{ tmp_dist_6_ce0 sc_out sc_logic 1 signal 34 } 
	{ tmp_dist_6_we0 sc_out sc_logic 1 signal 34 } 
	{ tmp_dist_6_d0 sc_out sc_lv 64 signal 34 } 
	{ tmp_dist_6_q0 sc_in sc_lv 64 signal 34 } 
	{ tmp_dist_7_address0 sc_out sc_lv 12 signal 35 } 
	{ tmp_dist_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ tmp_dist_7_we0 sc_out sc_logic 1 signal 35 } 
	{ tmp_dist_7_d0 sc_out sc_lv 64 signal 35 } 
	{ tmp_dist_7_q0 sc_in sc_lv 64 signal 35 } 
	{ tmp_dist_8_address0 sc_out sc_lv 12 signal 36 } 
	{ tmp_dist_8_ce0 sc_out sc_logic 1 signal 36 } 
	{ tmp_dist_8_we0 sc_out sc_logic 1 signal 36 } 
	{ tmp_dist_8_d0 sc_out sc_lv 64 signal 36 } 
	{ tmp_dist_8_q0 sc_in sc_lv 64 signal 36 } 
	{ tmp_dist_9_address0 sc_out sc_lv 12 signal 37 } 
	{ tmp_dist_9_ce0 sc_out sc_logic 1 signal 37 } 
	{ tmp_dist_9_we0 sc_out sc_logic 1 signal 37 } 
	{ tmp_dist_9_d0 sc_out sc_lv 64 signal 37 } 
	{ tmp_dist_9_q0 sc_in sc_lv 64 signal 37 } 
	{ tmp_dist_10_address0 sc_out sc_lv 12 signal 38 } 
	{ tmp_dist_10_ce0 sc_out sc_logic 1 signal 38 } 
	{ tmp_dist_10_we0 sc_out sc_logic 1 signal 38 } 
	{ tmp_dist_10_d0 sc_out sc_lv 64 signal 38 } 
	{ tmp_dist_10_q0 sc_in sc_lv 64 signal 38 } 
	{ tmp_dist_11_address0 sc_out sc_lv 12 signal 39 } 
	{ tmp_dist_11_ce0 sc_out sc_logic 1 signal 39 } 
	{ tmp_dist_11_we0 sc_out sc_logic 1 signal 39 } 
	{ tmp_dist_11_d0 sc_out sc_lv 64 signal 39 } 
	{ tmp_dist_11_q0 sc_in sc_lv 64 signal 39 } 
	{ tmp_dist_12_address0 sc_out sc_lv 12 signal 40 } 
	{ tmp_dist_12_ce0 sc_out sc_logic 1 signal 40 } 
	{ tmp_dist_12_we0 sc_out sc_logic 1 signal 40 } 
	{ tmp_dist_12_d0 sc_out sc_lv 64 signal 40 } 
	{ tmp_dist_12_q0 sc_in sc_lv 64 signal 40 } 
	{ tmp_dist_13_address0 sc_out sc_lv 12 signal 41 } 
	{ tmp_dist_13_ce0 sc_out sc_logic 1 signal 41 } 
	{ tmp_dist_13_we0 sc_out sc_logic 1 signal 41 } 
	{ tmp_dist_13_d0 sc_out sc_lv 64 signal 41 } 
	{ tmp_dist_13_q0 sc_in sc_lv 64 signal 41 } 
	{ tmp_dist_14_address0 sc_out sc_lv 12 signal 42 } 
	{ tmp_dist_14_ce0 sc_out sc_logic 1 signal 42 } 
	{ tmp_dist_14_we0 sc_out sc_logic 1 signal 42 } 
	{ tmp_dist_14_d0 sc_out sc_lv 64 signal 42 } 
	{ tmp_dist_14_q0 sc_in sc_lv 64 signal 42 } 
	{ tmp_dist_15_address0 sc_out sc_lv 12 signal 43 } 
	{ tmp_dist_15_ce0 sc_out sc_logic 1 signal 43 } 
	{ tmp_dist_15_we0 sc_out sc_logic 1 signal 43 } 
	{ tmp_dist_15_d0 sc_out sc_lv 64 signal 43 } 
	{ tmp_dist_15_q0 sc_in sc_lv 64 signal 43 } 
	{ tmp_dist_16_address0 sc_out sc_lv 12 signal 44 } 
	{ tmp_dist_16_ce0 sc_out sc_logic 1 signal 44 } 
	{ tmp_dist_16_we0 sc_out sc_logic 1 signal 44 } 
	{ tmp_dist_16_d0 sc_out sc_lv 64 signal 44 } 
	{ tmp_dist_16_q0 sc_in sc_lv 64 signal 44 } 
	{ tmp_dist_17_address0 sc_out sc_lv 12 signal 45 } 
	{ tmp_dist_17_ce0 sc_out sc_logic 1 signal 45 } 
	{ tmp_dist_17_we0 sc_out sc_logic 1 signal 45 } 
	{ tmp_dist_17_d0 sc_out sc_lv 64 signal 45 } 
	{ tmp_dist_17_q0 sc_in sc_lv 64 signal 45 } 
	{ tmp_dist_18_address0 sc_out sc_lv 12 signal 46 } 
	{ tmp_dist_18_ce0 sc_out sc_logic 1 signal 46 } 
	{ tmp_dist_18_we0 sc_out sc_logic 1 signal 46 } 
	{ tmp_dist_18_d0 sc_out sc_lv 64 signal 46 } 
	{ tmp_dist_18_q0 sc_in sc_lv 64 signal 46 } 
	{ tmp_dist_19_address0 sc_out sc_lv 12 signal 47 } 
	{ tmp_dist_19_ce0 sc_out sc_logic 1 signal 47 } 
	{ tmp_dist_19_we0 sc_out sc_logic 1 signal 47 } 
	{ tmp_dist_19_d0 sc_out sc_lv 64 signal 47 } 
	{ tmp_dist_19_q0 sc_in sc_lv 64 signal 47 } 
	{ tmp_dist_20_address0 sc_out sc_lv 12 signal 48 } 
	{ tmp_dist_20_ce0 sc_out sc_logic 1 signal 48 } 
	{ tmp_dist_20_we0 sc_out sc_logic 1 signal 48 } 
	{ tmp_dist_20_d0 sc_out sc_lv 64 signal 48 } 
	{ tmp_dist_20_q0 sc_in sc_lv 64 signal 48 } 
	{ tmp_dist_21_address0 sc_out sc_lv 12 signal 49 } 
	{ tmp_dist_21_ce0 sc_out sc_logic 1 signal 49 } 
	{ tmp_dist_21_we0 sc_out sc_logic 1 signal 49 } 
	{ tmp_dist_21_d0 sc_out sc_lv 64 signal 49 } 
	{ tmp_dist_21_q0 sc_in sc_lv 64 signal 49 } 
	{ tmp_dist_22_address0 sc_out sc_lv 12 signal 50 } 
	{ tmp_dist_22_ce0 sc_out sc_logic 1 signal 50 } 
	{ tmp_dist_22_we0 sc_out sc_logic 1 signal 50 } 
	{ tmp_dist_22_d0 sc_out sc_lv 64 signal 50 } 
	{ tmp_dist_22_q0 sc_in sc_lv 64 signal 50 } 
	{ tmp_dist_23_address0 sc_out sc_lv 12 signal 51 } 
	{ tmp_dist_23_ce0 sc_out sc_logic 1 signal 51 } 
	{ tmp_dist_23_we0 sc_out sc_logic 1 signal 51 } 
	{ tmp_dist_23_d0 sc_out sc_lv 64 signal 51 } 
	{ tmp_dist_23_q0 sc_in sc_lv 64 signal 51 } 
	{ tmp_dist_24_address0 sc_out sc_lv 12 signal 52 } 
	{ tmp_dist_24_ce0 sc_out sc_logic 1 signal 52 } 
	{ tmp_dist_24_we0 sc_out sc_logic 1 signal 52 } 
	{ tmp_dist_24_d0 sc_out sc_lv 64 signal 52 } 
	{ tmp_dist_24_q0 sc_in sc_lv 64 signal 52 } 
	{ tmp_dist_25_address0 sc_out sc_lv 12 signal 53 } 
	{ tmp_dist_25_ce0 sc_out sc_logic 1 signal 53 } 
	{ tmp_dist_25_we0 sc_out sc_logic 1 signal 53 } 
	{ tmp_dist_25_d0 sc_out sc_lv 64 signal 53 } 
	{ tmp_dist_25_q0 sc_in sc_lv 64 signal 53 } 
	{ tmp_dist_26_address0 sc_out sc_lv 12 signal 54 } 
	{ tmp_dist_26_ce0 sc_out sc_logic 1 signal 54 } 
	{ tmp_dist_26_we0 sc_out sc_logic 1 signal 54 } 
	{ tmp_dist_26_d0 sc_out sc_lv 64 signal 54 } 
	{ tmp_dist_26_q0 sc_in sc_lv 64 signal 54 } 
	{ tmp_dist_27_address0 sc_out sc_lv 12 signal 55 } 
	{ tmp_dist_27_ce0 sc_out sc_logic 1 signal 55 } 
	{ tmp_dist_27_we0 sc_out sc_logic 1 signal 55 } 
	{ tmp_dist_27_d0 sc_out sc_lv 64 signal 55 } 
	{ tmp_dist_27_q0 sc_in sc_lv 64 signal 55 } 
	{ tmp_dist_28_address0 sc_out sc_lv 12 signal 56 } 
	{ tmp_dist_28_ce0 sc_out sc_logic 1 signal 56 } 
	{ tmp_dist_28_we0 sc_out sc_logic 1 signal 56 } 
	{ tmp_dist_28_d0 sc_out sc_lv 64 signal 56 } 
	{ tmp_dist_28_q0 sc_in sc_lv 64 signal 56 } 
	{ tmp_dist_29_address0 sc_out sc_lv 12 signal 57 } 
	{ tmp_dist_29_ce0 sc_out sc_logic 1 signal 57 } 
	{ tmp_dist_29_we0 sc_out sc_logic 1 signal 57 } 
	{ tmp_dist_29_d0 sc_out sc_lv 64 signal 57 } 
	{ tmp_dist_29_q0 sc_in sc_lv 64 signal 57 } 
	{ tmp_dist_30_address0 sc_out sc_lv 12 signal 58 } 
	{ tmp_dist_30_ce0 sc_out sc_logic 1 signal 58 } 
	{ tmp_dist_30_we0 sc_out sc_logic 1 signal 58 } 
	{ tmp_dist_30_d0 sc_out sc_lv 64 signal 58 } 
	{ tmp_dist_30_q0 sc_in sc_lv 64 signal 58 } 
	{ tmp_dist_31_address0 sc_out sc_lv 12 signal 59 } 
	{ tmp_dist_31_ce0 sc_out sc_logic 1 signal 59 } 
	{ tmp_dist_31_we0 sc_out sc_logic 1 signal 59 } 
	{ tmp_dist_31_d0 sc_out sc_lv 64 signal 59 } 
	{ tmp_dist_31_q0 sc_in sc_lv 64 signal 59 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "CSR_V", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "CSR_V", "role": "default" }} , 
 	{ "name": "CSR_E", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "CSR_E", "role": "default" }} , 
 	{ "name": "glbl_d", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "glbl_d", "role": "default" }} , 
 	{ "name": "rd_baseAddr", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rd_baseAddr", "role": "default" }} , 
 	{ "name": "wr_baseAddr", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wr_baseAddr", "role": "default" }} , 
 	{ "name": "rd_port_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rd_port_V_data_V", "role": "default" }} , 
 	{ "name": "rd_port_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rd_port_V_last_V", "role": "default" }} , 
 	{ "name": "rd_port_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rd_port_V_last_V", "role": "default" }} , 
 	{ "name": "rd_port_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rd_port_V_keep_V", "role": "default" }} , 
 	{ "name": "rd_port_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rd_port_V_strb_V", "role": "default" }} , 
 	{ "name": "rd_port_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_port_V_last_V", "role": "default" }} , 
 	{ "name": "wr_port_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "wr_port_V_data_V", "role": "default" }} , 
 	{ "name": "wr_port_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "wr_port_V_last_V", "role": "default" }} , 
 	{ "name": "wr_port_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "wr_port_V_last_V", "role": "default" }} , 
 	{ "name": "wr_port_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wr_port_V_keep_V", "role": "default" }} , 
 	{ "name": "wr_port_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wr_port_V_strb_V", "role": "default" }} , 
 	{ "name": "wr_port_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_port_V_last_V", "role": "default" }} , 
 	{ "name": "rd_req_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rd_req_V", "role": "din" }} , 
 	{ "name": "rd_req_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_req_V", "role": "full_n" }} , 
 	{ "name": "rd_req_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_req_V", "role": "write" }} , 
 	{ "name": "wr_len", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wr_len", "role": "default" }} , 
 	{ "name": "rd_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rd_start", "role": "default" }} , 
 	{ "name": "wr_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wr_start", "role": "default" }} , 
 	{ "name": "N_Vertex", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N_Vertex", "role": "default" }} , 
 	{ "name": "root", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "root", "role": "default" }} , 
 	{ "name": "peID", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "peID", "role": "default" }} , 
 	{ "name": "sw_data_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw_data_0_V", "role": "din" }} , 
 	{ "name": "sw_data_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_0_V", "role": "full_n" }} , 
 	{ "name": "sw_data_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_0_V", "role": "write" }} , 
 	{ "name": "sw_data_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw_data_1_V", "role": "din" }} , 
 	{ "name": "sw_data_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_1_V", "role": "full_n" }} , 
 	{ "name": "sw_data_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_1_V", "role": "write" }} , 
 	{ "name": "sw_data_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw_data_2_V", "role": "din" }} , 
 	{ "name": "sw_data_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_2_V", "role": "full_n" }} , 
 	{ "name": "sw_data_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_2_V", "role": "write" }} , 
 	{ "name": "sw_data_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sw_data_3_V", "role": "din" }} , 
 	{ "name": "sw_data_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_3_V", "role": "full_n" }} , 
 	{ "name": "sw_data_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sw_data_3_V", "role": "write" }} , 
 	{ "name": "glblIterIdx", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "glblIterIdx", "role": "default" }} , 
 	{ "name": "cycle_cnt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cycle_cnt", "role": "default" }} , 
 	{ "name": "launch_recv", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "launch_recv", "role": "default" }} , 
 	{ "name": "resWrite", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resWrite", "role": "default" }} , 
 	{ "name": "tmp_dist_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "address0" }} , 
 	{ "name": "tmp_dist_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "ce0" }} , 
 	{ "name": "tmp_dist_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "we0" }} , 
 	{ "name": "tmp_dist_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "d0" }} , 
 	{ "name": "tmp_dist_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_0", "role": "q0" }} , 
 	{ "name": "tmp_dist_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "address0" }} , 
 	{ "name": "tmp_dist_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "ce0" }} , 
 	{ "name": "tmp_dist_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "we0" }} , 
 	{ "name": "tmp_dist_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "d0" }} , 
 	{ "name": "tmp_dist_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_1", "role": "q0" }} , 
 	{ "name": "tmp_dist_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "address0" }} , 
 	{ "name": "tmp_dist_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "ce0" }} , 
 	{ "name": "tmp_dist_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "we0" }} , 
 	{ "name": "tmp_dist_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "d0" }} , 
 	{ "name": "tmp_dist_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_2", "role": "q0" }} , 
 	{ "name": "tmp_dist_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "address0" }} , 
 	{ "name": "tmp_dist_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "ce0" }} , 
 	{ "name": "tmp_dist_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "we0" }} , 
 	{ "name": "tmp_dist_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "d0" }} , 
 	{ "name": "tmp_dist_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_3", "role": "q0" }} , 
 	{ "name": "tmp_dist_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "address0" }} , 
 	{ "name": "tmp_dist_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "ce0" }} , 
 	{ "name": "tmp_dist_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "we0" }} , 
 	{ "name": "tmp_dist_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "d0" }} , 
 	{ "name": "tmp_dist_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_4", "role": "q0" }} , 
 	{ "name": "tmp_dist_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "address0" }} , 
 	{ "name": "tmp_dist_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "ce0" }} , 
 	{ "name": "tmp_dist_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "we0" }} , 
 	{ "name": "tmp_dist_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "d0" }} , 
 	{ "name": "tmp_dist_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_5", "role": "q0" }} , 
 	{ "name": "tmp_dist_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "address0" }} , 
 	{ "name": "tmp_dist_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "ce0" }} , 
 	{ "name": "tmp_dist_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "we0" }} , 
 	{ "name": "tmp_dist_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "d0" }} , 
 	{ "name": "tmp_dist_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_6", "role": "q0" }} , 
 	{ "name": "tmp_dist_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "address0" }} , 
 	{ "name": "tmp_dist_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "ce0" }} , 
 	{ "name": "tmp_dist_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "we0" }} , 
 	{ "name": "tmp_dist_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "d0" }} , 
 	{ "name": "tmp_dist_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_7", "role": "q0" }} , 
 	{ "name": "tmp_dist_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "address0" }} , 
 	{ "name": "tmp_dist_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "ce0" }} , 
 	{ "name": "tmp_dist_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "we0" }} , 
 	{ "name": "tmp_dist_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "d0" }} , 
 	{ "name": "tmp_dist_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_8", "role": "q0" }} , 
 	{ "name": "tmp_dist_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "address0" }} , 
 	{ "name": "tmp_dist_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "ce0" }} , 
 	{ "name": "tmp_dist_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "we0" }} , 
 	{ "name": "tmp_dist_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "d0" }} , 
 	{ "name": "tmp_dist_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_9", "role": "q0" }} , 
 	{ "name": "tmp_dist_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "address0" }} , 
 	{ "name": "tmp_dist_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "ce0" }} , 
 	{ "name": "tmp_dist_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "we0" }} , 
 	{ "name": "tmp_dist_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "d0" }} , 
 	{ "name": "tmp_dist_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_10", "role": "q0" }} , 
 	{ "name": "tmp_dist_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "address0" }} , 
 	{ "name": "tmp_dist_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "ce0" }} , 
 	{ "name": "tmp_dist_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "we0" }} , 
 	{ "name": "tmp_dist_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "d0" }} , 
 	{ "name": "tmp_dist_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_11", "role": "q0" }} , 
 	{ "name": "tmp_dist_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "address0" }} , 
 	{ "name": "tmp_dist_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "ce0" }} , 
 	{ "name": "tmp_dist_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "we0" }} , 
 	{ "name": "tmp_dist_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "d0" }} , 
 	{ "name": "tmp_dist_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_12", "role": "q0" }} , 
 	{ "name": "tmp_dist_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "address0" }} , 
 	{ "name": "tmp_dist_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "ce0" }} , 
 	{ "name": "tmp_dist_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "we0" }} , 
 	{ "name": "tmp_dist_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "d0" }} , 
 	{ "name": "tmp_dist_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_13", "role": "q0" }} , 
 	{ "name": "tmp_dist_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "address0" }} , 
 	{ "name": "tmp_dist_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "ce0" }} , 
 	{ "name": "tmp_dist_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "we0" }} , 
 	{ "name": "tmp_dist_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "d0" }} , 
 	{ "name": "tmp_dist_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_14", "role": "q0" }} , 
 	{ "name": "tmp_dist_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "address0" }} , 
 	{ "name": "tmp_dist_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "ce0" }} , 
 	{ "name": "tmp_dist_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "we0" }} , 
 	{ "name": "tmp_dist_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "d0" }} , 
 	{ "name": "tmp_dist_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_15", "role": "q0" }} , 
 	{ "name": "tmp_dist_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "address0" }} , 
 	{ "name": "tmp_dist_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "ce0" }} , 
 	{ "name": "tmp_dist_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "we0" }} , 
 	{ "name": "tmp_dist_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "d0" }} , 
 	{ "name": "tmp_dist_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_16", "role": "q0" }} , 
 	{ "name": "tmp_dist_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "address0" }} , 
 	{ "name": "tmp_dist_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "ce0" }} , 
 	{ "name": "tmp_dist_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "we0" }} , 
 	{ "name": "tmp_dist_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "d0" }} , 
 	{ "name": "tmp_dist_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_17", "role": "q0" }} , 
 	{ "name": "tmp_dist_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "address0" }} , 
 	{ "name": "tmp_dist_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "ce0" }} , 
 	{ "name": "tmp_dist_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "we0" }} , 
 	{ "name": "tmp_dist_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "d0" }} , 
 	{ "name": "tmp_dist_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_18", "role": "q0" }} , 
 	{ "name": "tmp_dist_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "address0" }} , 
 	{ "name": "tmp_dist_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "ce0" }} , 
 	{ "name": "tmp_dist_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "we0" }} , 
 	{ "name": "tmp_dist_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "d0" }} , 
 	{ "name": "tmp_dist_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_19", "role": "q0" }} , 
 	{ "name": "tmp_dist_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "address0" }} , 
 	{ "name": "tmp_dist_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "ce0" }} , 
 	{ "name": "tmp_dist_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "we0" }} , 
 	{ "name": "tmp_dist_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "d0" }} , 
 	{ "name": "tmp_dist_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_20", "role": "q0" }} , 
 	{ "name": "tmp_dist_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "address0" }} , 
 	{ "name": "tmp_dist_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "ce0" }} , 
 	{ "name": "tmp_dist_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "we0" }} , 
 	{ "name": "tmp_dist_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "d0" }} , 
 	{ "name": "tmp_dist_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_21", "role": "q0" }} , 
 	{ "name": "tmp_dist_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "address0" }} , 
 	{ "name": "tmp_dist_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "ce0" }} , 
 	{ "name": "tmp_dist_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "we0" }} , 
 	{ "name": "tmp_dist_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "d0" }} , 
 	{ "name": "tmp_dist_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_22", "role": "q0" }} , 
 	{ "name": "tmp_dist_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "address0" }} , 
 	{ "name": "tmp_dist_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "ce0" }} , 
 	{ "name": "tmp_dist_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "we0" }} , 
 	{ "name": "tmp_dist_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "d0" }} , 
 	{ "name": "tmp_dist_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_23", "role": "q0" }} , 
 	{ "name": "tmp_dist_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "address0" }} , 
 	{ "name": "tmp_dist_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "ce0" }} , 
 	{ "name": "tmp_dist_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "we0" }} , 
 	{ "name": "tmp_dist_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "d0" }} , 
 	{ "name": "tmp_dist_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_24", "role": "q0" }} , 
 	{ "name": "tmp_dist_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "address0" }} , 
 	{ "name": "tmp_dist_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "ce0" }} , 
 	{ "name": "tmp_dist_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "we0" }} , 
 	{ "name": "tmp_dist_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "d0" }} , 
 	{ "name": "tmp_dist_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_25", "role": "q0" }} , 
 	{ "name": "tmp_dist_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "address0" }} , 
 	{ "name": "tmp_dist_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "ce0" }} , 
 	{ "name": "tmp_dist_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "we0" }} , 
 	{ "name": "tmp_dist_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "d0" }} , 
 	{ "name": "tmp_dist_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_26", "role": "q0" }} , 
 	{ "name": "tmp_dist_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "address0" }} , 
 	{ "name": "tmp_dist_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "ce0" }} , 
 	{ "name": "tmp_dist_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "we0" }} , 
 	{ "name": "tmp_dist_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "d0" }} , 
 	{ "name": "tmp_dist_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_27", "role": "q0" }} , 
 	{ "name": "tmp_dist_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "address0" }} , 
 	{ "name": "tmp_dist_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "ce0" }} , 
 	{ "name": "tmp_dist_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "we0" }} , 
 	{ "name": "tmp_dist_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "d0" }} , 
 	{ "name": "tmp_dist_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_28", "role": "q0" }} , 
 	{ "name": "tmp_dist_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "address0" }} , 
 	{ "name": "tmp_dist_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "ce0" }} , 
 	{ "name": "tmp_dist_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "we0" }} , 
 	{ "name": "tmp_dist_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "d0" }} , 
 	{ "name": "tmp_dist_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_29", "role": "q0" }} , 
 	{ "name": "tmp_dist_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "address0" }} , 
 	{ "name": "tmp_dist_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "ce0" }} , 
 	{ "name": "tmp_dist_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "we0" }} , 
 	{ "name": "tmp_dist_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "d0" }} , 
 	{ "name": "tmp_dist_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_30", "role": "q0" }} , 
 	{ "name": "tmp_dist_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "address0" }} , 
 	{ "name": "tmp_dist_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "ce0" }} , 
 	{ "name": "tmp_dist_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "we0" }} , 
 	{ "name": "tmp_dist_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "d0" }} , 
 	{ "name": "tmp_dist_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_dist_31", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "BFS_Scatter",
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
			{"Name" : "CSR_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "CSR_E", "Type" : "None", "Direction" : "I"},
			{"Name" : "glbl_d", "Type" : "None", "Direction" : "I"},
			{"Name" : "rd_baseAddr", "Type" : "None", "Direction" : "O"},
			{"Name" : "wr_baseAddr", "Type" : "None", "Direction" : "O"},
			{"Name" : "rd_port_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_port_V_data_V"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_port_V_data_V"}]},
			{"Name" : "rd_port_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_port_V_keep_V"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_port_V_keep_V"}]},
			{"Name" : "rd_port_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_port_V_strb_V"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_port_V_strb_V"}]},
			{"Name" : "rd_port_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_port_V_last_V"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_port_V_last_V"}]},
			{"Name" : "wr_port_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "wr_port_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "wr_port_V_data_V"}]},
			{"Name" : "wr_port_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "wr_port_V_keep_V"}]},
			{"Name" : "wr_port_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "wr_port_V_strb_V"}]},
			{"Name" : "wr_port_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "wr_port_V_last_V"}]},
			{"Name" : "rd_req_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_req_V"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_req_V"}]},
			{"Name" : "wr_len", "Type" : "None", "Direction" : "O"},
			{"Name" : "rd_start", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "rd_start"},
					{"ID" : "7", "SubInstance" : "grp_BuffOfst_fu_1491", "Port" : "rd_start"}]},
			{"Name" : "wr_start", "Type" : "None", "Direction" : "O"},
			{"Name" : "N_Vertex", "Type" : "None", "Direction" : "I"},
			{"Name" : "root", "Type" : "None", "Direction" : "I"},
			{"Name" : "peID", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw_data_0_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "sw_data_0_V"}]},
			{"Name" : "sw_data_1_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "sw_data_1_V"}]},
			{"Name" : "sw_data_2_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "sw_data_2_V"}]},
			{"Name" : "sw_data_3_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "sw_data_3_V"}]},
			{"Name" : "glblIterIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "cycle_cnt", "Type" : "None", "Direction" : "I"},
			{"Name" : "launch_recv", "Type" : "None", "Direction" : "O"},
			{"Name" : "resWrite", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_dist_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_0"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_0"}]},
			{"Name" : "tmp_dist_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_1"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_1"}]},
			{"Name" : "tmp_dist_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_2"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_2"}]},
			{"Name" : "tmp_dist_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_3"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_3"}]},
			{"Name" : "tmp_dist_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_4"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_4"}]},
			{"Name" : "tmp_dist_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_5"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_5"}]},
			{"Name" : "tmp_dist_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_6"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_6"}]},
			{"Name" : "tmp_dist_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_7"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_7"}]},
			{"Name" : "tmp_dist_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_8"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_8"}]},
			{"Name" : "tmp_dist_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_9"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_9"}]},
			{"Name" : "tmp_dist_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_10"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_10"}]},
			{"Name" : "tmp_dist_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_11"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_11"}]},
			{"Name" : "tmp_dist_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_12"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_12"}]},
			{"Name" : "tmp_dist_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_13"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_13"}]},
			{"Name" : "tmp_dist_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_14"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_14"}]},
			{"Name" : "tmp_dist_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_15"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_15"}]},
			{"Name" : "tmp_dist_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_16"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_16"}]},
			{"Name" : "tmp_dist_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_17"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_17"}]},
			{"Name" : "tmp_dist_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_18"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_18"}]},
			{"Name" : "tmp_dist_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_19"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_19"}]},
			{"Name" : "tmp_dist_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_20"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_20"}]},
			{"Name" : "tmp_dist_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_21"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_21"}]},
			{"Name" : "tmp_dist_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_22"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_22"}]},
			{"Name" : "tmp_dist_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_23"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_23"}]},
			{"Name" : "tmp_dist_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_24"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_24"}]},
			{"Name" : "tmp_dist_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_25"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_25"}]},
			{"Name" : "tmp_dist_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_26"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_26"}]},
			{"Name" : "tmp_dist_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_27"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_27"}]},
			{"Name" : "tmp_dist_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_28"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_28"}]},
			{"Name" : "tmp_dist_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_29"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_29"}]},
			{"Name" : "tmp_dist_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_30"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_30"}]},
			{"Name" : "tmp_dist_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_WrDist_fu_1314", "Port" : "tmp_dist_31"},
					{"ID" : "6", "SubInstance" : "grp_feed_network_fu_1401", "Port" : "tmp_dist_31"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ofst_buff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_req_buff_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_req_buff_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_WrDist_fu_1314", "Parent" : "0",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gen_access_tuple_fu_1391", "Parent" : "0",
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
			{"Name" : "mem_req_buff", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_feed_network_fu_1401", "Parent" : "0",
		"CDFG" : "feed_network",
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
			{"Name" : "sw_data_0_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sw_data_1_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sw_data_2_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sw_data_3_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sw_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_port_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rd_port_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rd_port_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rd_port_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rd_port_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "n_mem_tuples", "Type" : "None", "Direction" : "I"},
			{"Name" : "mem_req_buff", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BuffOfst_fu_1491", "Parent" : "0",
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
			{"Name" : "size", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rd_port_V_data_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rd_port_V_keep_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rd_port_V_strb_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rd_port_V_last_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_port_V_data_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_port_V_keep_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_port_V_strb_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_wr_port_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	BFS_Scatter {
		CSR_V {Type I LastRead 0 FirstWrite -1}
		CSR_E {Type I LastRead 0 FirstWrite -1}
		glbl_d {Type I LastRead 0 FirstWrite -1}
		rd_baseAddr {Type O LastRead -1 FirstWrite 4}
		wr_baseAddr {Type O LastRead -1 FirstWrite 0}
		rd_port_V_data_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_keep_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_strb_V {Type I LastRead 4 FirstWrite -1}
		rd_port_V_last_V {Type I LastRead 4 FirstWrite -1}
		wr_port_V_data_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_keep_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_strb_V {Type O LastRead -1 FirstWrite 2}
		wr_port_V_last_V {Type O LastRead -1 FirstWrite 2}
		rd_req_V {Type O LastRead -1 FirstWrite 3}
		wr_len {Type O LastRead -1 FirstWrite 1}
		rd_start {Type O LastRead -1 FirstWrite 0}
		wr_start {Type O LastRead -1 FirstWrite 0}
		N_Vertex {Type I LastRead 0 FirstWrite -1}
		root {Type I LastRead 0 FirstWrite -1}
		peID {Type I LastRead 0 FirstWrite -1}
		sw_data_0_V {Type O LastRead -1 FirstWrite 5}
		sw_data_1_V {Type O LastRead -1 FirstWrite 5}
		sw_data_2_V {Type O LastRead -1 FirstWrite 5}
		sw_data_3_V {Type O LastRead -1 FirstWrite 5}
		glblIterIdx {Type I LastRead 0 FirstWrite -1}
		cycle_cnt {Type I LastRead 3 FirstWrite -1}
		launch_recv {Type O LastRead -1 FirstWrite 0}
		resWrite {Type I LastRead 0 FirstWrite -1}
		tmp_dist_0 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_1 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_2 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_3 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_4 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_5 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_6 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_7 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_8 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_9 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_10 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_11 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_12 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_13 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_14 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_15 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_16 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_17 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_18 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_19 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_20 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_21 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_22 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_23 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_24 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_25 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_26 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_27 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_28 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_29 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_30 {Type IO LastRead 3 FirstWrite -1}
		tmp_dist_31 {Type IO LastRead 3 FirstWrite -1}}
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
		idx {Type I LastRead 0 FirstWrite -1}}
	gen_access_tuple {
		ofst_buff {Type I LastRead 3 FirstWrite -1}
		rlt_tail_idx {Type I LastRead 0 FirstWrite -1}
		batchIdx {Type I LastRead 0 FirstWrite -1}
		n_mem_tuples {Type O LastRead -1 FirstWrite 0}
		mem_req_buff {Type O LastRead -1 FirstWrite 6}}
	feed_network {
		rd_req_V {Type O LastRead -1 FirstWrite 3}
		rd_start {Type O LastRead -1 FirstWrite 2}
		tmp_dist_0 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_1 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_2 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_3 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_4 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_5 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_6 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_7 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_8 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_9 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_10 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_11 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_12 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_13 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_14 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_15 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_16 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_17 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_18 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_19 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_20 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_21 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_22 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_23 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_24 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_25 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_26 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_27 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_28 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_29 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_30 {Type I LastRead 3 FirstWrite -1}
		tmp_dist_31 {Type I LastRead 3 FirstWrite -1}
		sw_data_0_V {Type O LastRead -1 FirstWrite 5}
		sw_data_1_V {Type O LastRead -1 FirstWrite 5}
		sw_data_2_V {Type O LastRead -1 FirstWrite 5}
		sw_data_3_V {Type O LastRead -1 FirstWrite 5}
		rd_port_V_data_V {Type I LastRead 3 FirstWrite -1}
		rd_port_V_keep_V {Type I LastRead 3 FirstWrite -1}
		rd_port_V_strb_V {Type I LastRead 3 FirstWrite -1}
		rd_port_V_last_V {Type I LastRead 3 FirstWrite -1}
		n_mem_tuples {Type I LastRead 0 FirstWrite -1}
		mem_req_buff {Type I LastRead 2 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	CSR_V { ap_none {  { CSR_V in_data 0 33 } } }
	CSR_E { ap_none {  { CSR_E in_data 0 33 } } }
	glbl_d { ap_none {  { glbl_d in_data 0 33 } } }
	rd_baseAddr { ap_none {  { rd_baseAddr out_data 1 64 } } }
	wr_baseAddr { ap_none {  { wr_baseAddr out_data 1 64 } } }
	rd_port_V_data_V { axis {  { rd_port_TDATA in_data 0 128 } } }
	rd_port_V_keep_V { axis {  { rd_port_TKEEP in_data 0 16 } } }
	rd_port_V_strb_V { axis {  { rd_port_TSTRB in_data 0 16 } } }
	rd_port_V_last_V { axis {  { rd_port_TVALID in_vld 0 1 }  { rd_port_TREADY in_acc 1 1 }  { rd_port_TLAST in_data 0 1 } } }
	wr_port_V_data_V { axis {  { wr_port_TDATA out_data 1 128 } } }
	wr_port_V_keep_V { axis {  { wr_port_TKEEP out_data 1 16 } } }
	wr_port_V_strb_V { axis {  { wr_port_TSTRB out_data 1 16 } } }
	wr_port_V_last_V { axis {  { wr_port_TVALID out_vld 1 1 }  { wr_port_TREADY out_acc 0 1 }  { wr_port_TLAST out_data 1 1 } } }
	rd_req_V { ap_fifo {  { rd_req_V_din fifo_data 1 32 }  { rd_req_V_full_n fifo_status 0 1 }  { rd_req_V_write fifo_update 1 1 } } }
	wr_len { ap_none {  { wr_len out_data 1 16 } } }
	rd_start { ap_none {  { rd_start out_data 1 1 } } }
	wr_start { ap_none {  { wr_start out_data 1 1 } } }
	N_Vertex { ap_none {  { N_Vertex in_data 0 32 } } }
	root { ap_none {  { root in_data 0 32 } } }
	peID { ap_none {  { peID in_data 0 8 } } }
	sw_data_0_V { ap_fifo {  { sw_data_0_V_din fifo_data 1 32 }  { sw_data_0_V_full_n fifo_status 0 1 }  { sw_data_0_V_write fifo_update 1 1 } } }
	sw_data_1_V { ap_fifo {  { sw_data_1_V_din fifo_data 1 32 }  { sw_data_1_V_full_n fifo_status 0 1 }  { sw_data_1_V_write fifo_update 1 1 } } }
	sw_data_2_V { ap_fifo {  { sw_data_2_V_din fifo_data 1 32 }  { sw_data_2_V_full_n fifo_status 0 1 }  { sw_data_2_V_write fifo_update 1 1 } } }
	sw_data_3_V { ap_fifo {  { sw_data_3_V_din fifo_data 1 32 }  { sw_data_3_V_full_n fifo_status 0 1 }  { sw_data_3_V_write fifo_update 1 1 } } }
	glblIterIdx { ap_none {  { glblIterIdx in_data 0 16 } } }
	cycle_cnt { ap_none {  { cycle_cnt in_data 0 32 } } }
	launch_recv { ap_none {  { launch_recv out_data 1 1 } } }
	resWrite { ap_none {  { resWrite in_data 0 1 } } }
	tmp_dist_0 { ap_memory {  { tmp_dist_0_address0 mem_address 1 12 }  { tmp_dist_0_ce0 mem_ce 1 1 }  { tmp_dist_0_we0 mem_we 1 1 }  { tmp_dist_0_d0 mem_din 1 64 }  { tmp_dist_0_q0 mem_dout 0 64 } } }
	tmp_dist_1 { ap_memory {  { tmp_dist_1_address0 mem_address 1 12 }  { tmp_dist_1_ce0 mem_ce 1 1 }  { tmp_dist_1_we0 mem_we 1 1 }  { tmp_dist_1_d0 mem_din 1 64 }  { tmp_dist_1_q0 mem_dout 0 64 } } }
	tmp_dist_2 { ap_memory {  { tmp_dist_2_address0 mem_address 1 12 }  { tmp_dist_2_ce0 mem_ce 1 1 }  { tmp_dist_2_we0 mem_we 1 1 }  { tmp_dist_2_d0 mem_din 1 64 }  { tmp_dist_2_q0 mem_dout 0 64 } } }
	tmp_dist_3 { ap_memory {  { tmp_dist_3_address0 mem_address 1 12 }  { tmp_dist_3_ce0 mem_ce 1 1 }  { tmp_dist_3_we0 mem_we 1 1 }  { tmp_dist_3_d0 mem_din 1 64 }  { tmp_dist_3_q0 mem_dout 0 64 } } }
	tmp_dist_4 { ap_memory {  { tmp_dist_4_address0 mem_address 1 12 }  { tmp_dist_4_ce0 mem_ce 1 1 }  { tmp_dist_4_we0 mem_we 1 1 }  { tmp_dist_4_d0 mem_din 1 64 }  { tmp_dist_4_q0 mem_dout 0 64 } } }
	tmp_dist_5 { ap_memory {  { tmp_dist_5_address0 mem_address 1 12 }  { tmp_dist_5_ce0 mem_ce 1 1 }  { tmp_dist_5_we0 mem_we 1 1 }  { tmp_dist_5_d0 mem_din 1 64 }  { tmp_dist_5_q0 mem_dout 0 64 } } }
	tmp_dist_6 { ap_memory {  { tmp_dist_6_address0 mem_address 1 12 }  { tmp_dist_6_ce0 mem_ce 1 1 }  { tmp_dist_6_we0 mem_we 1 1 }  { tmp_dist_6_d0 mem_din 1 64 }  { tmp_dist_6_q0 mem_dout 0 64 } } }
	tmp_dist_7 { ap_memory {  { tmp_dist_7_address0 mem_address 1 12 }  { tmp_dist_7_ce0 mem_ce 1 1 }  { tmp_dist_7_we0 mem_we 1 1 }  { tmp_dist_7_d0 mem_din 1 64 }  { tmp_dist_7_q0 mem_dout 0 64 } } }
	tmp_dist_8 { ap_memory {  { tmp_dist_8_address0 mem_address 1 12 }  { tmp_dist_8_ce0 mem_ce 1 1 }  { tmp_dist_8_we0 mem_we 1 1 }  { tmp_dist_8_d0 mem_din 1 64 }  { tmp_dist_8_q0 mem_dout 0 64 } } }
	tmp_dist_9 { ap_memory {  { tmp_dist_9_address0 mem_address 1 12 }  { tmp_dist_9_ce0 mem_ce 1 1 }  { tmp_dist_9_we0 mem_we 1 1 }  { tmp_dist_9_d0 mem_din 1 64 }  { tmp_dist_9_q0 mem_dout 0 64 } } }
	tmp_dist_10 { ap_memory {  { tmp_dist_10_address0 mem_address 1 12 }  { tmp_dist_10_ce0 mem_ce 1 1 }  { tmp_dist_10_we0 mem_we 1 1 }  { tmp_dist_10_d0 mem_din 1 64 }  { tmp_dist_10_q0 mem_dout 0 64 } } }
	tmp_dist_11 { ap_memory {  { tmp_dist_11_address0 mem_address 1 12 }  { tmp_dist_11_ce0 mem_ce 1 1 }  { tmp_dist_11_we0 mem_we 1 1 }  { tmp_dist_11_d0 mem_din 1 64 }  { tmp_dist_11_q0 mem_dout 0 64 } } }
	tmp_dist_12 { ap_memory {  { tmp_dist_12_address0 mem_address 1 12 }  { tmp_dist_12_ce0 mem_ce 1 1 }  { tmp_dist_12_we0 mem_we 1 1 }  { tmp_dist_12_d0 mem_din 1 64 }  { tmp_dist_12_q0 mem_dout 0 64 } } }
	tmp_dist_13 { ap_memory {  { tmp_dist_13_address0 mem_address 1 12 }  { tmp_dist_13_ce0 mem_ce 1 1 }  { tmp_dist_13_we0 mem_we 1 1 }  { tmp_dist_13_d0 mem_din 1 64 }  { tmp_dist_13_q0 mem_dout 0 64 } } }
	tmp_dist_14 { ap_memory {  { tmp_dist_14_address0 mem_address 1 12 }  { tmp_dist_14_ce0 mem_ce 1 1 }  { tmp_dist_14_we0 mem_we 1 1 }  { tmp_dist_14_d0 mem_din 1 64 }  { tmp_dist_14_q0 mem_dout 0 64 } } }
	tmp_dist_15 { ap_memory {  { tmp_dist_15_address0 mem_address 1 12 }  { tmp_dist_15_ce0 mem_ce 1 1 }  { tmp_dist_15_we0 mem_we 1 1 }  { tmp_dist_15_d0 mem_din 1 64 }  { tmp_dist_15_q0 mem_dout 0 64 } } }
	tmp_dist_16 { ap_memory {  { tmp_dist_16_address0 mem_address 1 12 }  { tmp_dist_16_ce0 mem_ce 1 1 }  { tmp_dist_16_we0 mem_we 1 1 }  { tmp_dist_16_d0 mem_din 1 64 }  { tmp_dist_16_q0 mem_dout 0 64 } } }
	tmp_dist_17 { ap_memory {  { tmp_dist_17_address0 mem_address 1 12 }  { tmp_dist_17_ce0 mem_ce 1 1 }  { tmp_dist_17_we0 mem_we 1 1 }  { tmp_dist_17_d0 mem_din 1 64 }  { tmp_dist_17_q0 mem_dout 0 64 } } }
	tmp_dist_18 { ap_memory {  { tmp_dist_18_address0 mem_address 1 12 }  { tmp_dist_18_ce0 mem_ce 1 1 }  { tmp_dist_18_we0 mem_we 1 1 }  { tmp_dist_18_d0 mem_din 1 64 }  { tmp_dist_18_q0 mem_dout 0 64 } } }
	tmp_dist_19 { ap_memory {  { tmp_dist_19_address0 mem_address 1 12 }  { tmp_dist_19_ce0 mem_ce 1 1 }  { tmp_dist_19_we0 mem_we 1 1 }  { tmp_dist_19_d0 mem_din 1 64 }  { tmp_dist_19_q0 mem_dout 0 64 } } }
	tmp_dist_20 { ap_memory {  { tmp_dist_20_address0 mem_address 1 12 }  { tmp_dist_20_ce0 mem_ce 1 1 }  { tmp_dist_20_we0 mem_we 1 1 }  { tmp_dist_20_d0 mem_din 1 64 }  { tmp_dist_20_q0 mem_dout 0 64 } } }
	tmp_dist_21 { ap_memory {  { tmp_dist_21_address0 mem_address 1 12 }  { tmp_dist_21_ce0 mem_ce 1 1 }  { tmp_dist_21_we0 mem_we 1 1 }  { tmp_dist_21_d0 mem_din 1 64 }  { tmp_dist_21_q0 mem_dout 0 64 } } }
	tmp_dist_22 { ap_memory {  { tmp_dist_22_address0 mem_address 1 12 }  { tmp_dist_22_ce0 mem_ce 1 1 }  { tmp_dist_22_we0 mem_we 1 1 }  { tmp_dist_22_d0 mem_din 1 64 }  { tmp_dist_22_q0 mem_dout 0 64 } } }
	tmp_dist_23 { ap_memory {  { tmp_dist_23_address0 mem_address 1 12 }  { tmp_dist_23_ce0 mem_ce 1 1 }  { tmp_dist_23_we0 mem_we 1 1 }  { tmp_dist_23_d0 mem_din 1 64 }  { tmp_dist_23_q0 mem_dout 0 64 } } }
	tmp_dist_24 { ap_memory {  { tmp_dist_24_address0 mem_address 1 12 }  { tmp_dist_24_ce0 mem_ce 1 1 }  { tmp_dist_24_we0 mem_we 1 1 }  { tmp_dist_24_d0 mem_din 1 64 }  { tmp_dist_24_q0 mem_dout 0 64 } } }
	tmp_dist_25 { ap_memory {  { tmp_dist_25_address0 mem_address 1 12 }  { tmp_dist_25_ce0 mem_ce 1 1 }  { tmp_dist_25_we0 mem_we 1 1 }  { tmp_dist_25_d0 mem_din 1 64 }  { tmp_dist_25_q0 mem_dout 0 64 } } }
	tmp_dist_26 { ap_memory {  { tmp_dist_26_address0 mem_address 1 12 }  { tmp_dist_26_ce0 mem_ce 1 1 }  { tmp_dist_26_we0 mem_we 1 1 }  { tmp_dist_26_d0 mem_din 1 64 }  { tmp_dist_26_q0 mem_dout 0 64 } } }
	tmp_dist_27 { ap_memory {  { tmp_dist_27_address0 mem_address 1 12 }  { tmp_dist_27_ce0 mem_ce 1 1 }  { tmp_dist_27_we0 mem_we 1 1 }  { tmp_dist_27_d0 mem_din 1 64 }  { tmp_dist_27_q0 mem_dout 0 64 } } }
	tmp_dist_28 { ap_memory {  { tmp_dist_28_address0 mem_address 1 12 }  { tmp_dist_28_ce0 mem_ce 1 1 }  { tmp_dist_28_we0 mem_we 1 1 }  { tmp_dist_28_d0 mem_din 1 64 }  { tmp_dist_28_q0 mem_dout 0 64 } } }
	tmp_dist_29 { ap_memory {  { tmp_dist_29_address0 mem_address 1 12 }  { tmp_dist_29_ce0 mem_ce 1 1 }  { tmp_dist_29_we0 mem_we 1 1 }  { tmp_dist_29_d0 mem_din 1 64 }  { tmp_dist_29_q0 mem_dout 0 64 } } }
	tmp_dist_30 { ap_memory {  { tmp_dist_30_address0 mem_address 1 12 }  { tmp_dist_30_ce0 mem_ce 1 1 }  { tmp_dist_30_we0 mem_we 1 1 }  { tmp_dist_30_d0 mem_din 1 64 }  { tmp_dist_30_q0 mem_dout 0 64 } } }
	tmp_dist_31 { ap_memory {  { tmp_dist_31_address0 mem_address 1 12 }  { tmp_dist_31_ce0 mem_ce 1 1 }  { tmp_dist_31_we0 mem_we 1 1 }  { tmp_dist_31_d0 mem_din 1 64 }  { tmp_dist_31_q0 mem_dout 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	rd_req_V { fifo_write 5 has_conditional }
	sw_data_0_V { fifo_write 4 has_conditional }
	sw_data_1_V { fifo_write 4 has_conditional }
	sw_data_2_V { fifo_write 4 has_conditional }
	sw_data_3_V { fifo_write 4 has_conditional }
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
