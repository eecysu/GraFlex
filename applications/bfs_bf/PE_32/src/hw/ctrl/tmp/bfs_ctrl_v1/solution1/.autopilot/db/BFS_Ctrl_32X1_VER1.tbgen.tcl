set moduleName BFS_Ctrl_32X1_VER1
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
set C_modelName {BFS_Ctrl_32X1_VER1}
set C_modelType { void 0 }
set C_modelArgList {
	{ dummyParam int 1 regular {pointer 0 volatile }  }
	{ N_Vertex int 32 regular  }
	{ resWrite int 1 regular {pointer 1 volatile }  }
	{ glblIterIdx int 16 regular {pointer 1}  }
	{ cnt_scatter_0 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_1 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_2 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_3 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_4 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_5 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_6 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_7 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_8 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_9 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_10 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_11 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_12 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_13 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_14 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_15 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_16 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_17 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_18 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_19 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_20 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_21 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_22 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_23 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_24 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_25 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_26 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_27 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_28 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_29 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_30 int 32 regular {pointer 0 volatile }  }
	{ cnt_scatter_31 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_0 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_1 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_2 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_3 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_4 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_5 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_6 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_7 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_8 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_9 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_10 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_11 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_12 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_13 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_14 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_15 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_16 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_17 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_18 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_19 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_20 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_21 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_22 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_23 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_24 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_25 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_26 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_27 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_28 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_29 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_30 int 32 regular {pointer 0 volatile }  }
	{ cnt_gather_31 int 32 regular {pointer 0 volatile }  }
	{ exist_0 int 1 regular {pointer 0 volatile }  }
	{ exist_1 int 1 regular {pointer 0 volatile }  }
	{ exist_2 int 1 regular {pointer 0 volatile }  }
	{ exist_3 int 1 regular {pointer 0 volatile }  }
	{ exist_4 int 1 regular {pointer 0 volatile }  }
	{ exist_5 int 1 regular {pointer 0 volatile }  }
	{ exist_6 int 1 regular {pointer 0 volatile }  }
	{ exist_7 int 1 regular {pointer 0 volatile }  }
	{ exist_8 int 1 regular {pointer 0 volatile }  }
	{ exist_9 int 1 regular {pointer 0 volatile }  }
	{ exist_10 int 1 regular {pointer 0 volatile }  }
	{ exist_11 int 1 regular {pointer 0 volatile }  }
	{ exist_12 int 1 regular {pointer 0 volatile }  }
	{ exist_13 int 1 regular {pointer 0 volatile }  }
	{ exist_14 int 1 regular {pointer 0 volatile }  }
	{ exist_15 int 1 regular {pointer 0 volatile }  }
	{ exist_16 int 1 regular {pointer 0 volatile }  }
	{ exist_17 int 1 regular {pointer 0 volatile }  }
	{ exist_18 int 1 regular {pointer 0 volatile }  }
	{ exist_19 int 1 regular {pointer 0 volatile }  }
	{ exist_20 int 1 regular {pointer 0 volatile }  }
	{ exist_21 int 1 regular {pointer 0 volatile }  }
	{ exist_22 int 1 regular {pointer 0 volatile }  }
	{ exist_23 int 1 regular {pointer 0 volatile }  }
	{ exist_24 int 1 regular {pointer 0 volatile }  }
	{ exist_25 int 1 regular {pointer 0 volatile }  }
	{ exist_26 int 1 regular {pointer 0 volatile }  }
	{ exist_27 int 1 regular {pointer 0 volatile }  }
	{ exist_28 int 1 regular {pointer 0 volatile }  }
	{ exist_29 int 1 regular {pointer 0 volatile }  }
	{ exist_30 int 1 regular {pointer 0 volatile }  }
	{ exist_31 int 1 regular {pointer 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dummyParam", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dummyParam","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "N_Vertex", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "N_Vertex","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "resWrite", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "resWrite","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "glblIterIdx", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "glblIterIdx","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_0","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_1","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_2","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_3","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_4","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_5","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_6","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_7","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_8","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_9","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_10","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_11","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_12","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_13","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_14","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_15","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_16","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_17","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_18","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_19","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_20","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_21","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_22","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_23","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_24","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_25","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_26","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_27","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_28","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_29","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_30","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_scatter_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_scatter_31","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_0","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_1","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_2","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_3","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_4","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_5","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_6","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_7","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_8","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_9","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_10","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_11","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_12","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_13","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_14","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_15","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_16","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_17","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_18","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_19","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_20","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_21","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_22","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_23","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_24","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_25","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_26","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_27","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_28","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_29","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_30","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cnt_gather_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cnt_gather_31","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_0","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_1","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_2","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_3","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_4","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_5","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_6","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_7","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_8","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_9","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_10","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_11","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_12","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_13", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_13","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_14", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_14","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_15", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_15","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_16", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_16","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_17", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_17","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_18", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_18","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_19", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_19","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_20", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_20","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_21", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_21","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_22","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_23", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_23","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_24", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_24","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_25", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_25","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_26", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_26","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_27", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_27","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_28", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_28","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_29", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_29","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_30", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_30","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "exist_31", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "exist_31","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 106
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
	{ cnt_scatter_2 sc_in sc_lv 32 signal 6 } 
	{ cnt_scatter_3 sc_in sc_lv 32 signal 7 } 
	{ cnt_scatter_4 sc_in sc_lv 32 signal 8 } 
	{ cnt_scatter_5 sc_in sc_lv 32 signal 9 } 
	{ cnt_scatter_6 sc_in sc_lv 32 signal 10 } 
	{ cnt_scatter_7 sc_in sc_lv 32 signal 11 } 
	{ cnt_scatter_8 sc_in sc_lv 32 signal 12 } 
	{ cnt_scatter_9 sc_in sc_lv 32 signal 13 } 
	{ cnt_scatter_10 sc_in sc_lv 32 signal 14 } 
	{ cnt_scatter_11 sc_in sc_lv 32 signal 15 } 
	{ cnt_scatter_12 sc_in sc_lv 32 signal 16 } 
	{ cnt_scatter_13 sc_in sc_lv 32 signal 17 } 
	{ cnt_scatter_14 sc_in sc_lv 32 signal 18 } 
	{ cnt_scatter_15 sc_in sc_lv 32 signal 19 } 
	{ cnt_scatter_16 sc_in sc_lv 32 signal 20 } 
	{ cnt_scatter_17 sc_in sc_lv 32 signal 21 } 
	{ cnt_scatter_18 sc_in sc_lv 32 signal 22 } 
	{ cnt_scatter_19 sc_in sc_lv 32 signal 23 } 
	{ cnt_scatter_20 sc_in sc_lv 32 signal 24 } 
	{ cnt_scatter_21 sc_in sc_lv 32 signal 25 } 
	{ cnt_scatter_22 sc_in sc_lv 32 signal 26 } 
	{ cnt_scatter_23 sc_in sc_lv 32 signal 27 } 
	{ cnt_scatter_24 sc_in sc_lv 32 signal 28 } 
	{ cnt_scatter_25 sc_in sc_lv 32 signal 29 } 
	{ cnt_scatter_26 sc_in sc_lv 32 signal 30 } 
	{ cnt_scatter_27 sc_in sc_lv 32 signal 31 } 
	{ cnt_scatter_28 sc_in sc_lv 32 signal 32 } 
	{ cnt_scatter_29 sc_in sc_lv 32 signal 33 } 
	{ cnt_scatter_30 sc_in sc_lv 32 signal 34 } 
	{ cnt_scatter_31 sc_in sc_lv 32 signal 35 } 
	{ cnt_gather_0 sc_in sc_lv 32 signal 36 } 
	{ cnt_gather_1 sc_in sc_lv 32 signal 37 } 
	{ cnt_gather_2 sc_in sc_lv 32 signal 38 } 
	{ cnt_gather_3 sc_in sc_lv 32 signal 39 } 
	{ cnt_gather_4 sc_in sc_lv 32 signal 40 } 
	{ cnt_gather_5 sc_in sc_lv 32 signal 41 } 
	{ cnt_gather_6 sc_in sc_lv 32 signal 42 } 
	{ cnt_gather_7 sc_in sc_lv 32 signal 43 } 
	{ cnt_gather_8 sc_in sc_lv 32 signal 44 } 
	{ cnt_gather_9 sc_in sc_lv 32 signal 45 } 
	{ cnt_gather_10 sc_in sc_lv 32 signal 46 } 
	{ cnt_gather_11 sc_in sc_lv 32 signal 47 } 
	{ cnt_gather_12 sc_in sc_lv 32 signal 48 } 
	{ cnt_gather_13 sc_in sc_lv 32 signal 49 } 
	{ cnt_gather_14 sc_in sc_lv 32 signal 50 } 
	{ cnt_gather_15 sc_in sc_lv 32 signal 51 } 
	{ cnt_gather_16 sc_in sc_lv 32 signal 52 } 
	{ cnt_gather_17 sc_in sc_lv 32 signal 53 } 
	{ cnt_gather_18 sc_in sc_lv 32 signal 54 } 
	{ cnt_gather_19 sc_in sc_lv 32 signal 55 } 
	{ cnt_gather_20 sc_in sc_lv 32 signal 56 } 
	{ cnt_gather_21 sc_in sc_lv 32 signal 57 } 
	{ cnt_gather_22 sc_in sc_lv 32 signal 58 } 
	{ cnt_gather_23 sc_in sc_lv 32 signal 59 } 
	{ cnt_gather_24 sc_in sc_lv 32 signal 60 } 
	{ cnt_gather_25 sc_in sc_lv 32 signal 61 } 
	{ cnt_gather_26 sc_in sc_lv 32 signal 62 } 
	{ cnt_gather_27 sc_in sc_lv 32 signal 63 } 
	{ cnt_gather_28 sc_in sc_lv 32 signal 64 } 
	{ cnt_gather_29 sc_in sc_lv 32 signal 65 } 
	{ cnt_gather_30 sc_in sc_lv 32 signal 66 } 
	{ cnt_gather_31 sc_in sc_lv 32 signal 67 } 
	{ exist_0 sc_in sc_logic 1 signal 68 } 
	{ exist_1 sc_in sc_logic 1 signal 69 } 
	{ exist_2 sc_in sc_logic 1 signal 70 } 
	{ exist_3 sc_in sc_logic 1 signal 71 } 
	{ exist_4 sc_in sc_logic 1 signal 72 } 
	{ exist_5 sc_in sc_logic 1 signal 73 } 
	{ exist_6 sc_in sc_logic 1 signal 74 } 
	{ exist_7 sc_in sc_logic 1 signal 75 } 
	{ exist_8 sc_in sc_logic 1 signal 76 } 
	{ exist_9 sc_in sc_logic 1 signal 77 } 
	{ exist_10 sc_in sc_logic 1 signal 78 } 
	{ exist_11 sc_in sc_logic 1 signal 79 } 
	{ exist_12 sc_in sc_logic 1 signal 80 } 
	{ exist_13 sc_in sc_logic 1 signal 81 } 
	{ exist_14 sc_in sc_logic 1 signal 82 } 
	{ exist_15 sc_in sc_logic 1 signal 83 } 
	{ exist_16 sc_in sc_logic 1 signal 84 } 
	{ exist_17 sc_in sc_logic 1 signal 85 } 
	{ exist_18 sc_in sc_logic 1 signal 86 } 
	{ exist_19 sc_in sc_logic 1 signal 87 } 
	{ exist_20 sc_in sc_logic 1 signal 88 } 
	{ exist_21 sc_in sc_logic 1 signal 89 } 
	{ exist_22 sc_in sc_logic 1 signal 90 } 
	{ exist_23 sc_in sc_logic 1 signal 91 } 
	{ exist_24 sc_in sc_logic 1 signal 92 } 
	{ exist_25 sc_in sc_logic 1 signal 93 } 
	{ exist_26 sc_in sc_logic 1 signal 94 } 
	{ exist_27 sc_in sc_logic 1 signal 95 } 
	{ exist_28 sc_in sc_logic 1 signal 96 } 
	{ exist_29 sc_in sc_logic 1 signal 97 } 
	{ exist_30 sc_in sc_logic 1 signal 98 } 
	{ exist_31 sc_in sc_logic 1 signal 99 } 
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
 	{ "name": "cnt_scatter_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_2", "role": "default" }} , 
 	{ "name": "cnt_scatter_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_3", "role": "default" }} , 
 	{ "name": "cnt_scatter_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_4", "role": "default" }} , 
 	{ "name": "cnt_scatter_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_5", "role": "default" }} , 
 	{ "name": "cnt_scatter_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_6", "role": "default" }} , 
 	{ "name": "cnt_scatter_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_7", "role": "default" }} , 
 	{ "name": "cnt_scatter_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_8", "role": "default" }} , 
 	{ "name": "cnt_scatter_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_9", "role": "default" }} , 
 	{ "name": "cnt_scatter_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_10", "role": "default" }} , 
 	{ "name": "cnt_scatter_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_11", "role": "default" }} , 
 	{ "name": "cnt_scatter_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_12", "role": "default" }} , 
 	{ "name": "cnt_scatter_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_13", "role": "default" }} , 
 	{ "name": "cnt_scatter_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_14", "role": "default" }} , 
 	{ "name": "cnt_scatter_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_15", "role": "default" }} , 
 	{ "name": "cnt_scatter_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_16", "role": "default" }} , 
 	{ "name": "cnt_scatter_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_17", "role": "default" }} , 
 	{ "name": "cnt_scatter_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_18", "role": "default" }} , 
 	{ "name": "cnt_scatter_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_19", "role": "default" }} , 
 	{ "name": "cnt_scatter_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_20", "role": "default" }} , 
 	{ "name": "cnt_scatter_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_21", "role": "default" }} , 
 	{ "name": "cnt_scatter_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_22", "role": "default" }} , 
 	{ "name": "cnt_scatter_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_23", "role": "default" }} , 
 	{ "name": "cnt_scatter_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_24", "role": "default" }} , 
 	{ "name": "cnt_scatter_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_25", "role": "default" }} , 
 	{ "name": "cnt_scatter_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_26", "role": "default" }} , 
 	{ "name": "cnt_scatter_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_27", "role": "default" }} , 
 	{ "name": "cnt_scatter_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_28", "role": "default" }} , 
 	{ "name": "cnt_scatter_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_29", "role": "default" }} , 
 	{ "name": "cnt_scatter_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_30", "role": "default" }} , 
 	{ "name": "cnt_scatter_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_scatter_31", "role": "default" }} , 
 	{ "name": "cnt_gather_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_0", "role": "default" }} , 
 	{ "name": "cnt_gather_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_1", "role": "default" }} , 
 	{ "name": "cnt_gather_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_2", "role": "default" }} , 
 	{ "name": "cnt_gather_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_3", "role": "default" }} , 
 	{ "name": "cnt_gather_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_4", "role": "default" }} , 
 	{ "name": "cnt_gather_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_5", "role": "default" }} , 
 	{ "name": "cnt_gather_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_6", "role": "default" }} , 
 	{ "name": "cnt_gather_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_7", "role": "default" }} , 
 	{ "name": "cnt_gather_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_8", "role": "default" }} , 
 	{ "name": "cnt_gather_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_9", "role": "default" }} , 
 	{ "name": "cnt_gather_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_10", "role": "default" }} , 
 	{ "name": "cnt_gather_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_11", "role": "default" }} , 
 	{ "name": "cnt_gather_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_12", "role": "default" }} , 
 	{ "name": "cnt_gather_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_13", "role": "default" }} , 
 	{ "name": "cnt_gather_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_14", "role": "default" }} , 
 	{ "name": "cnt_gather_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_15", "role": "default" }} , 
 	{ "name": "cnt_gather_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_16", "role": "default" }} , 
 	{ "name": "cnt_gather_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_17", "role": "default" }} , 
 	{ "name": "cnt_gather_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_18", "role": "default" }} , 
 	{ "name": "cnt_gather_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_19", "role": "default" }} , 
 	{ "name": "cnt_gather_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_20", "role": "default" }} , 
 	{ "name": "cnt_gather_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_21", "role": "default" }} , 
 	{ "name": "cnt_gather_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_22", "role": "default" }} , 
 	{ "name": "cnt_gather_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_23", "role": "default" }} , 
 	{ "name": "cnt_gather_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_24", "role": "default" }} , 
 	{ "name": "cnt_gather_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_25", "role": "default" }} , 
 	{ "name": "cnt_gather_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_26", "role": "default" }} , 
 	{ "name": "cnt_gather_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_27", "role": "default" }} , 
 	{ "name": "cnt_gather_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_28", "role": "default" }} , 
 	{ "name": "cnt_gather_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_29", "role": "default" }} , 
 	{ "name": "cnt_gather_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_30", "role": "default" }} , 
 	{ "name": "cnt_gather_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnt_gather_31", "role": "default" }} , 
 	{ "name": "exist_0", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_0", "role": "default" }} , 
 	{ "name": "exist_1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_1", "role": "default" }} , 
 	{ "name": "exist_2", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_2", "role": "default" }} , 
 	{ "name": "exist_3", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_3", "role": "default" }} , 
 	{ "name": "exist_4", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_4", "role": "default" }} , 
 	{ "name": "exist_5", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_5", "role": "default" }} , 
 	{ "name": "exist_6", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_6", "role": "default" }} , 
 	{ "name": "exist_7", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_7", "role": "default" }} , 
 	{ "name": "exist_8", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_8", "role": "default" }} , 
 	{ "name": "exist_9", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_9", "role": "default" }} , 
 	{ "name": "exist_10", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_10", "role": "default" }} , 
 	{ "name": "exist_11", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_11", "role": "default" }} , 
 	{ "name": "exist_12", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_12", "role": "default" }} , 
 	{ "name": "exist_13", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_13", "role": "default" }} , 
 	{ "name": "exist_14", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_14", "role": "default" }} , 
 	{ "name": "exist_15", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_15", "role": "default" }} , 
 	{ "name": "exist_16", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_16", "role": "default" }} , 
 	{ "name": "exist_17", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_17", "role": "default" }} , 
 	{ "name": "exist_18", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_18", "role": "default" }} , 
 	{ "name": "exist_19", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_19", "role": "default" }} , 
 	{ "name": "exist_20", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_20", "role": "default" }} , 
 	{ "name": "exist_21", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_21", "role": "default" }} , 
 	{ "name": "exist_22", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_22", "role": "default" }} , 
 	{ "name": "exist_23", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_23", "role": "default" }} , 
 	{ "name": "exist_24", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_24", "role": "default" }} , 
 	{ "name": "exist_25", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_25", "role": "default" }} , 
 	{ "name": "exist_26", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_26", "role": "default" }} , 
 	{ "name": "exist_27", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_27", "role": "default" }} , 
 	{ "name": "exist_28", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_28", "role": "default" }} , 
 	{ "name": "exist_29", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_29", "role": "default" }} , 
 	{ "name": "exist_30", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_30", "role": "default" }} , 
 	{ "name": "exist_31", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "exist_31", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "BFS_Ctrl_32X1_VER1",
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
					{"ID" : "1", "SubInstance" : "grp_BFS_PE_fu_862", "Port" : "dummyParam"}]},
			{"Name" : "N_Vertex", "Type" : "None", "Direction" : "I"},
			{"Name" : "resWrite", "Type" : "None", "Direction" : "O"},
			{"Name" : "glblIterIdx", "Type" : "None", "Direction" : "O"},
			{"Name" : "cnt_scatter_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_scatter_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt_gather_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "exist_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "iterIdx", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BFS_PE_fu_862", "Parent" : "0",
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
	BFS_Ctrl_32X1_VER1 {
		dummyParam {Type I LastRead 1 FirstWrite -1}
		N_Vertex {Type I LastRead 1 FirstWrite -1}
		resWrite {Type O LastRead -1 FirstWrite 0}
		glblIterIdx {Type O LastRead -1 FirstWrite 2}
		cnt_scatter_0 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_1 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_2 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_3 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_4 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_5 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_6 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_7 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_8 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_9 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_10 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_11 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_12 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_13 {Type I LastRead 5 FirstWrite -1}
		cnt_scatter_14 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_15 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_16 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_17 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_18 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_19 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_20 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_21 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_22 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_23 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_24 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_25 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_26 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_27 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_28 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_29 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_30 {Type I LastRead 4 FirstWrite -1}
		cnt_scatter_31 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_0 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_1 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_2 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_3 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_4 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_5 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_6 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_7 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_8 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_9 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_10 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_11 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_12 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_13 {Type I LastRead 5 FirstWrite -1}
		cnt_gather_14 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_15 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_16 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_17 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_18 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_19 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_20 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_21 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_22 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_23 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_24 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_25 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_26 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_27 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_28 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_29 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_30 {Type I LastRead 4 FirstWrite -1}
		cnt_gather_31 {Type I LastRead 4 FirstWrite -1}
		exist_0 {Type I LastRead 6 FirstWrite -1}
		exist_1 {Type I LastRead 6 FirstWrite -1}
		exist_2 {Type I LastRead 6 FirstWrite -1}
		exist_3 {Type I LastRead 6 FirstWrite -1}
		exist_4 {Type I LastRead 6 FirstWrite -1}
		exist_5 {Type I LastRead 6 FirstWrite -1}
		exist_6 {Type I LastRead 6 FirstWrite -1}
		exist_7 {Type I LastRead 6 FirstWrite -1}
		exist_8 {Type I LastRead 6 FirstWrite -1}
		exist_9 {Type I LastRead 6 FirstWrite -1}
		exist_10 {Type I LastRead 6 FirstWrite -1}
		exist_11 {Type I LastRead 6 FirstWrite -1}
		exist_12 {Type I LastRead 6 FirstWrite -1}
		exist_13 {Type I LastRead 6 FirstWrite -1}
		exist_14 {Type I LastRead 6 FirstWrite -1}
		exist_15 {Type I LastRead 6 FirstWrite -1}
		exist_16 {Type I LastRead 6 FirstWrite -1}
		exist_17 {Type I LastRead 6 FirstWrite -1}
		exist_18 {Type I LastRead 6 FirstWrite -1}
		exist_19 {Type I LastRead 6 FirstWrite -1}
		exist_20 {Type I LastRead 6 FirstWrite -1}
		exist_21 {Type I LastRead 6 FirstWrite -1}
		exist_22 {Type I LastRead 6 FirstWrite -1}
		exist_23 {Type I LastRead 6 FirstWrite -1}
		exist_24 {Type I LastRead 6 FirstWrite -1}
		exist_25 {Type I LastRead 6 FirstWrite -1}
		exist_26 {Type I LastRead 6 FirstWrite -1}
		exist_27 {Type I LastRead 6 FirstWrite -1}
		exist_28 {Type I LastRead 6 FirstWrite -1}
		exist_29 {Type I LastRead 6 FirstWrite -1}
		exist_30 {Type I LastRead 6 FirstWrite -1}
		exist_31 {Type I LastRead 6 FirstWrite -1}
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
	cnt_scatter_2 { ap_none {  { cnt_scatter_2 in_data 0 32 } } }
	cnt_scatter_3 { ap_none {  { cnt_scatter_3 in_data 0 32 } } }
	cnt_scatter_4 { ap_none {  { cnt_scatter_4 in_data 0 32 } } }
	cnt_scatter_5 { ap_none {  { cnt_scatter_5 in_data 0 32 } } }
	cnt_scatter_6 { ap_none {  { cnt_scatter_6 in_data 0 32 } } }
	cnt_scatter_7 { ap_none {  { cnt_scatter_7 in_data 0 32 } } }
	cnt_scatter_8 { ap_none {  { cnt_scatter_8 in_data 0 32 } } }
	cnt_scatter_9 { ap_none {  { cnt_scatter_9 in_data 0 32 } } }
	cnt_scatter_10 { ap_none {  { cnt_scatter_10 in_data 0 32 } } }
	cnt_scatter_11 { ap_none {  { cnt_scatter_11 in_data 0 32 } } }
	cnt_scatter_12 { ap_none {  { cnt_scatter_12 in_data 0 32 } } }
	cnt_scatter_13 { ap_none {  { cnt_scatter_13 in_data 0 32 } } }
	cnt_scatter_14 { ap_none {  { cnt_scatter_14 in_data 0 32 } } }
	cnt_scatter_15 { ap_none {  { cnt_scatter_15 in_data 0 32 } } }
	cnt_scatter_16 { ap_none {  { cnt_scatter_16 in_data 0 32 } } }
	cnt_scatter_17 { ap_none {  { cnt_scatter_17 in_data 0 32 } } }
	cnt_scatter_18 { ap_none {  { cnt_scatter_18 in_data 0 32 } } }
	cnt_scatter_19 { ap_none {  { cnt_scatter_19 in_data 0 32 } } }
	cnt_scatter_20 { ap_none {  { cnt_scatter_20 in_data 0 32 } } }
	cnt_scatter_21 { ap_none {  { cnt_scatter_21 in_data 0 32 } } }
	cnt_scatter_22 { ap_none {  { cnt_scatter_22 in_data 0 32 } } }
	cnt_scatter_23 { ap_none {  { cnt_scatter_23 in_data 0 32 } } }
	cnt_scatter_24 { ap_none {  { cnt_scatter_24 in_data 0 32 } } }
	cnt_scatter_25 { ap_none {  { cnt_scatter_25 in_data 0 32 } } }
	cnt_scatter_26 { ap_none {  { cnt_scatter_26 in_data 0 32 } } }
	cnt_scatter_27 { ap_none {  { cnt_scatter_27 in_data 0 32 } } }
	cnt_scatter_28 { ap_none {  { cnt_scatter_28 in_data 0 32 } } }
	cnt_scatter_29 { ap_none {  { cnt_scatter_29 in_data 0 32 } } }
	cnt_scatter_30 { ap_none {  { cnt_scatter_30 in_data 0 32 } } }
	cnt_scatter_31 { ap_none {  { cnt_scatter_31 in_data 0 32 } } }
	cnt_gather_0 { ap_none {  { cnt_gather_0 in_data 0 32 } } }
	cnt_gather_1 { ap_none {  { cnt_gather_1 in_data 0 32 } } }
	cnt_gather_2 { ap_none {  { cnt_gather_2 in_data 0 32 } } }
	cnt_gather_3 { ap_none {  { cnt_gather_3 in_data 0 32 } } }
	cnt_gather_4 { ap_none {  { cnt_gather_4 in_data 0 32 } } }
	cnt_gather_5 { ap_none {  { cnt_gather_5 in_data 0 32 } } }
	cnt_gather_6 { ap_none {  { cnt_gather_6 in_data 0 32 } } }
	cnt_gather_7 { ap_none {  { cnt_gather_7 in_data 0 32 } } }
	cnt_gather_8 { ap_none {  { cnt_gather_8 in_data 0 32 } } }
	cnt_gather_9 { ap_none {  { cnt_gather_9 in_data 0 32 } } }
	cnt_gather_10 { ap_none {  { cnt_gather_10 in_data 0 32 } } }
	cnt_gather_11 { ap_none {  { cnt_gather_11 in_data 0 32 } } }
	cnt_gather_12 { ap_none {  { cnt_gather_12 in_data 0 32 } } }
	cnt_gather_13 { ap_none {  { cnt_gather_13 in_data 0 32 } } }
	cnt_gather_14 { ap_none {  { cnt_gather_14 in_data 0 32 } } }
	cnt_gather_15 { ap_none {  { cnt_gather_15 in_data 0 32 } } }
	cnt_gather_16 { ap_none {  { cnt_gather_16 in_data 0 32 } } }
	cnt_gather_17 { ap_none {  { cnt_gather_17 in_data 0 32 } } }
	cnt_gather_18 { ap_none {  { cnt_gather_18 in_data 0 32 } } }
	cnt_gather_19 { ap_none {  { cnt_gather_19 in_data 0 32 } } }
	cnt_gather_20 { ap_none {  { cnt_gather_20 in_data 0 32 } } }
	cnt_gather_21 { ap_none {  { cnt_gather_21 in_data 0 32 } } }
	cnt_gather_22 { ap_none {  { cnt_gather_22 in_data 0 32 } } }
	cnt_gather_23 { ap_none {  { cnt_gather_23 in_data 0 32 } } }
	cnt_gather_24 { ap_none {  { cnt_gather_24 in_data 0 32 } } }
	cnt_gather_25 { ap_none {  { cnt_gather_25 in_data 0 32 } } }
	cnt_gather_26 { ap_none {  { cnt_gather_26 in_data 0 32 } } }
	cnt_gather_27 { ap_none {  { cnt_gather_27 in_data 0 32 } } }
	cnt_gather_28 { ap_none {  { cnt_gather_28 in_data 0 32 } } }
	cnt_gather_29 { ap_none {  { cnt_gather_29 in_data 0 32 } } }
	cnt_gather_30 { ap_none {  { cnt_gather_30 in_data 0 32 } } }
	cnt_gather_31 { ap_none {  { cnt_gather_31 in_data 0 32 } } }
	exist_0 { ap_none {  { exist_0 in_data 0 1 } } }
	exist_1 { ap_none {  { exist_1 in_data 0 1 } } }
	exist_2 { ap_none {  { exist_2 in_data 0 1 } } }
	exist_3 { ap_none {  { exist_3 in_data 0 1 } } }
	exist_4 { ap_none {  { exist_4 in_data 0 1 } } }
	exist_5 { ap_none {  { exist_5 in_data 0 1 } } }
	exist_6 { ap_none {  { exist_6 in_data 0 1 } } }
	exist_7 { ap_none {  { exist_7 in_data 0 1 } } }
	exist_8 { ap_none {  { exist_8 in_data 0 1 } } }
	exist_9 { ap_none {  { exist_9 in_data 0 1 } } }
	exist_10 { ap_none {  { exist_10 in_data 0 1 } } }
	exist_11 { ap_none {  { exist_11 in_data 0 1 } } }
	exist_12 { ap_none {  { exist_12 in_data 0 1 } } }
	exist_13 { ap_none {  { exist_13 in_data 0 1 } } }
	exist_14 { ap_none {  { exist_14 in_data 0 1 } } }
	exist_15 { ap_none {  { exist_15 in_data 0 1 } } }
	exist_16 { ap_none {  { exist_16 in_data 0 1 } } }
	exist_17 { ap_none {  { exist_17 in_data 0 1 } } }
	exist_18 { ap_none {  { exist_18 in_data 0 1 } } }
	exist_19 { ap_none {  { exist_19 in_data 0 1 } } }
	exist_20 { ap_none {  { exist_20 in_data 0 1 } } }
	exist_21 { ap_none {  { exist_21 in_data 0 1 } } }
	exist_22 { ap_none {  { exist_22 in_data 0 1 } } }
	exist_23 { ap_none {  { exist_23 in_data 0 1 } } }
	exist_24 { ap_none {  { exist_24 in_data 0 1 } } }
	exist_25 { ap_none {  { exist_25 in_data 0 1 } } }
	exist_26 { ap_none {  { exist_26 in_data 0 1 } } }
	exist_27 { ap_none {  { exist_27 in_data 0 1 } } }
	exist_28 { ap_none {  { exist_28 in_data 0 1 } } }
	exist_29 { ap_none {  { exist_29 in_data 0 1 } } }
	exist_30 { ap_none {  { exist_30 in_data 0 1 } } }
	exist_31 { ap_none {  { exist_31 in_data 0 1 } } }
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
