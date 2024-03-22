#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("peID", 8, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("sw_data", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("exist", 1, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("tmp_dist_address0", 12, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("tmp_dist_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("tmp_dist_we0", 8, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("tmp_dist_d0", 64, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("tmp_dist_q0", 64, hls_in, 3, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "BFS_Gather";
