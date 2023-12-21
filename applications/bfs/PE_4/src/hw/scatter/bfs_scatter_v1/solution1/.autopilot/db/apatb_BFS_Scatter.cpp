#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_CSR_V "../tv/cdatafile/c.BFS_Scatter.autotvin_CSR_V.dat"
#define AUTOTB_TVOUT_CSR_V "../tv/cdatafile/c.BFS_Scatter.autotvout_CSR_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_CSR_E "../tv/cdatafile/c.BFS_Scatter.autotvin_CSR_E.dat"
#define AUTOTB_TVOUT_CSR_E "../tv/cdatafile/c.BFS_Scatter.autotvout_CSR_E.dat"
// wrapc file define:
#define AUTOTB_TVIN_glbl_d "../tv/cdatafile/c.BFS_Scatter.autotvin_glbl_d.dat"
#define AUTOTB_TVOUT_glbl_d "../tv/cdatafile/c.BFS_Scatter.autotvout_glbl_d.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_baseAddr "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_baseAddr.dat"
#define AUTOTB_TVOUT_rd_baseAddr "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_baseAddr.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_baseAddr "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_baseAddr.dat"
#define AUTOTB_TVOUT_wr_baseAddr "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_baseAddr.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_port_V_data_V "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_port_V_data_V.dat"
#define AUTOTB_TVOUT_rd_port_V_data_V "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_port_V_data_V.dat"
#define AUTOTB_TVIN_rd_port_V_keep_V "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_port_V_keep_V.dat"
#define AUTOTB_TVOUT_rd_port_V_keep_V "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_port_V_keep_V.dat"
#define AUTOTB_TVIN_rd_port_V_strb_V "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_port_V_strb_V.dat"
#define AUTOTB_TVOUT_rd_port_V_strb_V "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_port_V_strb_V.dat"
#define AUTOTB_TVIN_rd_port_V_last_V "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_port_V_last_V.dat"
#define AUTOTB_TVOUT_rd_port_V_last_V "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_port_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_rd_port_V_data_V "../tv/stream_size/stream_size_in_rd_port_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V "../tv/stream_size/stream_ingress_status_rd_port_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_rd_port_V_keep_V "../tv/stream_size/stream_size_in_rd_port_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V "../tv/stream_size/stream_ingress_status_rd_port_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_rd_port_V_strb_V "../tv/stream_size/stream_size_in_rd_port_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V "../tv/stream_size/stream_ingress_status_rd_port_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_rd_port_V_last_V "../tv/stream_size/stream_size_in_rd_port_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V "../tv/stream_size/stream_ingress_status_rd_port_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_port_V_data_V "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_port_V_data_V.dat"
#define AUTOTB_TVOUT_wr_port_V_data_V "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_port_V_data_V.dat"
#define AUTOTB_TVIN_wr_port_V_keep_V "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_port_V_keep_V.dat"
#define AUTOTB_TVOUT_wr_port_V_keep_V "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_port_V_keep_V.dat"
#define AUTOTB_TVIN_wr_port_V_strb_V "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_port_V_strb_V.dat"
#define AUTOTB_TVOUT_wr_port_V_strb_V "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_port_V_strb_V.dat"
#define AUTOTB_TVIN_wr_port_V_last_V "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_port_V_last_V.dat"
#define AUTOTB_TVOUT_wr_port_V_last_V "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_port_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_wr_port_V_data_V "../tv/stream_size/stream_size_out_wr_port_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_wr_port_V_data_V "../tv/stream_size/stream_egress_status_wr_port_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_wr_port_V_keep_V "../tv/stream_size/stream_size_out_wr_port_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_wr_port_V_keep_V "../tv/stream_size/stream_egress_status_wr_port_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_wr_port_V_strb_V "../tv/stream_size/stream_size_out_wr_port_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_wr_port_V_strb_V "../tv/stream_size/stream_egress_status_wr_port_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_wr_port_V_last_V "../tv/stream_size/stream_size_out_wr_port_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_wr_port_V_last_V "../tv/stream_size/stream_egress_status_wr_port_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_req_V "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_req_V.dat"
#define AUTOTB_TVOUT_rd_req_V "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_req_V.dat"
#define WRAPC_STREAM_SIZE_OUT_rd_req_V "../tv/stream_size/stream_size_out_rd_req_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_rd_req_V "../tv/stream_size/stream_egress_status_rd_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_len "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_len.dat"
#define AUTOTB_TVOUT_wr_len "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_len.dat"
// wrapc file define:
#define AUTOTB_TVIN_rd_start "../tv/cdatafile/c.BFS_Scatter.autotvin_rd_start.dat"
#define AUTOTB_TVOUT_rd_start "../tv/cdatafile/c.BFS_Scatter.autotvout_rd_start.dat"
// wrapc file define:
#define AUTOTB_TVIN_wr_start "../tv/cdatafile/c.BFS_Scatter.autotvin_wr_start.dat"
#define AUTOTB_TVOUT_wr_start "../tv/cdatafile/c.BFS_Scatter.autotvout_wr_start.dat"
// wrapc file define:
#define AUTOTB_TVIN_N_Vertex "../tv/cdatafile/c.BFS_Scatter.autotvin_N_Vertex.dat"
#define AUTOTB_TVOUT_N_Vertex "../tv/cdatafile/c.BFS_Scatter.autotvout_N_Vertex.dat"
// wrapc file define:
#define AUTOTB_TVIN_root "../tv/cdatafile/c.BFS_Scatter.autotvin_root.dat"
#define AUTOTB_TVOUT_root "../tv/cdatafile/c.BFS_Scatter.autotvout_root.dat"
// wrapc file define:
#define AUTOTB_TVIN_peID "../tv/cdatafile/c.BFS_Scatter.autotvin_peID.dat"
#define AUTOTB_TVOUT_peID "../tv/cdatafile/c.BFS_Scatter.autotvout_peID.dat"
// wrapc file define:
#define AUTOTB_TVIN_sw_data_0_V "../tv/cdatafile/c.BFS_Scatter.autotvin_sw_data_0_V.dat"
#define AUTOTB_TVOUT_sw_data_0_V "../tv/cdatafile/c.BFS_Scatter.autotvout_sw_data_0_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sw_data_0_V "../tv/stream_size/stream_size_out_sw_data_0_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sw_data_0_V "../tv/stream_size/stream_egress_status_sw_data_0_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_sw_data_1_V "../tv/cdatafile/c.BFS_Scatter.autotvin_sw_data_1_V.dat"
#define AUTOTB_TVOUT_sw_data_1_V "../tv/cdatafile/c.BFS_Scatter.autotvout_sw_data_1_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sw_data_1_V "../tv/stream_size/stream_size_out_sw_data_1_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sw_data_1_V "../tv/stream_size/stream_egress_status_sw_data_1_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_sw_data_2_V "../tv/cdatafile/c.BFS_Scatter.autotvin_sw_data_2_V.dat"
#define AUTOTB_TVOUT_sw_data_2_V "../tv/cdatafile/c.BFS_Scatter.autotvout_sw_data_2_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sw_data_2_V "../tv/stream_size/stream_size_out_sw_data_2_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sw_data_2_V "../tv/stream_size/stream_egress_status_sw_data_2_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_sw_data_3_V "../tv/cdatafile/c.BFS_Scatter.autotvin_sw_data_3_V.dat"
#define AUTOTB_TVOUT_sw_data_3_V "../tv/cdatafile/c.BFS_Scatter.autotvout_sw_data_3_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sw_data_3_V "../tv/stream_size/stream_size_out_sw_data_3_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sw_data_3_V "../tv/stream_size/stream_egress_status_sw_data_3_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_glblIterIdx "../tv/cdatafile/c.BFS_Scatter.autotvin_glblIterIdx.dat"
#define AUTOTB_TVOUT_glblIterIdx "../tv/cdatafile/c.BFS_Scatter.autotvout_glblIterIdx.dat"
// wrapc file define:
#define AUTOTB_TVIN_cycle_cnt "../tv/cdatafile/c.BFS_Scatter.autotvin_cycle_cnt.dat"
#define AUTOTB_TVOUT_cycle_cnt "../tv/cdatafile/c.BFS_Scatter.autotvout_cycle_cnt.dat"
// wrapc file define:
#define AUTOTB_TVIN_launch_recv "../tv/cdatafile/c.BFS_Scatter.autotvin_launch_recv.dat"
#define AUTOTB_TVOUT_launch_recv "../tv/cdatafile/c.BFS_Scatter.autotvout_launch_recv.dat"
// wrapc file define:
#define AUTOTB_TVIN_resWrite "../tv/cdatafile/c.BFS_Scatter.autotvin_resWrite.dat"
#define AUTOTB_TVOUT_resWrite "../tv/cdatafile/c.BFS_Scatter.autotvout_resWrite.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_0 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_0.dat"
#define AUTOTB_TVOUT_tmp_dist_0 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_1 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_1.dat"
#define AUTOTB_TVOUT_tmp_dist_1 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_2 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_2.dat"
#define AUTOTB_TVOUT_tmp_dist_2 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_3 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_3.dat"
#define AUTOTB_TVOUT_tmp_dist_3 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_4 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_4.dat"
#define AUTOTB_TVOUT_tmp_dist_4 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_5 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_5.dat"
#define AUTOTB_TVOUT_tmp_dist_5 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_6 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_6.dat"
#define AUTOTB_TVOUT_tmp_dist_6 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_7 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_7.dat"
#define AUTOTB_TVOUT_tmp_dist_7 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_8 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_8.dat"
#define AUTOTB_TVOUT_tmp_dist_8 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_9 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_9.dat"
#define AUTOTB_TVOUT_tmp_dist_9 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_10 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_10.dat"
#define AUTOTB_TVOUT_tmp_dist_10 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_11 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_11.dat"
#define AUTOTB_TVOUT_tmp_dist_11 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_12 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_12.dat"
#define AUTOTB_TVOUT_tmp_dist_12 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_13 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_13.dat"
#define AUTOTB_TVOUT_tmp_dist_13 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_14 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_14.dat"
#define AUTOTB_TVOUT_tmp_dist_14 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_15 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_15.dat"
#define AUTOTB_TVOUT_tmp_dist_15 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_16 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_16.dat"
#define AUTOTB_TVOUT_tmp_dist_16 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_17 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_17.dat"
#define AUTOTB_TVOUT_tmp_dist_17 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_18 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_18.dat"
#define AUTOTB_TVOUT_tmp_dist_18 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_19 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_19.dat"
#define AUTOTB_TVOUT_tmp_dist_19 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_20 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_20.dat"
#define AUTOTB_TVOUT_tmp_dist_20 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_21 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_21.dat"
#define AUTOTB_TVOUT_tmp_dist_21 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_22 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_22.dat"
#define AUTOTB_TVOUT_tmp_dist_22 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_23 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_23.dat"
#define AUTOTB_TVOUT_tmp_dist_23 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_24 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_24.dat"
#define AUTOTB_TVOUT_tmp_dist_24 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_25 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_25.dat"
#define AUTOTB_TVOUT_tmp_dist_25 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_26 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_26.dat"
#define AUTOTB_TVOUT_tmp_dist_26 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_27 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_27.dat"
#define AUTOTB_TVOUT_tmp_dist_27 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_28 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_28.dat"
#define AUTOTB_TVOUT_tmp_dist_28 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_29 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_29.dat"
#define AUTOTB_TVOUT_tmp_dist_29 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_30 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_30.dat"
#define AUTOTB_TVOUT_tmp_dist_30 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_31 "../tv/cdatafile/c.BFS_Scatter.autotvin_tmp_dist_31.dat"
#define AUTOTB_TVOUT_tmp_dist_31 "../tv/cdatafile/c.BFS_Scatter.autotvout_tmp_dist_31.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_CSR_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_CSR_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_CSR_E "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_CSR_E.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_glbl_d "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_glbl_d.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_baseAddr "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_baseAddr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_baseAddr "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_baseAddr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_port_V_data_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_port_V_data_V.dat"
#define AUTOTB_TVOUT_PC_rd_port_V_keep_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_port_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_rd_port_V_strb_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_port_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_rd_port_V_last_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_port_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_port_V_data_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_port_V_data_V.dat"
#define AUTOTB_TVOUT_PC_wr_port_V_keep_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_port_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_wr_port_V_strb_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_port_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_wr_port_V_last_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_port_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_req_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_len "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_len.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rd_start "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_rd_start.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_wr_start "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_wr_start.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_N_Vertex "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_N_Vertex.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_root "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_root.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_peID "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_peID.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sw_data_0_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_sw_data_0_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sw_data_1_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_sw_data_1_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sw_data_2_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_sw_data_2_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sw_data_3_V "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_sw_data_3_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_glblIterIdx "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_glblIterIdx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cycle_cnt "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_cycle_cnt.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_launch_recv "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_launch_recv.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_resWrite "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_resWrite.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_0 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_1 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_2 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_3 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_4 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_5 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_6 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_7 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_8 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_9 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_10 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_11 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_12 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_13 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_14 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_15 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_16 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_17 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_18 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_19 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_20 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_21 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_22 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_23 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_24 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_25 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_26 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_27 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_28 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_29 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_30 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_31 "../tv/rtldatafile/rtl.BFS_Scatter.autotvout_tmp_dist_31.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  CSR_V_depth = 0;
  CSR_E_depth = 0;
  glbl_d_depth = 0;
  rd_baseAddr_depth = 0;
  wr_baseAddr_depth = 0;
  rd_port_V_data_V_depth = 0;
  rd_port_V_keep_V_depth = 0;
  rd_port_V_strb_V_depth = 0;
  rd_port_V_last_V_depth = 0;
  wr_port_V_data_V_depth = 0;
  wr_port_V_keep_V_depth = 0;
  wr_port_V_strb_V_depth = 0;
  wr_port_V_last_V_depth = 0;
  rd_req_V_depth = 0;
  wr_len_depth = 0;
  rd_start_depth = 0;
  wr_start_depth = 0;
  N_Vertex_depth = 0;
  root_depth = 0;
  peID_depth = 0;
  sw_data_0_V_depth = 0;
  sw_data_1_V_depth = 0;
  sw_data_2_V_depth = 0;
  sw_data_3_V_depth = 0;
  glblIterIdx_depth = 0;
  cycle_cnt_depth = 0;
  launch_recv_depth = 0;
  resWrite_depth = 0;
  tmp_dist_0_depth = 0;
  tmp_dist_1_depth = 0;
  tmp_dist_2_depth = 0;
  tmp_dist_3_depth = 0;
  tmp_dist_4_depth = 0;
  tmp_dist_5_depth = 0;
  tmp_dist_6_depth = 0;
  tmp_dist_7_depth = 0;
  tmp_dist_8_depth = 0;
  tmp_dist_9_depth = 0;
  tmp_dist_10_depth = 0;
  tmp_dist_11_depth = 0;
  tmp_dist_12_depth = 0;
  tmp_dist_13_depth = 0;
  tmp_dist_14_depth = 0;
  tmp_dist_15_depth = 0;
  tmp_dist_16_depth = 0;
  tmp_dist_17_depth = 0;
  tmp_dist_18_depth = 0;
  tmp_dist_19_depth = 0;
  tmp_dist_20_depth = 0;
  tmp_dist_21_depth = 0;
  tmp_dist_22_depth = 0;
  tmp_dist_23_depth = 0;
  tmp_dist_24_depth = 0;
  tmp_dist_25_depth = 0;
  tmp_dist_26_depth = 0;
  tmp_dist_27_depth = 0;
  tmp_dist_28_depth = 0;
  tmp_dist_29_depth = 0;
  tmp_dist_30_depth = 0;
  tmp_dist_31_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{CSR_V " << CSR_V_depth << "}\n";
  total_list << "{CSR_E " << CSR_E_depth << "}\n";
  total_list << "{glbl_d " << glbl_d_depth << "}\n";
  total_list << "{rd_baseAddr " << rd_baseAddr_depth << "}\n";
  total_list << "{wr_baseAddr " << wr_baseAddr_depth << "}\n";
  total_list << "{rd_port_V_data_V " << rd_port_V_data_V_depth << "}\n";
  total_list << "{rd_port_V_keep_V " << rd_port_V_keep_V_depth << "}\n";
  total_list << "{rd_port_V_strb_V " << rd_port_V_strb_V_depth << "}\n";
  total_list << "{rd_port_V_last_V " << rd_port_V_last_V_depth << "}\n";
  total_list << "{wr_port_V_data_V " << wr_port_V_data_V_depth << "}\n";
  total_list << "{wr_port_V_keep_V " << wr_port_V_keep_V_depth << "}\n";
  total_list << "{wr_port_V_strb_V " << wr_port_V_strb_V_depth << "}\n";
  total_list << "{wr_port_V_last_V " << wr_port_V_last_V_depth << "}\n";
  total_list << "{rd_req_V " << rd_req_V_depth << "}\n";
  total_list << "{wr_len " << wr_len_depth << "}\n";
  total_list << "{rd_start " << rd_start_depth << "}\n";
  total_list << "{wr_start " << wr_start_depth << "}\n";
  total_list << "{N_Vertex " << N_Vertex_depth << "}\n";
  total_list << "{root " << root_depth << "}\n";
  total_list << "{peID " << peID_depth << "}\n";
  total_list << "{sw_data_0_V " << sw_data_0_V_depth << "}\n";
  total_list << "{sw_data_1_V " << sw_data_1_V_depth << "}\n";
  total_list << "{sw_data_2_V " << sw_data_2_V_depth << "}\n";
  total_list << "{sw_data_3_V " << sw_data_3_V_depth << "}\n";
  total_list << "{glblIterIdx " << glblIterIdx_depth << "}\n";
  total_list << "{cycle_cnt " << cycle_cnt_depth << "}\n";
  total_list << "{launch_recv " << launch_recv_depth << "}\n";
  total_list << "{resWrite " << resWrite_depth << "}\n";
  total_list << "{tmp_dist_0 " << tmp_dist_0_depth << "}\n";
  total_list << "{tmp_dist_1 " << tmp_dist_1_depth << "}\n";
  total_list << "{tmp_dist_2 " << tmp_dist_2_depth << "}\n";
  total_list << "{tmp_dist_3 " << tmp_dist_3_depth << "}\n";
  total_list << "{tmp_dist_4 " << tmp_dist_4_depth << "}\n";
  total_list << "{tmp_dist_5 " << tmp_dist_5_depth << "}\n";
  total_list << "{tmp_dist_6 " << tmp_dist_6_depth << "}\n";
  total_list << "{tmp_dist_7 " << tmp_dist_7_depth << "}\n";
  total_list << "{tmp_dist_8 " << tmp_dist_8_depth << "}\n";
  total_list << "{tmp_dist_9 " << tmp_dist_9_depth << "}\n";
  total_list << "{tmp_dist_10 " << tmp_dist_10_depth << "}\n";
  total_list << "{tmp_dist_11 " << tmp_dist_11_depth << "}\n";
  total_list << "{tmp_dist_12 " << tmp_dist_12_depth << "}\n";
  total_list << "{tmp_dist_13 " << tmp_dist_13_depth << "}\n";
  total_list << "{tmp_dist_14 " << tmp_dist_14_depth << "}\n";
  total_list << "{tmp_dist_15 " << tmp_dist_15_depth << "}\n";
  total_list << "{tmp_dist_16 " << tmp_dist_16_depth << "}\n";
  total_list << "{tmp_dist_17 " << tmp_dist_17_depth << "}\n";
  total_list << "{tmp_dist_18 " << tmp_dist_18_depth << "}\n";
  total_list << "{tmp_dist_19 " << tmp_dist_19_depth << "}\n";
  total_list << "{tmp_dist_20 " << tmp_dist_20_depth << "}\n";
  total_list << "{tmp_dist_21 " << tmp_dist_21_depth << "}\n";
  total_list << "{tmp_dist_22 " << tmp_dist_22_depth << "}\n";
  total_list << "{tmp_dist_23 " << tmp_dist_23_depth << "}\n";
  total_list << "{tmp_dist_24 " << tmp_dist_24_depth << "}\n";
  total_list << "{tmp_dist_25 " << tmp_dist_25_depth << "}\n";
  total_list << "{tmp_dist_26 " << tmp_dist_26_depth << "}\n";
  total_list << "{tmp_dist_27 " << tmp_dist_27_depth << "}\n";
  total_list << "{tmp_dist_28 " << tmp_dist_28_depth << "}\n";
  total_list << "{tmp_dist_29 " << tmp_dist_29_depth << "}\n";
  total_list << "{tmp_dist_30 " << tmp_dist_30_depth << "}\n";
  total_list << "{tmp_dist_31 " << tmp_dist_31_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int CSR_V_depth;
    int CSR_E_depth;
    int glbl_d_depth;
    int rd_baseAddr_depth;
    int wr_baseAddr_depth;
    int rd_port_V_data_V_depth;
    int rd_port_V_keep_V_depth;
    int rd_port_V_strb_V_depth;
    int rd_port_V_last_V_depth;
    int wr_port_V_data_V_depth;
    int wr_port_V_keep_V_depth;
    int wr_port_V_strb_V_depth;
    int wr_port_V_last_V_depth;
    int rd_req_V_depth;
    int wr_len_depth;
    int rd_start_depth;
    int wr_start_depth;
    int N_Vertex_depth;
    int root_depth;
    int peID_depth;
    int sw_data_0_V_depth;
    int sw_data_1_V_depth;
    int sw_data_2_V_depth;
    int sw_data_3_V_depth;
    int glblIterIdx_depth;
    int cycle_cnt_depth;
    int launch_recv_depth;
    int resWrite_depth;
    int tmp_dist_0_depth;
    int tmp_dist_1_depth;
    int tmp_dist_2_depth;
    int tmp_dist_3_depth;
    int tmp_dist_4_depth;
    int tmp_dist_5_depth;
    int tmp_dist_6_depth;
    int tmp_dist_7_depth;
    int tmp_dist_8_depth;
    int tmp_dist_9_depth;
    int tmp_dist_10_depth;
    int tmp_dist_11_depth;
    int tmp_dist_12_depth;
    int tmp_dist_13_depth;
    int tmp_dist_14_depth;
    int tmp_dist_15_depth;
    int tmp_dist_16_depth;
    int tmp_dist_17_depth;
    int tmp_dist_18_depth;
    int tmp_dist_19_depth;
    int tmp_dist_20_depth;
    int tmp_dist_21_depth;
    int tmp_dist_22_depth;
    int tmp_dist_23_depth;
    int tmp_dist_24_depth;
    int tmp_dist_25_depth;
    int tmp_dist_26_depth;
    int tmp_dist_27_depth;
    int tmp_dist_28_depth;
    int tmp_dist_29_depth;
    int tmp_dist_30_depth;
    int tmp_dist_31_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s8__ { char data[8]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_s10__ { char data[32]; };
extern "C" void BFS_Scatter_hw_stub_wrapper(__cosim_s8__*, __cosim_s8__*, __cosim_s8__*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, char, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, char, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_BFS_Scatter_hw(__cosim_s8__* __xlx_apatb_param_CSR_V, __cosim_s8__* __xlx_apatb_param_CSR_E, __cosim_s8__* __xlx_apatb_param_glbl_d, volatile void * __xlx_apatb_param_rd_baseAddr, volatile void * __xlx_apatb_param_wr_baseAddr, volatile void * __xlx_apatb_param_rd_port, volatile void * __xlx_apatb_param_wr_port, volatile void * __xlx_apatb_param_rd_req, volatile void * __xlx_apatb_param_wr_len, volatile void * __xlx_apatb_param_rd_start, volatile void * __xlx_apatb_param_wr_start, int __xlx_apatb_param_N_Vertex, int __xlx_apatb_param_root, char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data_0, volatile void * __xlx_apatb_param_sw_data_1, volatile void * __xlx_apatb_param_sw_data_2, volatile void * __xlx_apatb_param_sw_data_3, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cycle_cnt, volatile void * __xlx_apatb_param_launch_recv, char __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_tmp_dist_0, volatile void * __xlx_apatb_param_tmp_dist_1, volatile void * __xlx_apatb_param_tmp_dist_2, volatile void * __xlx_apatb_param_tmp_dist_3, volatile void * __xlx_apatb_param_tmp_dist_4, volatile void * __xlx_apatb_param_tmp_dist_5, volatile void * __xlx_apatb_param_tmp_dist_6, volatile void * __xlx_apatb_param_tmp_dist_7, volatile void * __xlx_apatb_param_tmp_dist_8, volatile void * __xlx_apatb_param_tmp_dist_9, volatile void * __xlx_apatb_param_tmp_dist_10, volatile void * __xlx_apatb_param_tmp_dist_11, volatile void * __xlx_apatb_param_tmp_dist_12, volatile void * __xlx_apatb_param_tmp_dist_13, volatile void * __xlx_apatb_param_tmp_dist_14, volatile void * __xlx_apatb_param_tmp_dist_15, volatile void * __xlx_apatb_param_tmp_dist_16, volatile void * __xlx_apatb_param_tmp_dist_17, volatile void * __xlx_apatb_param_tmp_dist_18, volatile void * __xlx_apatb_param_tmp_dist_19, volatile void * __xlx_apatb_param_tmp_dist_20, volatile void * __xlx_apatb_param_tmp_dist_21, volatile void * __xlx_apatb_param_tmp_dist_22, volatile void * __xlx_apatb_param_tmp_dist_23, volatile void * __xlx_apatb_param_tmp_dist_24, volatile void * __xlx_apatb_param_tmp_dist_25, volatile void * __xlx_apatb_param_tmp_dist_26, volatile void * __xlx_apatb_param_tmp_dist_27, volatile void * __xlx_apatb_param_tmp_dist_28, volatile void * __xlx_apatb_param_tmp_dist_29, volatile void * __xlx_apatb_param_tmp_dist_30, volatile void * __xlx_apatb_param_tmp_dist_31) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_rd_baseAddr);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > rd_baseAddr_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "rd_baseAddr");
  
            // push token into output port buffer
            if (AESL_token != "") {
              rd_baseAddr_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((long long*)__xlx_apatb_param_rd_baseAddr)[0] = rd_baseAddr_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_baseAddr);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > wr_baseAddr_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_baseAddr");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_baseAddr_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((long long*)__xlx_apatb_param_wr_baseAddr)[0] = wr_baseAddr_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_rd_port_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_rd_port_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_rd_port_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_rd_port_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->read();
{sc_bv<256> xlx_stream_wr_port_pc_buffer;
unsigned xlx_stream_wr_port_size = 0;

          std::vector<sc_bv<128> > wr_port_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_port_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > wr_port_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_port_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_wr_port_size=wr_port_V_data_V_pc_buffer.size();
wr_port_V_data_V_pc_buffer_Copy=wr_port_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > wr_port_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_port_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > wr_port_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_port_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_wr_port_size=wr_port_V_keep_V_pc_buffer.size();
wr_port_V_keep_V_pc_buffer_Copy=wr_port_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > wr_port_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_port_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > wr_port_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_port_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_wr_port_size=wr_port_V_strb_V_pc_buffer.size();
wr_port_V_strb_V_pc_buffer_Copy=wr_port_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<128> > wr_port_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_port_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > wr_port_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_port_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_wr_port_size=wr_port_V_last_V_pc_buffer.size();
wr_port_V_last_V_pc_buffer_Copy=wr_port_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_wr_port_size; j != e; ++j) {
xlx_stream_wr_port_pc_buffer.range(127, 0) = wr_port_V_data_V_pc_buffer_Copy[j];
xlx_stream_wr_port_pc_buffer.range(143, 128) = wr_port_V_keep_V_pc_buffer_Copy[j];
xlx_stream_wr_port_pc_buffer.range(159, 144) = wr_port_V_strb_V_pc_buffer_Copy[j];
xlx_stream_wr_port_pc_buffer.range(175, 168) = wr_port_V_last_V_pc_buffer_Copy[j];
__cosim_s20__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*4+0] = xlx_stream_wr_port_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*4+1] = xlx_stream_wr_port_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*4+2] = xlx_stream_wr_port_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*4+3] = xlx_stream_wr_port_pc_buffer.range(255,192).to_int64();
((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->write(xlx_stream_elt);
}}long __xlx_apatb_param_rd_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_rd_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_rd_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_rd_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > rd_req_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "rd_req_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              rd_req_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = rd_req_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_rd_req)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_len);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > wr_len_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_len");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_len_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_wr_len)[0] = wr_len_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_rd_start);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > rd_start_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "rd_start");
  
            // push token into output port buffer
            if (AESL_token != "") {
              rd_start_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_rd_start)[0] = rd_start_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_wr_start);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > wr_start_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "wr_start");
  
            // push token into output port buffer
            if (AESL_token != "") {
              wr_start_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_wr_start)[0] = wr_start_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_sw_data_0_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_sw_data_0_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_sw_data_0_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_sw_data_0_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > sw_data_0_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "sw_data_0_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              sw_data_0_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = sw_data_0_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_sw_data_1_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_sw_data_1_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_sw_data_1_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_sw_data_1_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > sw_data_1_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "sw_data_1_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              sw_data_1_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = sw_data_1_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_sw_data_2_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_sw_data_2_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_sw_data_2_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_sw_data_2_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > sw_data_2_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "sw_data_2_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              sw_data_2_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = sw_data_2_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_sw_data_3_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_sw_data_3_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_sw_data_3_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_sw_data_3_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > sw_data_3_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "sw_data_3_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              sw_data_3_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = sw_data_3_V_pc_buffer[j].to_int64();
          ((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_launch_recv);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > launch_recv_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "launch_recv");
  
            // push token into output port buffer
            if (AESL_token != "") {
              launch_recv_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_launch_recv)[0] = launch_recv_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_0_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_0)[j] = tmp_dist_0_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_1_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_1)[j] = tmp_dist_1_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_2_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_2)[j] = tmp_dist_2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_3_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_3)[j] = tmp_dist_3_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_4_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_4)[j] = tmp_dist_4_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_5_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_5)[j] = tmp_dist_5_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_6_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_6)[j] = tmp_dist_6_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_7_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_7)[j] = tmp_dist_7_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_8_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_8)[j] = tmp_dist_8_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_9_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_9)[j] = tmp_dist_9_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_10_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_10");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_10)[j] = tmp_dist_10_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_11_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_11");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_11)[j] = tmp_dist_11_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_12_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_12");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_12)[j] = tmp_dist_12_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_13_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_13");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_13)[j] = tmp_dist_13_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_14_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_14");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_14)[j] = tmp_dist_14_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_15_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_15");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_15)[j] = tmp_dist_15_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_16);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_16_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_16");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_16_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_16)[j] = tmp_dist_16_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_17);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_17_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_17");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_17_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_17)[j] = tmp_dist_17_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_18);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_18_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_18");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_18_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_18)[j] = tmp_dist_18_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_19);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_19_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_19");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_19_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_19)[j] = tmp_dist_19_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_20);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_20_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_20");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_20_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_20)[j] = tmp_dist_20_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_21);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_21_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_21");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_21_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_21)[j] = tmp_dist_21_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_22);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_22_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_22");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_22_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_22)[j] = tmp_dist_22_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_23);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_23_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_23");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_23_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_23)[j] = tmp_dist_23_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_24);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_24_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_24");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_24_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_24)[j] = tmp_dist_24_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_25);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_25_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_25");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_25_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_25)[j] = tmp_dist_25_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_26);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_26_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_26");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_26_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_26)[j] = tmp_dist_26_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_27);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_27_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_27");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_27_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_27)[j] = tmp_dist_27_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_28);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_28_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_28");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_28_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_28)[j] = tmp_dist_28_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_29);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_29_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_29");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_29_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_29)[j] = tmp_dist_29_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_30);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_30_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_30");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_30_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_30)[j] = tmp_dist_30_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_tmp_dist_31);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > tmp_dist_31_pc_buffer(4096);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "tmp_dist_31");
  
            // push token into output port buffer
            if (AESL_token != "") {
              tmp_dist_31_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {
            ((long long*)__xlx_apatb_param_tmp_dist_31)[j] = tmp_dist_31_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//CSR_V
aesl_fh.touch(AUTOTB_TVIN_CSR_V);
aesl_fh.touch(AUTOTB_TVOUT_CSR_V);
//CSR_E
aesl_fh.touch(AUTOTB_TVIN_CSR_E);
aesl_fh.touch(AUTOTB_TVOUT_CSR_E);
//glbl_d
aesl_fh.touch(AUTOTB_TVIN_glbl_d);
aesl_fh.touch(AUTOTB_TVOUT_glbl_d);
//rd_baseAddr
aesl_fh.touch(AUTOTB_TVIN_rd_baseAddr);
aesl_fh.touch(AUTOTB_TVOUT_rd_baseAddr);
//wr_baseAddr
aesl_fh.touch(AUTOTB_TVIN_wr_baseAddr);
aesl_fh.touch(AUTOTB_TVOUT_wr_baseAddr);
//rd_port
aesl_fh.touch(AUTOTB_TVIN_rd_port_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_rd_port_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_rd_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_rd_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_rd_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_rd_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_rd_port_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_rd_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_rd_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_rd_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_rd_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_rd_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V);
//wr_port
aesl_fh.touch(AUTOTB_TVIN_wr_port_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_wr_port_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_wr_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_wr_port_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_wr_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_wr_port_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_wr_port_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_wr_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_wr_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_wr_port_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_wr_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_wr_port_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_wr_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_wr_port_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_wr_port_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_wr_port_V_last_V);
//rd_req_V
aesl_fh.touch(AUTOTB_TVIN_rd_req_V);
aesl_fh.touch(AUTOTB_TVOUT_rd_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_rd_req_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_rd_req_V);
//wr_len
aesl_fh.touch(AUTOTB_TVIN_wr_len);
aesl_fh.touch(AUTOTB_TVOUT_wr_len);
//rd_start
aesl_fh.touch(AUTOTB_TVIN_rd_start);
aesl_fh.touch(AUTOTB_TVOUT_rd_start);
//wr_start
aesl_fh.touch(AUTOTB_TVIN_wr_start);
aesl_fh.touch(AUTOTB_TVOUT_wr_start);
//N_Vertex
aesl_fh.touch(AUTOTB_TVIN_N_Vertex);
aesl_fh.touch(AUTOTB_TVOUT_N_Vertex);
//root
aesl_fh.touch(AUTOTB_TVIN_root);
aesl_fh.touch(AUTOTB_TVOUT_root);
//peID
aesl_fh.touch(AUTOTB_TVIN_peID);
aesl_fh.touch(AUTOTB_TVOUT_peID);
//sw_data_0_V
aesl_fh.touch(AUTOTB_TVIN_sw_data_0_V);
aesl_fh.touch(AUTOTB_TVOUT_sw_data_0_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_sw_data_0_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_sw_data_0_V);
//sw_data_1_V
aesl_fh.touch(AUTOTB_TVIN_sw_data_1_V);
aesl_fh.touch(AUTOTB_TVOUT_sw_data_1_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_sw_data_1_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_sw_data_1_V);
//sw_data_2_V
aesl_fh.touch(AUTOTB_TVIN_sw_data_2_V);
aesl_fh.touch(AUTOTB_TVOUT_sw_data_2_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_sw_data_2_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_sw_data_2_V);
//sw_data_3_V
aesl_fh.touch(AUTOTB_TVIN_sw_data_3_V);
aesl_fh.touch(AUTOTB_TVOUT_sw_data_3_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_sw_data_3_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_sw_data_3_V);
//glblIterIdx
aesl_fh.touch(AUTOTB_TVIN_glblIterIdx);
aesl_fh.touch(AUTOTB_TVOUT_glblIterIdx);
//cycle_cnt
aesl_fh.touch(AUTOTB_TVIN_cycle_cnt);
aesl_fh.touch(AUTOTB_TVOUT_cycle_cnt);
//launch_recv
aesl_fh.touch(AUTOTB_TVIN_launch_recv);
aesl_fh.touch(AUTOTB_TVOUT_launch_recv);
//resWrite
aesl_fh.touch(AUTOTB_TVIN_resWrite);
aesl_fh.touch(AUTOTB_TVOUT_resWrite);
//tmp_dist_0
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_0);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_0);
//tmp_dist_1
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_1);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_1);
//tmp_dist_2
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_2);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_2);
//tmp_dist_3
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_3);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_3);
//tmp_dist_4
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_4);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_4);
//tmp_dist_5
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_5);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_5);
//tmp_dist_6
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_6);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_6);
//tmp_dist_7
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_7);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_7);
//tmp_dist_8
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_8);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_8);
//tmp_dist_9
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_9);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_9);
//tmp_dist_10
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_10);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_10);
//tmp_dist_11
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_11);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_11);
//tmp_dist_12
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_12);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_12);
//tmp_dist_13
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_13);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_13);
//tmp_dist_14
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_14);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_14);
//tmp_dist_15
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_15);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_15);
//tmp_dist_16
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_16);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_16);
//tmp_dist_17
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_17);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_17);
//tmp_dist_18
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_18);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_18);
//tmp_dist_19
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_19);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_19);
//tmp_dist_20
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_20);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_20);
//tmp_dist_21
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_21);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_21);
//tmp_dist_22
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_22);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_22);
//tmp_dist_23
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_23);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_23);
//tmp_dist_24
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_24);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_24);
//tmp_dist_25
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_25);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_25);
//tmp_dist_26
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_26);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_26);
//tmp_dist_27
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_27);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_27);
//tmp_dist_28
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_28);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_28);
//tmp_dist_29
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_29);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_29);
//tmp_dist_30
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_30);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_30);
//tmp_dist_31
aesl_fh.touch(AUTOTB_TVIN_tmp_dist_31);
aesl_fh.touch(AUTOTB_TVOUT_tmp_dist_31);
CodeState = DUMP_INPUTS;
// print CSR_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_CSR_V, __xlx_sprintf_buffer.data());
  {
    sc_bv<33> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_CSR_V);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_CSR_V, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.CSR_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_CSR_V, __xlx_sprintf_buffer.data());
}
// print CSR_E Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_CSR_E, __xlx_sprintf_buffer.data());
  {
    sc_bv<33> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_CSR_E);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_CSR_E, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.CSR_E_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_CSR_E, __xlx_sprintf_buffer.data());
}
// print glbl_d Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_glbl_d, __xlx_sprintf_buffer.data());
  {
    sc_bv<33> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_glbl_d);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_glbl_d, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.glbl_d_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_glbl_d, __xlx_sprintf_buffer.data());
}
// print rd_baseAddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_baseAddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_rd_baseAddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_rd_baseAddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rd_baseAddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_baseAddr, __xlx_sprintf_buffer.data());
}
// print wr_baseAddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_wr_baseAddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_wr_baseAddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_wr_baseAddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_baseAddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_wr_baseAddr, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s20__> __xlx_apatb_param_rd_port_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->empty())
    __xlx_apatb_param_rd_port_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->read());
  for (int i = 0; i < __xlx_apatb_param_rd_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->write(__xlx_apatb_param_rd_port_stream_buf[i]);
  }
long __xlx_apatb_param_rd_port_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_wr_port_stream_buf;
long __xlx_apatb_param_wr_port_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->size();
std::vector<int> __xlx_apatb_param_rd_req_stream_buf;
long __xlx_apatb_param_rd_req_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_rd_req)->size();
// print wr_len Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_wr_len, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_wr_len);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_wr_len, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_len_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_wr_len, __xlx_sprintf_buffer.data());
}
// print rd_start Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_start, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_rd_start);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_rd_start, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rd_start_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_start, __xlx_sprintf_buffer.data());
}
// print wr_start Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_wr_start, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_wr_start);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_wr_start, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_start_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_wr_start, __xlx_sprintf_buffer.data());
}
// print N_Vertex Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_N_Vertex, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_N_Vertex);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_N_Vertex, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.N_Vertex_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_N_Vertex, __xlx_sprintf_buffer.data());
}
// print root Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_root, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_root);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_root, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.root_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_root, __xlx_sprintf_buffer.data());
}
// print peID Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_peID, __xlx_sprintf_buffer.data());
  {
    sc_bv<8> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_peID);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_peID, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.peID_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_peID, __xlx_sprintf_buffer.data());
}
std::vector<int> __xlx_apatb_param_sw_data_0_stream_buf;
long __xlx_apatb_param_sw_data_0_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->size();
std::vector<int> __xlx_apatb_param_sw_data_1_stream_buf;
long __xlx_apatb_param_sw_data_1_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->size();
std::vector<int> __xlx_apatb_param_sw_data_2_stream_buf;
long __xlx_apatb_param_sw_data_2_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->size();
std::vector<int> __xlx_apatb_param_sw_data_3_stream_buf;
long __xlx_apatb_param_sw_data_3_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->size();
// print glblIterIdx Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_glblIterIdx, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_glblIterIdx);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_glblIterIdx, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.glblIterIdx_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_glblIterIdx, __xlx_sprintf_buffer.data());
}
// print cycle_cnt Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cycle_cnt, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cycle_cnt);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cycle_cnt, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cycle_cnt_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cycle_cnt, __xlx_sprintf_buffer.data());
}
// print launch_recv Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_launch_recv, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_launch_recv);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_launch_recv, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.launch_recv_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_launch_recv, __xlx_sprintf_buffer.data());
}
// print resWrite Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)&__xlx_apatb_param_resWrite);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.resWrite_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_0 = 0;
// print tmp_dist_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_0 = 0*8;
  if (__xlx_apatb_param_tmp_dist_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_0)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_1 = 0;
// print tmp_dist_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_1 = 0*8;
  if (__xlx_apatb_param_tmp_dist_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_2 = 0;
// print tmp_dist_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_2 = 0*8;
  if (__xlx_apatb_param_tmp_dist_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_3 = 0;
// print tmp_dist_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_3 = 0*8;
  if (__xlx_apatb_param_tmp_dist_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_4 = 0;
// print tmp_dist_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_4 = 0*8;
  if (__xlx_apatb_param_tmp_dist_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_4)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_4, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_5 = 0;
// print tmp_dist_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_5 = 0*8;
  if (__xlx_apatb_param_tmp_dist_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_5)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_5, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_6 = 0;
// print tmp_dist_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_6 = 0*8;
  if (__xlx_apatb_param_tmp_dist_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_6)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_6, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_7 = 0;
// print tmp_dist_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_7 = 0*8;
  if (__xlx_apatb_param_tmp_dist_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_7)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_7, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_7, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_8 = 0;
// print tmp_dist_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_8, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_8 = 0*8;
  if (__xlx_apatb_param_tmp_dist_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_8)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_8, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_8, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_9 = 0;
// print tmp_dist_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_9, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_9 = 0*8;
  if (__xlx_apatb_param_tmp_dist_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_9)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_9, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_9, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_10 = 0;
// print tmp_dist_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_10, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_10 = 0*8;
  if (__xlx_apatb_param_tmp_dist_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_10)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_10, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_10, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_11 = 0;
// print tmp_dist_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_11, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_11 = 0*8;
  if (__xlx_apatb_param_tmp_dist_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_11)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_11, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_11, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_12 = 0;
// print tmp_dist_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_12, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_12 = 0*8;
  if (__xlx_apatb_param_tmp_dist_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_12)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_12, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_12, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_13 = 0;
// print tmp_dist_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_13, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_13 = 0*8;
  if (__xlx_apatb_param_tmp_dist_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_13)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_13, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_13, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_14 = 0;
// print tmp_dist_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_14, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_14 = 0*8;
  if (__xlx_apatb_param_tmp_dist_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_14)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_14, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_14, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_15 = 0;
// print tmp_dist_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_15, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_15 = 0*8;
  if (__xlx_apatb_param_tmp_dist_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_15)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_15, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_15, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_16 = 0;
// print tmp_dist_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_16, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_16 = 0*8;
  if (__xlx_apatb_param_tmp_dist_16) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_16)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_16, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_16, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_17 = 0;
// print tmp_dist_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_17, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_17 = 0*8;
  if (__xlx_apatb_param_tmp_dist_17) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_17)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_17, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_17, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_18 = 0;
// print tmp_dist_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_18, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_18 = 0*8;
  if (__xlx_apatb_param_tmp_dist_18) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_18)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_18, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_18, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_19 = 0;
// print tmp_dist_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_19, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_19 = 0*8;
  if (__xlx_apatb_param_tmp_dist_19) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_19)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_19, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_19, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_20 = 0;
// print tmp_dist_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_20, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_20 = 0*8;
  if (__xlx_apatb_param_tmp_dist_20) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_20)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_20, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_20, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_21 = 0;
// print tmp_dist_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_21, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_21 = 0*8;
  if (__xlx_apatb_param_tmp_dist_21) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_21)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_21, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_21, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_22 = 0;
// print tmp_dist_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_22, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_22 = 0*8;
  if (__xlx_apatb_param_tmp_dist_22) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_22)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_22, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_22, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_23 = 0;
// print tmp_dist_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_23, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_23 = 0*8;
  if (__xlx_apatb_param_tmp_dist_23) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_23)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_23, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_23, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_24 = 0;
// print tmp_dist_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_24, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_24 = 0*8;
  if (__xlx_apatb_param_tmp_dist_24) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_24)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_24, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_24, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_25 = 0;
// print tmp_dist_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_25, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_25 = 0*8;
  if (__xlx_apatb_param_tmp_dist_25) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_25)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_25, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_25, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_26 = 0;
// print tmp_dist_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_26, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_26 = 0*8;
  if (__xlx_apatb_param_tmp_dist_26) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_26)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_26, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_26, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_27 = 0;
// print tmp_dist_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_27, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_27 = 0*8;
  if (__xlx_apatb_param_tmp_dist_27) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_27)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_27, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_27, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_28 = 0;
// print tmp_dist_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_28, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_28 = 0*8;
  if (__xlx_apatb_param_tmp_dist_28) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_28)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_28, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_28, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_29 = 0;
// print tmp_dist_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_29, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_29 = 0*8;
  if (__xlx_apatb_param_tmp_dist_29) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_29)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_29, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_29, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_30 = 0;
// print tmp_dist_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_30, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_30 = 0*8;
  if (__xlx_apatb_param_tmp_dist_30) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_30)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_30, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_30, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_tmp_dist_31 = 0;
// print tmp_dist_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_31, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_31 = 0*8;
  if (__xlx_apatb_param_tmp_dist_31) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_31)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tmp_dist_31, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tmp_dist_31, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
BFS_Scatter_hw_stub_wrapper(__xlx_apatb_param_CSR_V, __xlx_apatb_param_CSR_E, __xlx_apatb_param_glbl_d, __xlx_apatb_param_rd_baseAddr, __xlx_apatb_param_wr_baseAddr, __xlx_apatb_param_rd_port, __xlx_apatb_param_wr_port, __xlx_apatb_param_rd_req, __xlx_apatb_param_wr_len, __xlx_apatb_param_rd_start, __xlx_apatb_param_wr_start, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_root, __xlx_apatb_param_peID, __xlx_apatb_param_sw_data_0, __xlx_apatb_param_sw_data_1, __xlx_apatb_param_sw_data_2, __xlx_apatb_param_sw_data_3, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cycle_cnt, __xlx_apatb_param_launch_recv, __xlx_apatb_param_resWrite, __xlx_apatb_param_tmp_dist_0, __xlx_apatb_param_tmp_dist_1, __xlx_apatb_param_tmp_dist_2, __xlx_apatb_param_tmp_dist_3, __xlx_apatb_param_tmp_dist_4, __xlx_apatb_param_tmp_dist_5, __xlx_apatb_param_tmp_dist_6, __xlx_apatb_param_tmp_dist_7, __xlx_apatb_param_tmp_dist_8, __xlx_apatb_param_tmp_dist_9, __xlx_apatb_param_tmp_dist_10, __xlx_apatb_param_tmp_dist_11, __xlx_apatb_param_tmp_dist_12, __xlx_apatb_param_tmp_dist_13, __xlx_apatb_param_tmp_dist_14, __xlx_apatb_param_tmp_dist_15, __xlx_apatb_param_tmp_dist_16, __xlx_apatb_param_tmp_dist_17, __xlx_apatb_param_tmp_dist_18, __xlx_apatb_param_tmp_dist_19, __xlx_apatb_param_tmp_dist_20, __xlx_apatb_param_tmp_dist_21, __xlx_apatb_param_tmp_dist_22, __xlx_apatb_param_tmp_dist_23, __xlx_apatb_param_tmp_dist_24, __xlx_apatb_param_tmp_dist_25, __xlx_apatb_param_tmp_dist_26, __xlx_apatb_param_tmp_dist_27, __xlx_apatb_param_tmp_dist_28, __xlx_apatb_param_tmp_dist_29, __xlx_apatb_param_tmp_dist_30, __xlx_apatb_param_tmp_dist_31);
CodeState = DUMP_OUTPUTS;
// print rd_baseAddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_rd_baseAddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_rd_baseAddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_rd_baseAddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rd_baseAddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_rd_baseAddr, __xlx_sprintf_buffer.data());
}
// print wr_baseAddr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_baseAddr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_wr_baseAddr);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_wr_baseAddr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_baseAddr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_baseAddr, __xlx_sprintf_buffer.data());
}
long __xlx_apatb_param_rd_port_stream_buf_final_size = __xlx_apatb_param_rd_port_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_port_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_rd_port_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_rd_port_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_rd_port_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_rd_port_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_rd_port_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_rd_port_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_rd_port_stream_buf_final_size, &tcl_file.rd_port_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_rd_port_stream_buf_final_size, &tcl_file.rd_port_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_rd_port_stream_buf_final_size, &tcl_file.rd_port_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_rd_port_stream_buf_final_size, &tcl_file.rd_port_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rd_port_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_rd_port_stream_buf_final_size > 0) {
  long rd_port_V_data_V_stream_ingress_size = __xlx_apatb_param_rd_port_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_port_stream_buf_final_size; j != e; j++) {
    rd_port_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long rd_port_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_rd_port_stream_buf_final_size > 0) {
  long rd_port_V_keep_V_stream_ingress_size = __xlx_apatb_param_rd_port_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_port_stream_buf_final_size; j != e; j++) {
    rd_port_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long rd_port_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_rd_port_stream_buf_final_size > 0) {
  long rd_port_V_strb_V_stream_ingress_size = __xlx_apatb_param_rd_port_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_port_stream_buf_final_size; j != e; j++) {
    rd_port_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long rd_port_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_rd_port_stream_buf_final_size > 0) {
  long rd_port_V_last_V_stream_ingress_size = __xlx_apatb_param_rd_port_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_port_stream_buf_final_size; j != e; j++) {
    rd_port_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long rd_port_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", rd_port_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_rd_port_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_rd_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_rd_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_rd_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_rd_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_rd_port_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_wr_port_stream_buf_final_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->size() - __xlx_apatb_param_wr_port_stream_buf_size;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->empty())
    __xlx_apatb_param_wr_port_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->read());
  for (int i = 0; i < __xlx_apatb_param_wr_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->write(__xlx_apatb_param_wr_port_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_wr_port_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_wr_port_stream_buf[__xlx_apatb_param_wr_port_stream_buf_size+j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_wr_port_stream_buf[__xlx_apatb_param_wr_port_stream_buf_size+j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_wr_port_stream_buf[__xlx_apatb_param_wr_port_stream_buf_size+j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_wr_port_stream_buf[__xlx_apatb_param_wr_port_stream_buf_size+j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_wr_port_stream_buf_final_size, &tcl_file.wr_port_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_wr_port_stream_buf_final_size, &tcl_file.wr_port_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_wr_port_stream_buf_final_size, &tcl_file.wr_port_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_wr_port_stream_buf_final_size, &tcl_file.wr_port_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_wr_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_wr_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_wr_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_wr_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_wr_port_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_rd_req_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_rd_req)->size() - __xlx_apatb_param_rd_req_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_rd_req)->empty())
    __xlx_apatb_param_rd_req_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_rd_req)->read());
  for (int i = 0; i < __xlx_apatb_param_rd_req_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_rd_req)->write(__xlx_apatb_param_rd_req_stream_buf[i]);
  }
// print rd_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_rd_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_rd_req_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_rd_req_stream_buf[__xlx_apatb_param_rd_req_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_rd_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_rd_req_stream_buf_final_size, &tcl_file.rd_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_rd_req_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_rd_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_rd_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_rd_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_rd_req_V, __xlx_sprintf_buffer.data());
}// print wr_len Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_len, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_wr_len);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_wr_len, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_len_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_len, __xlx_sprintf_buffer.data());
}
// print rd_start Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_rd_start, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_rd_start);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_rd_start, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rd_start_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_rd_start, __xlx_sprintf_buffer.data());
}
// print wr_start Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_wr_start, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_wr_start);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_wr_start, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.wr_start_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_wr_start, __xlx_sprintf_buffer.data());
}
long __xlx_apatb_param_sw_data_0_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->size() - __xlx_apatb_param_sw_data_0_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->empty())
    __xlx_apatb_param_sw_data_0_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->read());
  for (int i = 0; i < __xlx_apatb_param_sw_data_0_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->write(__xlx_apatb_param_sw_data_0_stream_buf[i]);
  }
// print sw_data_0_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_sw_data_0_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_sw_data_0_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_sw_data_0_stream_buf[__xlx_apatb_param_sw_data_0_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_sw_data_0_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_sw_data_0_stream_buf_final_size, &tcl_file.sw_data_0_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_sw_data_0_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_0_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_sw_data_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_0_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_0_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_sw_data_1_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->size() - __xlx_apatb_param_sw_data_1_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->empty())
    __xlx_apatb_param_sw_data_1_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->read());
  for (int i = 0; i < __xlx_apatb_param_sw_data_1_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->write(__xlx_apatb_param_sw_data_1_stream_buf[i]);
  }
// print sw_data_1_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_sw_data_1_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_sw_data_1_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_sw_data_1_stream_buf[__xlx_apatb_param_sw_data_1_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_sw_data_1_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_sw_data_1_stream_buf_final_size, &tcl_file.sw_data_1_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_sw_data_1_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_1_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_sw_data_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_1_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_1_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_sw_data_2_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->size() - __xlx_apatb_param_sw_data_2_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->empty())
    __xlx_apatb_param_sw_data_2_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->read());
  for (int i = 0; i < __xlx_apatb_param_sw_data_2_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->write(__xlx_apatb_param_sw_data_2_stream_buf[i]);
  }
// print sw_data_2_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_sw_data_2_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_sw_data_2_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_sw_data_2_stream_buf[__xlx_apatb_param_sw_data_2_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_sw_data_2_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_sw_data_2_stream_buf_final_size, &tcl_file.sw_data_2_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_sw_data_2_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_2_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_sw_data_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_2_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_2_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_sw_data_3_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->size() - __xlx_apatb_param_sw_data_3_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->empty())
    __xlx_apatb_param_sw_data_3_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->read());
  for (int i = 0; i < __xlx_apatb_param_sw_data_3_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->write(__xlx_apatb_param_sw_data_3_stream_buf[i]);
  }
// print sw_data_3_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_sw_data_3_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_sw_data_3_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_sw_data_3_stream_buf[__xlx_apatb_param_sw_data_3_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_sw_data_3_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_sw_data_3_stream_buf_final_size, &tcl_file.sw_data_3_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_sw_data_3_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_3_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_sw_data_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_3_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_sw_data_3_V, __xlx_sprintf_buffer.data());
}// print launch_recv Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_launch_recv, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_launch_recv);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_launch_recv, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.launch_recv_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_launch_recv, __xlx_sprintf_buffer.data());
}
// print tmp_dist_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_0 = 0*8;
  if (__xlx_apatb_param_tmp_dist_0) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_0)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_0, __xlx_sprintf_buffer.data());
}
// print tmp_dist_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_1 = 0*8;
  if (__xlx_apatb_param_tmp_dist_1) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_1)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_1, __xlx_sprintf_buffer.data());
}
// print tmp_dist_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_2 = 0*8;
  if (__xlx_apatb_param_tmp_dist_2) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_2)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_2, __xlx_sprintf_buffer.data());
}
// print tmp_dist_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_3 = 0*8;
  if (__xlx_apatb_param_tmp_dist_3) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_3)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_3, __xlx_sprintf_buffer.data());
}
// print tmp_dist_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_4 = 0*8;
  if (__xlx_apatb_param_tmp_dist_4) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_4)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_4, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_4, __xlx_sprintf_buffer.data());
}
// print tmp_dist_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_5 = 0*8;
  if (__xlx_apatb_param_tmp_dist_5) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_5)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_5, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_5, __xlx_sprintf_buffer.data());
}
// print tmp_dist_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_6 = 0*8;
  if (__xlx_apatb_param_tmp_dist_6) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_6)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_6, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_6, __xlx_sprintf_buffer.data());
}
// print tmp_dist_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_7 = 0*8;
  if (__xlx_apatb_param_tmp_dist_7) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_7)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_7, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_7, __xlx_sprintf_buffer.data());
}
// print tmp_dist_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_8, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_8 = 0*8;
  if (__xlx_apatb_param_tmp_dist_8) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_8)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_8, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_8, __xlx_sprintf_buffer.data());
}
// print tmp_dist_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_9, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_9 = 0*8;
  if (__xlx_apatb_param_tmp_dist_9) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_9)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_9, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_9, __xlx_sprintf_buffer.data());
}
// print tmp_dist_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_10, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_10 = 0*8;
  if (__xlx_apatb_param_tmp_dist_10) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_10)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_10, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_10, __xlx_sprintf_buffer.data());
}
// print tmp_dist_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_11, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_11 = 0*8;
  if (__xlx_apatb_param_tmp_dist_11) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_11)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_11, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_11, __xlx_sprintf_buffer.data());
}
// print tmp_dist_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_12, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_12 = 0*8;
  if (__xlx_apatb_param_tmp_dist_12) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_12)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_12, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_12, __xlx_sprintf_buffer.data());
}
// print tmp_dist_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_13, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_13 = 0*8;
  if (__xlx_apatb_param_tmp_dist_13) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_13)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_13, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_13, __xlx_sprintf_buffer.data());
}
// print tmp_dist_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_14, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_14 = 0*8;
  if (__xlx_apatb_param_tmp_dist_14) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_14)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_14, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_14, __xlx_sprintf_buffer.data());
}
// print tmp_dist_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_15, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_15 = 0*8;
  if (__xlx_apatb_param_tmp_dist_15) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_15)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_15, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_15, __xlx_sprintf_buffer.data());
}
// print tmp_dist_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_16, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_16 = 0*8;
  if (__xlx_apatb_param_tmp_dist_16) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_16)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_16, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_16, __xlx_sprintf_buffer.data());
}
// print tmp_dist_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_17, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_17 = 0*8;
  if (__xlx_apatb_param_tmp_dist_17) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_17)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_17, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_17, __xlx_sprintf_buffer.data());
}
// print tmp_dist_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_18, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_18 = 0*8;
  if (__xlx_apatb_param_tmp_dist_18) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_18)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_18, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_18, __xlx_sprintf_buffer.data());
}
// print tmp_dist_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_19, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_19 = 0*8;
  if (__xlx_apatb_param_tmp_dist_19) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_19)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_19, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_19, __xlx_sprintf_buffer.data());
}
// print tmp_dist_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_20, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_20 = 0*8;
  if (__xlx_apatb_param_tmp_dist_20) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_20)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_20, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_20, __xlx_sprintf_buffer.data());
}
// print tmp_dist_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_21, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_21 = 0*8;
  if (__xlx_apatb_param_tmp_dist_21) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_21)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_21, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_21, __xlx_sprintf_buffer.data());
}
// print tmp_dist_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_22, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_22 = 0*8;
  if (__xlx_apatb_param_tmp_dist_22) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_22)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_22, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_22, __xlx_sprintf_buffer.data());
}
// print tmp_dist_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_23, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_23 = 0*8;
  if (__xlx_apatb_param_tmp_dist_23) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_23)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_23, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_23, __xlx_sprintf_buffer.data());
}
// print tmp_dist_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_24, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_24 = 0*8;
  if (__xlx_apatb_param_tmp_dist_24) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_24)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_24, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_24, __xlx_sprintf_buffer.data());
}
// print tmp_dist_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_25, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_25 = 0*8;
  if (__xlx_apatb_param_tmp_dist_25) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_25)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_25, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_25, __xlx_sprintf_buffer.data());
}
// print tmp_dist_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_26, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_26 = 0*8;
  if (__xlx_apatb_param_tmp_dist_26) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_26)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_26, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_26, __xlx_sprintf_buffer.data());
}
// print tmp_dist_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_27, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_27 = 0*8;
  if (__xlx_apatb_param_tmp_dist_27) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_27)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_27, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_27, __xlx_sprintf_buffer.data());
}
// print tmp_dist_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_28, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_28 = 0*8;
  if (__xlx_apatb_param_tmp_dist_28) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_28)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_28, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_28, __xlx_sprintf_buffer.data());
}
// print tmp_dist_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_29, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_29 = 0*8;
  if (__xlx_apatb_param_tmp_dist_29) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_29)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_29, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_29, __xlx_sprintf_buffer.data());
}
// print tmp_dist_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_30, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_30 = 0*8;
  if (__xlx_apatb_param_tmp_dist_30) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_30)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_30, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_30, __xlx_sprintf_buffer.data());
}
// print tmp_dist_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_31, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_tmp_dist_31 = 0*8;
  if (__xlx_apatb_param_tmp_dist_31) {
    for (int j = 0  - 0, e = 4096 - 0; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_tmp_dist_31)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_tmp_dist_31, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(4096, &tcl_file.tmp_dist_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_tmp_dist_31, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
