#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("dummyParam", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("N_Vertex", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("resWrite", 1, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("glblIterIdx", 16, hls_out, 3, "ap_none", "out_data", 1),
	Port_Property("cnt_scatter_0", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("cnt_scatter_1", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("cnt_gather_0", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("cnt_gather_1", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("exist_0", 1, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("exist_1", 1, hls_in, 9, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "BFS_Ctrl_2X1_VER1";
