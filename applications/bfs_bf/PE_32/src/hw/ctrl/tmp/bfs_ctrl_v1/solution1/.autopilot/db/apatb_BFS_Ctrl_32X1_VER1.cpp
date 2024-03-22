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
#define AUTOTB_TVIN_dummyParam "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_dummyParam.dat"
#define AUTOTB_TVOUT_dummyParam "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_dummyParam.dat"
// wrapc file define:
#define AUTOTB_TVIN_N_Vertex "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_N_Vertex.dat"
#define AUTOTB_TVOUT_N_Vertex "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_N_Vertex.dat"
// wrapc file define:
#define AUTOTB_TVIN_resWrite "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_resWrite.dat"
#define AUTOTB_TVOUT_resWrite "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_resWrite.dat"
// wrapc file define:
#define AUTOTB_TVIN_glblIterIdx "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_glblIterIdx.dat"
#define AUTOTB_TVOUT_glblIterIdx "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_glblIterIdx.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_0.dat"
#define AUTOTB_TVOUT_cnt_scatter_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_1.dat"
#define AUTOTB_TVOUT_cnt_scatter_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_2.dat"
#define AUTOTB_TVOUT_cnt_scatter_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_3.dat"
#define AUTOTB_TVOUT_cnt_scatter_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_4.dat"
#define AUTOTB_TVOUT_cnt_scatter_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_5.dat"
#define AUTOTB_TVOUT_cnt_scatter_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_6.dat"
#define AUTOTB_TVOUT_cnt_scatter_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_7.dat"
#define AUTOTB_TVOUT_cnt_scatter_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_8.dat"
#define AUTOTB_TVOUT_cnt_scatter_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_9.dat"
#define AUTOTB_TVOUT_cnt_scatter_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_10.dat"
#define AUTOTB_TVOUT_cnt_scatter_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_11.dat"
#define AUTOTB_TVOUT_cnt_scatter_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_12.dat"
#define AUTOTB_TVOUT_cnt_scatter_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_13.dat"
#define AUTOTB_TVOUT_cnt_scatter_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_14.dat"
#define AUTOTB_TVOUT_cnt_scatter_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_15.dat"
#define AUTOTB_TVOUT_cnt_scatter_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_16.dat"
#define AUTOTB_TVOUT_cnt_scatter_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_17.dat"
#define AUTOTB_TVOUT_cnt_scatter_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_18.dat"
#define AUTOTB_TVOUT_cnt_scatter_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_19.dat"
#define AUTOTB_TVOUT_cnt_scatter_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_20.dat"
#define AUTOTB_TVOUT_cnt_scatter_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_21.dat"
#define AUTOTB_TVOUT_cnt_scatter_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_22.dat"
#define AUTOTB_TVOUT_cnt_scatter_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_23.dat"
#define AUTOTB_TVOUT_cnt_scatter_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_24.dat"
#define AUTOTB_TVOUT_cnt_scatter_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_25.dat"
#define AUTOTB_TVOUT_cnt_scatter_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_26.dat"
#define AUTOTB_TVOUT_cnt_scatter_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_27.dat"
#define AUTOTB_TVOUT_cnt_scatter_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_28.dat"
#define AUTOTB_TVOUT_cnt_scatter_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_29.dat"
#define AUTOTB_TVOUT_cnt_scatter_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_30.dat"
#define AUTOTB_TVOUT_cnt_scatter_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_scatter_31.dat"
#define AUTOTB_TVOUT_cnt_scatter_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_31.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_0.dat"
#define AUTOTB_TVOUT_cnt_gather_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_1.dat"
#define AUTOTB_TVOUT_cnt_gather_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_2.dat"
#define AUTOTB_TVOUT_cnt_gather_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_3.dat"
#define AUTOTB_TVOUT_cnt_gather_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_4.dat"
#define AUTOTB_TVOUT_cnt_gather_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_5.dat"
#define AUTOTB_TVOUT_cnt_gather_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_6.dat"
#define AUTOTB_TVOUT_cnt_gather_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_7.dat"
#define AUTOTB_TVOUT_cnt_gather_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_8.dat"
#define AUTOTB_TVOUT_cnt_gather_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_9.dat"
#define AUTOTB_TVOUT_cnt_gather_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_10.dat"
#define AUTOTB_TVOUT_cnt_gather_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_11.dat"
#define AUTOTB_TVOUT_cnt_gather_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_12.dat"
#define AUTOTB_TVOUT_cnt_gather_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_13.dat"
#define AUTOTB_TVOUT_cnt_gather_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_14.dat"
#define AUTOTB_TVOUT_cnt_gather_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_15.dat"
#define AUTOTB_TVOUT_cnt_gather_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_16.dat"
#define AUTOTB_TVOUT_cnt_gather_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_17.dat"
#define AUTOTB_TVOUT_cnt_gather_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_18.dat"
#define AUTOTB_TVOUT_cnt_gather_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_19.dat"
#define AUTOTB_TVOUT_cnt_gather_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_20.dat"
#define AUTOTB_TVOUT_cnt_gather_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_21.dat"
#define AUTOTB_TVOUT_cnt_gather_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_22.dat"
#define AUTOTB_TVOUT_cnt_gather_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_23.dat"
#define AUTOTB_TVOUT_cnt_gather_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_24.dat"
#define AUTOTB_TVOUT_cnt_gather_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_25.dat"
#define AUTOTB_TVOUT_cnt_gather_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_26.dat"
#define AUTOTB_TVOUT_cnt_gather_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_27.dat"
#define AUTOTB_TVOUT_cnt_gather_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_28.dat"
#define AUTOTB_TVOUT_cnt_gather_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_29.dat"
#define AUTOTB_TVOUT_cnt_gather_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_30.dat"
#define AUTOTB_TVOUT_cnt_gather_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_cnt_gather_31.dat"
#define AUTOTB_TVOUT_cnt_gather_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_31.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_0.dat"
#define AUTOTB_TVOUT_exist_0 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_1.dat"
#define AUTOTB_TVOUT_exist_1 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_2.dat"
#define AUTOTB_TVOUT_exist_2 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_3.dat"
#define AUTOTB_TVOUT_exist_3 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_4.dat"
#define AUTOTB_TVOUT_exist_4 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_5.dat"
#define AUTOTB_TVOUT_exist_5 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_6.dat"
#define AUTOTB_TVOUT_exist_6 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_7.dat"
#define AUTOTB_TVOUT_exist_7 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_8.dat"
#define AUTOTB_TVOUT_exist_8 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_9.dat"
#define AUTOTB_TVOUT_exist_9 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_10.dat"
#define AUTOTB_TVOUT_exist_10 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_11.dat"
#define AUTOTB_TVOUT_exist_11 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_12.dat"
#define AUTOTB_TVOUT_exist_12 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_13.dat"
#define AUTOTB_TVOUT_exist_13 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_14.dat"
#define AUTOTB_TVOUT_exist_14 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_15.dat"
#define AUTOTB_TVOUT_exist_15 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_16.dat"
#define AUTOTB_TVOUT_exist_16 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_17.dat"
#define AUTOTB_TVOUT_exist_17 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_18.dat"
#define AUTOTB_TVOUT_exist_18 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_19.dat"
#define AUTOTB_TVOUT_exist_19 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_20.dat"
#define AUTOTB_TVOUT_exist_20 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_21.dat"
#define AUTOTB_TVOUT_exist_21 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_22.dat"
#define AUTOTB_TVOUT_exist_22 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_23.dat"
#define AUTOTB_TVOUT_exist_23 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_24.dat"
#define AUTOTB_TVOUT_exist_24 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_25.dat"
#define AUTOTB_TVOUT_exist_25 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_26.dat"
#define AUTOTB_TVOUT_exist_26 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_27.dat"
#define AUTOTB_TVOUT_exist_27 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_28.dat"
#define AUTOTB_TVOUT_exist_28 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_29.dat"
#define AUTOTB_TVOUT_exist_29 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_30.dat"
#define AUTOTB_TVOUT_exist_30 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvin_exist_31.dat"
#define AUTOTB_TVOUT_exist_31 "../tv/cdatafile/c.BFS_Ctrl_32X1_VER1.autotvout_exist_31.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_dummyParam "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_dummyParam.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_N_Vertex "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_N_Vertex.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_resWrite "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_resWrite.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_glblIterIdx "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_glblIterIdx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_0 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_1 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_2 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_3 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_4 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_5 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_6 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_7 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_8 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_9 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_10 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_11 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_12 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_13 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_14 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_15 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_16 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_17 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_18 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_19 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_20 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_21 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_22 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_23 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_24 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_25 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_26 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_27 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_28 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_29 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_30 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_31 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_scatter_31.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_0 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_1 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_2 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_3 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_4 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_5 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_6 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_7 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_8 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_9 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_10 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_11 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_12 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_13 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_14 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_15 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_16 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_17 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_18 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_19 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_20 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_21 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_22 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_23 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_24 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_25 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_26 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_27 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_28 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_29 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_30 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_31 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_cnt_gather_31.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_0 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_1 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_2 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_3 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_4 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_5 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_6 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_7 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_8 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_9 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_10 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_11 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_12 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_13 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_14 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_15 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_16 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_17 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_18 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_19 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_20 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_21 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_22 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_23 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_24 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_25 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_26 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_27 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_28 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_29 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_30 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_31 "../tv/rtldatafile/rtl.BFS_Ctrl_32X1_VER1.autotvout_exist_31.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  dummyParam_depth = 0;
  N_Vertex_depth = 0;
  resWrite_depth = 0;
  glblIterIdx_depth = 0;
  cnt_scatter_0_depth = 0;
  cnt_scatter_1_depth = 0;
  cnt_scatter_2_depth = 0;
  cnt_scatter_3_depth = 0;
  cnt_scatter_4_depth = 0;
  cnt_scatter_5_depth = 0;
  cnt_scatter_6_depth = 0;
  cnt_scatter_7_depth = 0;
  cnt_scatter_8_depth = 0;
  cnt_scatter_9_depth = 0;
  cnt_scatter_10_depth = 0;
  cnt_scatter_11_depth = 0;
  cnt_scatter_12_depth = 0;
  cnt_scatter_13_depth = 0;
  cnt_scatter_14_depth = 0;
  cnt_scatter_15_depth = 0;
  cnt_scatter_16_depth = 0;
  cnt_scatter_17_depth = 0;
  cnt_scatter_18_depth = 0;
  cnt_scatter_19_depth = 0;
  cnt_scatter_20_depth = 0;
  cnt_scatter_21_depth = 0;
  cnt_scatter_22_depth = 0;
  cnt_scatter_23_depth = 0;
  cnt_scatter_24_depth = 0;
  cnt_scatter_25_depth = 0;
  cnt_scatter_26_depth = 0;
  cnt_scatter_27_depth = 0;
  cnt_scatter_28_depth = 0;
  cnt_scatter_29_depth = 0;
  cnt_scatter_30_depth = 0;
  cnt_scatter_31_depth = 0;
  cnt_gather_0_depth = 0;
  cnt_gather_1_depth = 0;
  cnt_gather_2_depth = 0;
  cnt_gather_3_depth = 0;
  cnt_gather_4_depth = 0;
  cnt_gather_5_depth = 0;
  cnt_gather_6_depth = 0;
  cnt_gather_7_depth = 0;
  cnt_gather_8_depth = 0;
  cnt_gather_9_depth = 0;
  cnt_gather_10_depth = 0;
  cnt_gather_11_depth = 0;
  cnt_gather_12_depth = 0;
  cnt_gather_13_depth = 0;
  cnt_gather_14_depth = 0;
  cnt_gather_15_depth = 0;
  cnt_gather_16_depth = 0;
  cnt_gather_17_depth = 0;
  cnt_gather_18_depth = 0;
  cnt_gather_19_depth = 0;
  cnt_gather_20_depth = 0;
  cnt_gather_21_depth = 0;
  cnt_gather_22_depth = 0;
  cnt_gather_23_depth = 0;
  cnt_gather_24_depth = 0;
  cnt_gather_25_depth = 0;
  cnt_gather_26_depth = 0;
  cnt_gather_27_depth = 0;
  cnt_gather_28_depth = 0;
  cnt_gather_29_depth = 0;
  cnt_gather_30_depth = 0;
  cnt_gather_31_depth = 0;
  exist_0_depth = 0;
  exist_1_depth = 0;
  exist_2_depth = 0;
  exist_3_depth = 0;
  exist_4_depth = 0;
  exist_5_depth = 0;
  exist_6_depth = 0;
  exist_7_depth = 0;
  exist_8_depth = 0;
  exist_9_depth = 0;
  exist_10_depth = 0;
  exist_11_depth = 0;
  exist_12_depth = 0;
  exist_13_depth = 0;
  exist_14_depth = 0;
  exist_15_depth = 0;
  exist_16_depth = 0;
  exist_17_depth = 0;
  exist_18_depth = 0;
  exist_19_depth = 0;
  exist_20_depth = 0;
  exist_21_depth = 0;
  exist_22_depth = 0;
  exist_23_depth = 0;
  exist_24_depth = 0;
  exist_25_depth = 0;
  exist_26_depth = 0;
  exist_27_depth = 0;
  exist_28_depth = 0;
  exist_29_depth = 0;
  exist_30_depth = 0;
  exist_31_depth = 0;
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
  total_list << "{dummyParam " << dummyParam_depth << "}\n";
  total_list << "{N_Vertex " << N_Vertex_depth << "}\n";
  total_list << "{resWrite " << resWrite_depth << "}\n";
  total_list << "{glblIterIdx " << glblIterIdx_depth << "}\n";
  total_list << "{cnt_scatter_0 " << cnt_scatter_0_depth << "}\n";
  total_list << "{cnt_scatter_1 " << cnt_scatter_1_depth << "}\n";
  total_list << "{cnt_scatter_2 " << cnt_scatter_2_depth << "}\n";
  total_list << "{cnt_scatter_3 " << cnt_scatter_3_depth << "}\n";
  total_list << "{cnt_scatter_4 " << cnt_scatter_4_depth << "}\n";
  total_list << "{cnt_scatter_5 " << cnt_scatter_5_depth << "}\n";
  total_list << "{cnt_scatter_6 " << cnt_scatter_6_depth << "}\n";
  total_list << "{cnt_scatter_7 " << cnt_scatter_7_depth << "}\n";
  total_list << "{cnt_scatter_8 " << cnt_scatter_8_depth << "}\n";
  total_list << "{cnt_scatter_9 " << cnt_scatter_9_depth << "}\n";
  total_list << "{cnt_scatter_10 " << cnt_scatter_10_depth << "}\n";
  total_list << "{cnt_scatter_11 " << cnt_scatter_11_depth << "}\n";
  total_list << "{cnt_scatter_12 " << cnt_scatter_12_depth << "}\n";
  total_list << "{cnt_scatter_13 " << cnt_scatter_13_depth << "}\n";
  total_list << "{cnt_scatter_14 " << cnt_scatter_14_depth << "}\n";
  total_list << "{cnt_scatter_15 " << cnt_scatter_15_depth << "}\n";
  total_list << "{cnt_scatter_16 " << cnt_scatter_16_depth << "}\n";
  total_list << "{cnt_scatter_17 " << cnt_scatter_17_depth << "}\n";
  total_list << "{cnt_scatter_18 " << cnt_scatter_18_depth << "}\n";
  total_list << "{cnt_scatter_19 " << cnt_scatter_19_depth << "}\n";
  total_list << "{cnt_scatter_20 " << cnt_scatter_20_depth << "}\n";
  total_list << "{cnt_scatter_21 " << cnt_scatter_21_depth << "}\n";
  total_list << "{cnt_scatter_22 " << cnt_scatter_22_depth << "}\n";
  total_list << "{cnt_scatter_23 " << cnt_scatter_23_depth << "}\n";
  total_list << "{cnt_scatter_24 " << cnt_scatter_24_depth << "}\n";
  total_list << "{cnt_scatter_25 " << cnt_scatter_25_depth << "}\n";
  total_list << "{cnt_scatter_26 " << cnt_scatter_26_depth << "}\n";
  total_list << "{cnt_scatter_27 " << cnt_scatter_27_depth << "}\n";
  total_list << "{cnt_scatter_28 " << cnt_scatter_28_depth << "}\n";
  total_list << "{cnt_scatter_29 " << cnt_scatter_29_depth << "}\n";
  total_list << "{cnt_scatter_30 " << cnt_scatter_30_depth << "}\n";
  total_list << "{cnt_scatter_31 " << cnt_scatter_31_depth << "}\n";
  total_list << "{cnt_gather_0 " << cnt_gather_0_depth << "}\n";
  total_list << "{cnt_gather_1 " << cnt_gather_1_depth << "}\n";
  total_list << "{cnt_gather_2 " << cnt_gather_2_depth << "}\n";
  total_list << "{cnt_gather_3 " << cnt_gather_3_depth << "}\n";
  total_list << "{cnt_gather_4 " << cnt_gather_4_depth << "}\n";
  total_list << "{cnt_gather_5 " << cnt_gather_5_depth << "}\n";
  total_list << "{cnt_gather_6 " << cnt_gather_6_depth << "}\n";
  total_list << "{cnt_gather_7 " << cnt_gather_7_depth << "}\n";
  total_list << "{cnt_gather_8 " << cnt_gather_8_depth << "}\n";
  total_list << "{cnt_gather_9 " << cnt_gather_9_depth << "}\n";
  total_list << "{cnt_gather_10 " << cnt_gather_10_depth << "}\n";
  total_list << "{cnt_gather_11 " << cnt_gather_11_depth << "}\n";
  total_list << "{cnt_gather_12 " << cnt_gather_12_depth << "}\n";
  total_list << "{cnt_gather_13 " << cnt_gather_13_depth << "}\n";
  total_list << "{cnt_gather_14 " << cnt_gather_14_depth << "}\n";
  total_list << "{cnt_gather_15 " << cnt_gather_15_depth << "}\n";
  total_list << "{cnt_gather_16 " << cnt_gather_16_depth << "}\n";
  total_list << "{cnt_gather_17 " << cnt_gather_17_depth << "}\n";
  total_list << "{cnt_gather_18 " << cnt_gather_18_depth << "}\n";
  total_list << "{cnt_gather_19 " << cnt_gather_19_depth << "}\n";
  total_list << "{cnt_gather_20 " << cnt_gather_20_depth << "}\n";
  total_list << "{cnt_gather_21 " << cnt_gather_21_depth << "}\n";
  total_list << "{cnt_gather_22 " << cnt_gather_22_depth << "}\n";
  total_list << "{cnt_gather_23 " << cnt_gather_23_depth << "}\n";
  total_list << "{cnt_gather_24 " << cnt_gather_24_depth << "}\n";
  total_list << "{cnt_gather_25 " << cnt_gather_25_depth << "}\n";
  total_list << "{cnt_gather_26 " << cnt_gather_26_depth << "}\n";
  total_list << "{cnt_gather_27 " << cnt_gather_27_depth << "}\n";
  total_list << "{cnt_gather_28 " << cnt_gather_28_depth << "}\n";
  total_list << "{cnt_gather_29 " << cnt_gather_29_depth << "}\n";
  total_list << "{cnt_gather_30 " << cnt_gather_30_depth << "}\n";
  total_list << "{cnt_gather_31 " << cnt_gather_31_depth << "}\n";
  total_list << "{exist_0 " << exist_0_depth << "}\n";
  total_list << "{exist_1 " << exist_1_depth << "}\n";
  total_list << "{exist_2 " << exist_2_depth << "}\n";
  total_list << "{exist_3 " << exist_3_depth << "}\n";
  total_list << "{exist_4 " << exist_4_depth << "}\n";
  total_list << "{exist_5 " << exist_5_depth << "}\n";
  total_list << "{exist_6 " << exist_6_depth << "}\n";
  total_list << "{exist_7 " << exist_7_depth << "}\n";
  total_list << "{exist_8 " << exist_8_depth << "}\n";
  total_list << "{exist_9 " << exist_9_depth << "}\n";
  total_list << "{exist_10 " << exist_10_depth << "}\n";
  total_list << "{exist_11 " << exist_11_depth << "}\n";
  total_list << "{exist_12 " << exist_12_depth << "}\n";
  total_list << "{exist_13 " << exist_13_depth << "}\n";
  total_list << "{exist_14 " << exist_14_depth << "}\n";
  total_list << "{exist_15 " << exist_15_depth << "}\n";
  total_list << "{exist_16 " << exist_16_depth << "}\n";
  total_list << "{exist_17 " << exist_17_depth << "}\n";
  total_list << "{exist_18 " << exist_18_depth << "}\n";
  total_list << "{exist_19 " << exist_19_depth << "}\n";
  total_list << "{exist_20 " << exist_20_depth << "}\n";
  total_list << "{exist_21 " << exist_21_depth << "}\n";
  total_list << "{exist_22 " << exist_22_depth << "}\n";
  total_list << "{exist_23 " << exist_23_depth << "}\n";
  total_list << "{exist_24 " << exist_24_depth << "}\n";
  total_list << "{exist_25 " << exist_25_depth << "}\n";
  total_list << "{exist_26 " << exist_26_depth << "}\n";
  total_list << "{exist_27 " << exist_27_depth << "}\n";
  total_list << "{exist_28 " << exist_28_depth << "}\n";
  total_list << "{exist_29 " << exist_29_depth << "}\n";
  total_list << "{exist_30 " << exist_30_depth << "}\n";
  total_list << "{exist_31 " << exist_31_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int dummyParam_depth;
    int N_Vertex_depth;
    int resWrite_depth;
    int glblIterIdx_depth;
    int cnt_scatter_0_depth;
    int cnt_scatter_1_depth;
    int cnt_scatter_2_depth;
    int cnt_scatter_3_depth;
    int cnt_scatter_4_depth;
    int cnt_scatter_5_depth;
    int cnt_scatter_6_depth;
    int cnt_scatter_7_depth;
    int cnt_scatter_8_depth;
    int cnt_scatter_9_depth;
    int cnt_scatter_10_depth;
    int cnt_scatter_11_depth;
    int cnt_scatter_12_depth;
    int cnt_scatter_13_depth;
    int cnt_scatter_14_depth;
    int cnt_scatter_15_depth;
    int cnt_scatter_16_depth;
    int cnt_scatter_17_depth;
    int cnt_scatter_18_depth;
    int cnt_scatter_19_depth;
    int cnt_scatter_20_depth;
    int cnt_scatter_21_depth;
    int cnt_scatter_22_depth;
    int cnt_scatter_23_depth;
    int cnt_scatter_24_depth;
    int cnt_scatter_25_depth;
    int cnt_scatter_26_depth;
    int cnt_scatter_27_depth;
    int cnt_scatter_28_depth;
    int cnt_scatter_29_depth;
    int cnt_scatter_30_depth;
    int cnt_scatter_31_depth;
    int cnt_gather_0_depth;
    int cnt_gather_1_depth;
    int cnt_gather_2_depth;
    int cnt_gather_3_depth;
    int cnt_gather_4_depth;
    int cnt_gather_5_depth;
    int cnt_gather_6_depth;
    int cnt_gather_7_depth;
    int cnt_gather_8_depth;
    int cnt_gather_9_depth;
    int cnt_gather_10_depth;
    int cnt_gather_11_depth;
    int cnt_gather_12_depth;
    int cnt_gather_13_depth;
    int cnt_gather_14_depth;
    int cnt_gather_15_depth;
    int cnt_gather_16_depth;
    int cnt_gather_17_depth;
    int cnt_gather_18_depth;
    int cnt_gather_19_depth;
    int cnt_gather_20_depth;
    int cnt_gather_21_depth;
    int cnt_gather_22_depth;
    int cnt_gather_23_depth;
    int cnt_gather_24_depth;
    int cnt_gather_25_depth;
    int cnt_gather_26_depth;
    int cnt_gather_27_depth;
    int cnt_gather_28_depth;
    int cnt_gather_29_depth;
    int cnt_gather_30_depth;
    int cnt_gather_31_depth;
    int exist_0_depth;
    int exist_1_depth;
    int exist_2_depth;
    int exist_3_depth;
    int exist_4_depth;
    int exist_5_depth;
    int exist_6_depth;
    int exist_7_depth;
    int exist_8_depth;
    int exist_9_depth;
    int exist_10_depth;
    int exist_11_depth;
    int exist_12_depth;
    int exist_13_depth;
    int exist_14_depth;
    int exist_15_depth;
    int exist_16_depth;
    int exist_17_depth;
    int exist_18_depth;
    int exist_19_depth;
    int exist_20_depth;
    int exist_21_depth;
    int exist_22_depth;
    int exist_23_depth;
    int exist_24_depth;
    int exist_25_depth;
    int exist_26_depth;
    int exist_27_depth;
    int exist_28_depth;
    int exist_29_depth;
    int exist_30_depth;
    int exist_31_depth;
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
extern "C" void BFS_Ctrl_32X1_VER1_hw_stub_wrapper(volatile void *, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_BFS_Ctrl_32X1_VER1_hw(volatile void * __xlx_apatb_param_dummyParam, int __xlx_apatb_param_N_Vertex, volatile void * __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cnt_scatter_0, volatile void * __xlx_apatb_param_cnt_scatter_1, volatile void * __xlx_apatb_param_cnt_scatter_2, volatile void * __xlx_apatb_param_cnt_scatter_3, volatile void * __xlx_apatb_param_cnt_scatter_4, volatile void * __xlx_apatb_param_cnt_scatter_5, volatile void * __xlx_apatb_param_cnt_scatter_6, volatile void * __xlx_apatb_param_cnt_scatter_7, volatile void * __xlx_apatb_param_cnt_scatter_8, volatile void * __xlx_apatb_param_cnt_scatter_9, volatile void * __xlx_apatb_param_cnt_scatter_10, volatile void * __xlx_apatb_param_cnt_scatter_11, volatile void * __xlx_apatb_param_cnt_scatter_12, volatile void * __xlx_apatb_param_cnt_scatter_13, volatile void * __xlx_apatb_param_cnt_scatter_14, volatile void * __xlx_apatb_param_cnt_scatter_15, volatile void * __xlx_apatb_param_cnt_scatter_16, volatile void * __xlx_apatb_param_cnt_scatter_17, volatile void * __xlx_apatb_param_cnt_scatter_18, volatile void * __xlx_apatb_param_cnt_scatter_19, volatile void * __xlx_apatb_param_cnt_scatter_20, volatile void * __xlx_apatb_param_cnt_scatter_21, volatile void * __xlx_apatb_param_cnt_scatter_22, volatile void * __xlx_apatb_param_cnt_scatter_23, volatile void * __xlx_apatb_param_cnt_scatter_24, volatile void * __xlx_apatb_param_cnt_scatter_25, volatile void * __xlx_apatb_param_cnt_scatter_26, volatile void * __xlx_apatb_param_cnt_scatter_27, volatile void * __xlx_apatb_param_cnt_scatter_28, volatile void * __xlx_apatb_param_cnt_scatter_29, volatile void * __xlx_apatb_param_cnt_scatter_30, volatile void * __xlx_apatb_param_cnt_scatter_31, volatile void * __xlx_apatb_param_cnt_gather_0, volatile void * __xlx_apatb_param_cnt_gather_1, volatile void * __xlx_apatb_param_cnt_gather_2, volatile void * __xlx_apatb_param_cnt_gather_3, volatile void * __xlx_apatb_param_cnt_gather_4, volatile void * __xlx_apatb_param_cnt_gather_5, volatile void * __xlx_apatb_param_cnt_gather_6, volatile void * __xlx_apatb_param_cnt_gather_7, volatile void * __xlx_apatb_param_cnt_gather_8, volatile void * __xlx_apatb_param_cnt_gather_9, volatile void * __xlx_apatb_param_cnt_gather_10, volatile void * __xlx_apatb_param_cnt_gather_11, volatile void * __xlx_apatb_param_cnt_gather_12, volatile void * __xlx_apatb_param_cnt_gather_13, volatile void * __xlx_apatb_param_cnt_gather_14, volatile void * __xlx_apatb_param_cnt_gather_15, volatile void * __xlx_apatb_param_cnt_gather_16, volatile void * __xlx_apatb_param_cnt_gather_17, volatile void * __xlx_apatb_param_cnt_gather_18, volatile void * __xlx_apatb_param_cnt_gather_19, volatile void * __xlx_apatb_param_cnt_gather_20, volatile void * __xlx_apatb_param_cnt_gather_21, volatile void * __xlx_apatb_param_cnt_gather_22, volatile void * __xlx_apatb_param_cnt_gather_23, volatile void * __xlx_apatb_param_cnt_gather_24, volatile void * __xlx_apatb_param_cnt_gather_25, volatile void * __xlx_apatb_param_cnt_gather_26, volatile void * __xlx_apatb_param_cnt_gather_27, volatile void * __xlx_apatb_param_cnt_gather_28, volatile void * __xlx_apatb_param_cnt_gather_29, volatile void * __xlx_apatb_param_cnt_gather_30, volatile void * __xlx_apatb_param_cnt_gather_31, volatile void * __xlx_apatb_param_exist_0, volatile void * __xlx_apatb_param_exist_1, volatile void * __xlx_apatb_param_exist_2, volatile void * __xlx_apatb_param_exist_3, volatile void * __xlx_apatb_param_exist_4, volatile void * __xlx_apatb_param_exist_5, volatile void * __xlx_apatb_param_exist_6, volatile void * __xlx_apatb_param_exist_7, volatile void * __xlx_apatb_param_exist_8, volatile void * __xlx_apatb_param_exist_9, volatile void * __xlx_apatb_param_exist_10, volatile void * __xlx_apatb_param_exist_11, volatile void * __xlx_apatb_param_exist_12, volatile void * __xlx_apatb_param_exist_13, volatile void * __xlx_apatb_param_exist_14, volatile void * __xlx_apatb_param_exist_15, volatile void * __xlx_apatb_param_exist_16, volatile void * __xlx_apatb_param_exist_17, volatile void * __xlx_apatb_param_exist_18, volatile void * __xlx_apatb_param_exist_19, volatile void * __xlx_apatb_param_exist_20, volatile void * __xlx_apatb_param_exist_21, volatile void * __xlx_apatb_param_exist_22, volatile void * __xlx_apatb_param_exist_23, volatile void * __xlx_apatb_param_exist_24, volatile void * __xlx_apatb_param_exist_25, volatile void * __xlx_apatb_param_exist_26, volatile void * __xlx_apatb_param_exist_27, volatile void * __xlx_apatb_param_exist_28, volatile void * __xlx_apatb_param_exist_29, volatile void * __xlx_apatb_param_exist_30, volatile void * __xlx_apatb_param_exist_31) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_resWrite);
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
          std::vector<sc_bv<1> > resWrite_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "resWrite");
  
            // push token into output port buffer
            if (AESL_token != "") {
              resWrite_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_resWrite)[0] = resWrite_pc_buffer[0].to_uint64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_glblIterIdx);
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
          std::vector<sc_bv<16> > glblIterIdx_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "glblIterIdx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              glblIterIdx_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_glblIterIdx)[0] = glblIterIdx_pc_buffer[0].to_int64();
          }
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
//dummyParam
aesl_fh.touch(AUTOTB_TVIN_dummyParam);
aesl_fh.touch(AUTOTB_TVOUT_dummyParam);
//N_Vertex
aesl_fh.touch(AUTOTB_TVIN_N_Vertex);
aesl_fh.touch(AUTOTB_TVOUT_N_Vertex);
//resWrite
aesl_fh.touch(AUTOTB_TVIN_resWrite);
aesl_fh.touch(AUTOTB_TVOUT_resWrite);
//glblIterIdx
aesl_fh.touch(AUTOTB_TVIN_glblIterIdx);
aesl_fh.touch(AUTOTB_TVOUT_glblIterIdx);
//cnt_scatter_0
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_0);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_0);
//cnt_scatter_1
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_1);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_1);
//cnt_scatter_2
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_2);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_2);
//cnt_scatter_3
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_3);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_3);
//cnt_scatter_4
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_4);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_4);
//cnt_scatter_5
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_5);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_5);
//cnt_scatter_6
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_6);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_6);
//cnt_scatter_7
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_7);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_7);
//cnt_scatter_8
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_8);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_8);
//cnt_scatter_9
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_9);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_9);
//cnt_scatter_10
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_10);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_10);
//cnt_scatter_11
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_11);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_11);
//cnt_scatter_12
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_12);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_12);
//cnt_scatter_13
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_13);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_13);
//cnt_scatter_14
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_14);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_14);
//cnt_scatter_15
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_15);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_15);
//cnt_scatter_16
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_16);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_16);
//cnt_scatter_17
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_17);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_17);
//cnt_scatter_18
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_18);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_18);
//cnt_scatter_19
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_19);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_19);
//cnt_scatter_20
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_20);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_20);
//cnt_scatter_21
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_21);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_21);
//cnt_scatter_22
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_22);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_22);
//cnt_scatter_23
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_23);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_23);
//cnt_scatter_24
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_24);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_24);
//cnt_scatter_25
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_25);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_25);
//cnt_scatter_26
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_26);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_26);
//cnt_scatter_27
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_27);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_27);
//cnt_scatter_28
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_28);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_28);
//cnt_scatter_29
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_29);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_29);
//cnt_scatter_30
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_30);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_30);
//cnt_scatter_31
aesl_fh.touch(AUTOTB_TVIN_cnt_scatter_31);
aesl_fh.touch(AUTOTB_TVOUT_cnt_scatter_31);
//cnt_gather_0
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_0);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_0);
//cnt_gather_1
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_1);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_1);
//cnt_gather_2
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_2);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_2);
//cnt_gather_3
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_3);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_3);
//cnt_gather_4
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_4);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_4);
//cnt_gather_5
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_5);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_5);
//cnt_gather_6
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_6);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_6);
//cnt_gather_7
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_7);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_7);
//cnt_gather_8
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_8);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_8);
//cnt_gather_9
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_9);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_9);
//cnt_gather_10
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_10);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_10);
//cnt_gather_11
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_11);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_11);
//cnt_gather_12
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_12);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_12);
//cnt_gather_13
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_13);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_13);
//cnt_gather_14
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_14);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_14);
//cnt_gather_15
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_15);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_15);
//cnt_gather_16
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_16);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_16);
//cnt_gather_17
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_17);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_17);
//cnt_gather_18
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_18);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_18);
//cnt_gather_19
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_19);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_19);
//cnt_gather_20
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_20);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_20);
//cnt_gather_21
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_21);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_21);
//cnt_gather_22
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_22);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_22);
//cnt_gather_23
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_23);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_23);
//cnt_gather_24
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_24);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_24);
//cnt_gather_25
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_25);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_25);
//cnt_gather_26
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_26);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_26);
//cnt_gather_27
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_27);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_27);
//cnt_gather_28
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_28);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_28);
//cnt_gather_29
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_29);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_29);
//cnt_gather_30
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_30);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_30);
//cnt_gather_31
aesl_fh.touch(AUTOTB_TVIN_cnt_gather_31);
aesl_fh.touch(AUTOTB_TVOUT_cnt_gather_31);
//exist_0
aesl_fh.touch(AUTOTB_TVIN_exist_0);
aesl_fh.touch(AUTOTB_TVOUT_exist_0);
//exist_1
aesl_fh.touch(AUTOTB_TVIN_exist_1);
aesl_fh.touch(AUTOTB_TVOUT_exist_1);
//exist_2
aesl_fh.touch(AUTOTB_TVIN_exist_2);
aesl_fh.touch(AUTOTB_TVOUT_exist_2);
//exist_3
aesl_fh.touch(AUTOTB_TVIN_exist_3);
aesl_fh.touch(AUTOTB_TVOUT_exist_3);
//exist_4
aesl_fh.touch(AUTOTB_TVIN_exist_4);
aesl_fh.touch(AUTOTB_TVOUT_exist_4);
//exist_5
aesl_fh.touch(AUTOTB_TVIN_exist_5);
aesl_fh.touch(AUTOTB_TVOUT_exist_5);
//exist_6
aesl_fh.touch(AUTOTB_TVIN_exist_6);
aesl_fh.touch(AUTOTB_TVOUT_exist_6);
//exist_7
aesl_fh.touch(AUTOTB_TVIN_exist_7);
aesl_fh.touch(AUTOTB_TVOUT_exist_7);
//exist_8
aesl_fh.touch(AUTOTB_TVIN_exist_8);
aesl_fh.touch(AUTOTB_TVOUT_exist_8);
//exist_9
aesl_fh.touch(AUTOTB_TVIN_exist_9);
aesl_fh.touch(AUTOTB_TVOUT_exist_9);
//exist_10
aesl_fh.touch(AUTOTB_TVIN_exist_10);
aesl_fh.touch(AUTOTB_TVOUT_exist_10);
//exist_11
aesl_fh.touch(AUTOTB_TVIN_exist_11);
aesl_fh.touch(AUTOTB_TVOUT_exist_11);
//exist_12
aesl_fh.touch(AUTOTB_TVIN_exist_12);
aesl_fh.touch(AUTOTB_TVOUT_exist_12);
//exist_13
aesl_fh.touch(AUTOTB_TVIN_exist_13);
aesl_fh.touch(AUTOTB_TVOUT_exist_13);
//exist_14
aesl_fh.touch(AUTOTB_TVIN_exist_14);
aesl_fh.touch(AUTOTB_TVOUT_exist_14);
//exist_15
aesl_fh.touch(AUTOTB_TVIN_exist_15);
aesl_fh.touch(AUTOTB_TVOUT_exist_15);
//exist_16
aesl_fh.touch(AUTOTB_TVIN_exist_16);
aesl_fh.touch(AUTOTB_TVOUT_exist_16);
//exist_17
aesl_fh.touch(AUTOTB_TVIN_exist_17);
aesl_fh.touch(AUTOTB_TVOUT_exist_17);
//exist_18
aesl_fh.touch(AUTOTB_TVIN_exist_18);
aesl_fh.touch(AUTOTB_TVOUT_exist_18);
//exist_19
aesl_fh.touch(AUTOTB_TVIN_exist_19);
aesl_fh.touch(AUTOTB_TVOUT_exist_19);
//exist_20
aesl_fh.touch(AUTOTB_TVIN_exist_20);
aesl_fh.touch(AUTOTB_TVOUT_exist_20);
//exist_21
aesl_fh.touch(AUTOTB_TVIN_exist_21);
aesl_fh.touch(AUTOTB_TVOUT_exist_21);
//exist_22
aesl_fh.touch(AUTOTB_TVIN_exist_22);
aesl_fh.touch(AUTOTB_TVOUT_exist_22);
//exist_23
aesl_fh.touch(AUTOTB_TVIN_exist_23);
aesl_fh.touch(AUTOTB_TVOUT_exist_23);
//exist_24
aesl_fh.touch(AUTOTB_TVIN_exist_24);
aesl_fh.touch(AUTOTB_TVOUT_exist_24);
//exist_25
aesl_fh.touch(AUTOTB_TVIN_exist_25);
aesl_fh.touch(AUTOTB_TVOUT_exist_25);
//exist_26
aesl_fh.touch(AUTOTB_TVIN_exist_26);
aesl_fh.touch(AUTOTB_TVOUT_exist_26);
//exist_27
aesl_fh.touch(AUTOTB_TVIN_exist_27);
aesl_fh.touch(AUTOTB_TVOUT_exist_27);
//exist_28
aesl_fh.touch(AUTOTB_TVIN_exist_28);
aesl_fh.touch(AUTOTB_TVOUT_exist_28);
//exist_29
aesl_fh.touch(AUTOTB_TVIN_exist_29);
aesl_fh.touch(AUTOTB_TVOUT_exist_29);
//exist_30
aesl_fh.touch(AUTOTB_TVIN_exist_30);
aesl_fh.touch(AUTOTB_TVOUT_exist_30);
//exist_31
aesl_fh.touch(AUTOTB_TVIN_exist_31);
aesl_fh.touch(AUTOTB_TVOUT_exist_31);
CodeState = DUMP_INPUTS;
// print dummyParam Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_dummyParam, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_dummyParam);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_dummyParam, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.dummyParam_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_dummyParam, __xlx_sprintf_buffer.data());
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
// print resWrite Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_resWrite);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.resWrite_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_resWrite, __xlx_sprintf_buffer.data());
}
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
// print cnt_scatter_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_0, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_1, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_2, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_3, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_4, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_5, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_6, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_7, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_8, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_9, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_10, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_11, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_12, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_12);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_12, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_12, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_13, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_13);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_13, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_13, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_14, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_14);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_14, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_14, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_15, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_15);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_15, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_15, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_16, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_16);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_16, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_16, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_17, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_17);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_17, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_17, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_18, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_18);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_18, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_18, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_19, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_19);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_19, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_19, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_20, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_20);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_20, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_20, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_21, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_21);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_21, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_21, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_22, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_22);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_22, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_22, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_23, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_23);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_23, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_23, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_24, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_24);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_24, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_24, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_25, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_25);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_25, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_25, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_26, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_26);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_26, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_26, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_27, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_27);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_27, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_27, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_28, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_28);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_28, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_28, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_29, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_29);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_29, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_29, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_30, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_30);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_30, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_30, __xlx_sprintf_buffer.data());
}
// print cnt_scatter_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_31, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_scatter_31);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_scatter_31, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_scatter_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_scatter_31, __xlx_sprintf_buffer.data());
}
// print cnt_gather_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_0, __xlx_sprintf_buffer.data());
}
// print cnt_gather_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_1, __xlx_sprintf_buffer.data());
}
// print cnt_gather_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_2, __xlx_sprintf_buffer.data());
}
// print cnt_gather_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_3, __xlx_sprintf_buffer.data());
}
// print cnt_gather_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_4, __xlx_sprintf_buffer.data());
}
// print cnt_gather_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_5, __xlx_sprintf_buffer.data());
}
// print cnt_gather_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_6, __xlx_sprintf_buffer.data());
}
// print cnt_gather_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_7, __xlx_sprintf_buffer.data());
}
// print cnt_gather_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_8, __xlx_sprintf_buffer.data());
}
// print cnt_gather_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_9, __xlx_sprintf_buffer.data());
}
// print cnt_gather_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_10, __xlx_sprintf_buffer.data());
}
// print cnt_gather_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_11, __xlx_sprintf_buffer.data());
}
// print cnt_gather_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_12, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_12);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_12, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_12, __xlx_sprintf_buffer.data());
}
// print cnt_gather_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_13, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_13);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_13, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_13, __xlx_sprintf_buffer.data());
}
// print cnt_gather_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_14, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_14);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_14, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_14, __xlx_sprintf_buffer.data());
}
// print cnt_gather_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_15, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_15);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_15, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_15, __xlx_sprintf_buffer.data());
}
// print cnt_gather_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_16, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_16);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_16, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_16, __xlx_sprintf_buffer.data());
}
// print cnt_gather_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_17, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_17);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_17, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_17, __xlx_sprintf_buffer.data());
}
// print cnt_gather_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_18, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_18);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_18, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_18, __xlx_sprintf_buffer.data());
}
// print cnt_gather_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_19, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_19);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_19, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_19, __xlx_sprintf_buffer.data());
}
// print cnt_gather_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_20, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_20);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_20, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_20, __xlx_sprintf_buffer.data());
}
// print cnt_gather_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_21, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_21);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_21, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_21, __xlx_sprintf_buffer.data());
}
// print cnt_gather_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_22, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_22);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_22, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_22, __xlx_sprintf_buffer.data());
}
// print cnt_gather_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_23, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_23);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_23, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_23, __xlx_sprintf_buffer.data());
}
// print cnt_gather_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_24, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_24);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_24, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_24, __xlx_sprintf_buffer.data());
}
// print cnt_gather_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_25, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_25);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_25, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_25, __xlx_sprintf_buffer.data());
}
// print cnt_gather_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_26, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_26);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_26, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_26, __xlx_sprintf_buffer.data());
}
// print cnt_gather_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_27, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_27);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_27, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_27, __xlx_sprintf_buffer.data());
}
// print cnt_gather_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_28, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_28);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_28, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_28, __xlx_sprintf_buffer.data());
}
// print cnt_gather_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_29, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_29);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_29, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_29, __xlx_sprintf_buffer.data());
}
// print cnt_gather_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_30, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_30);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_30, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_30, __xlx_sprintf_buffer.data());
}
// print cnt_gather_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_31, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_cnt_gather_31);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cnt_gather_31, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cnt_gather_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cnt_gather_31, __xlx_sprintf_buffer.data());
}
// print exist_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_0, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_0);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_0, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_0, __xlx_sprintf_buffer.data());
}
// print exist_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_1, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_1, __xlx_sprintf_buffer.data());
}
// print exist_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_2, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_2, __xlx_sprintf_buffer.data());
}
// print exist_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_3, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_3);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_3, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_3, __xlx_sprintf_buffer.data());
}
// print exist_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_4, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_4);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_4, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_4, __xlx_sprintf_buffer.data());
}
// print exist_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_5, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_5);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_5, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_5, __xlx_sprintf_buffer.data());
}
// print exist_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_6, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_6);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_6, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_6, __xlx_sprintf_buffer.data());
}
// print exist_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_7, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_7);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_7, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_7, __xlx_sprintf_buffer.data());
}
// print exist_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_8, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_8);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_8, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_8, __xlx_sprintf_buffer.data());
}
// print exist_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_9, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_9);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_9, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_9, __xlx_sprintf_buffer.data());
}
// print exist_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_10, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_10);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_10, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_10, __xlx_sprintf_buffer.data());
}
// print exist_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_11, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_11);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_11, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_11, __xlx_sprintf_buffer.data());
}
// print exist_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_12, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_12);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_12, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_12, __xlx_sprintf_buffer.data());
}
// print exist_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_13, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_13);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_13, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_13, __xlx_sprintf_buffer.data());
}
// print exist_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_14, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_14);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_14, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_14, __xlx_sprintf_buffer.data());
}
// print exist_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_15, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_15);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_15, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_15, __xlx_sprintf_buffer.data());
}
// print exist_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_16, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_16);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_16, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_16, __xlx_sprintf_buffer.data());
}
// print exist_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_17, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_17);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_17, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_17, __xlx_sprintf_buffer.data());
}
// print exist_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_18, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_18);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_18, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_18, __xlx_sprintf_buffer.data());
}
// print exist_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_19, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_19);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_19, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_19, __xlx_sprintf_buffer.data());
}
// print exist_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_20, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_20);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_20, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_20, __xlx_sprintf_buffer.data());
}
// print exist_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_21, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_21);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_21, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_21, __xlx_sprintf_buffer.data());
}
// print exist_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_22, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_22);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_22, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_22, __xlx_sprintf_buffer.data());
}
// print exist_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_23, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_23);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_23, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_23, __xlx_sprintf_buffer.data());
}
// print exist_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_24, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_24);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_24, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_24, __xlx_sprintf_buffer.data());
}
// print exist_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_25, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_25);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_25, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_25, __xlx_sprintf_buffer.data());
}
// print exist_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_26, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_26);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_26, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_26, __xlx_sprintf_buffer.data());
}
// print exist_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_27, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_27);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_27, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_27, __xlx_sprintf_buffer.data());
}
// print exist_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_28, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_28);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_28, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_28, __xlx_sprintf_buffer.data());
}
// print exist_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_29, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_29);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_29, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_29, __xlx_sprintf_buffer.data());
}
// print exist_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_30, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_30);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_30, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_30, __xlx_sprintf_buffer.data());
}
// print exist_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist_31, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist_31);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist_31, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist_31, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
BFS_Ctrl_32X1_VER1_hw_stub_wrapper(__xlx_apatb_param_dummyParam, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_resWrite, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cnt_scatter_0, __xlx_apatb_param_cnt_scatter_1, __xlx_apatb_param_cnt_scatter_2, __xlx_apatb_param_cnt_scatter_3, __xlx_apatb_param_cnt_scatter_4, __xlx_apatb_param_cnt_scatter_5, __xlx_apatb_param_cnt_scatter_6, __xlx_apatb_param_cnt_scatter_7, __xlx_apatb_param_cnt_scatter_8, __xlx_apatb_param_cnt_scatter_9, __xlx_apatb_param_cnt_scatter_10, __xlx_apatb_param_cnt_scatter_11, __xlx_apatb_param_cnt_scatter_12, __xlx_apatb_param_cnt_scatter_13, __xlx_apatb_param_cnt_scatter_14, __xlx_apatb_param_cnt_scatter_15, __xlx_apatb_param_cnt_scatter_16, __xlx_apatb_param_cnt_scatter_17, __xlx_apatb_param_cnt_scatter_18, __xlx_apatb_param_cnt_scatter_19, __xlx_apatb_param_cnt_scatter_20, __xlx_apatb_param_cnt_scatter_21, __xlx_apatb_param_cnt_scatter_22, __xlx_apatb_param_cnt_scatter_23, __xlx_apatb_param_cnt_scatter_24, __xlx_apatb_param_cnt_scatter_25, __xlx_apatb_param_cnt_scatter_26, __xlx_apatb_param_cnt_scatter_27, __xlx_apatb_param_cnt_scatter_28, __xlx_apatb_param_cnt_scatter_29, __xlx_apatb_param_cnt_scatter_30, __xlx_apatb_param_cnt_scatter_31, __xlx_apatb_param_cnt_gather_0, __xlx_apatb_param_cnt_gather_1, __xlx_apatb_param_cnt_gather_2, __xlx_apatb_param_cnt_gather_3, __xlx_apatb_param_cnt_gather_4, __xlx_apatb_param_cnt_gather_5, __xlx_apatb_param_cnt_gather_6, __xlx_apatb_param_cnt_gather_7, __xlx_apatb_param_cnt_gather_8, __xlx_apatb_param_cnt_gather_9, __xlx_apatb_param_cnt_gather_10, __xlx_apatb_param_cnt_gather_11, __xlx_apatb_param_cnt_gather_12, __xlx_apatb_param_cnt_gather_13, __xlx_apatb_param_cnt_gather_14, __xlx_apatb_param_cnt_gather_15, __xlx_apatb_param_cnt_gather_16, __xlx_apatb_param_cnt_gather_17, __xlx_apatb_param_cnt_gather_18, __xlx_apatb_param_cnt_gather_19, __xlx_apatb_param_cnt_gather_20, __xlx_apatb_param_cnt_gather_21, __xlx_apatb_param_cnt_gather_22, __xlx_apatb_param_cnt_gather_23, __xlx_apatb_param_cnt_gather_24, __xlx_apatb_param_cnt_gather_25, __xlx_apatb_param_cnt_gather_26, __xlx_apatb_param_cnt_gather_27, __xlx_apatb_param_cnt_gather_28, __xlx_apatb_param_cnt_gather_29, __xlx_apatb_param_cnt_gather_30, __xlx_apatb_param_cnt_gather_31, __xlx_apatb_param_exist_0, __xlx_apatb_param_exist_1, __xlx_apatb_param_exist_2, __xlx_apatb_param_exist_3, __xlx_apatb_param_exist_4, __xlx_apatb_param_exist_5, __xlx_apatb_param_exist_6, __xlx_apatb_param_exist_7, __xlx_apatb_param_exist_8, __xlx_apatb_param_exist_9, __xlx_apatb_param_exist_10, __xlx_apatb_param_exist_11, __xlx_apatb_param_exist_12, __xlx_apatb_param_exist_13, __xlx_apatb_param_exist_14, __xlx_apatb_param_exist_15, __xlx_apatb_param_exist_16, __xlx_apatb_param_exist_17, __xlx_apatb_param_exist_18, __xlx_apatb_param_exist_19, __xlx_apatb_param_exist_20, __xlx_apatb_param_exist_21, __xlx_apatb_param_exist_22, __xlx_apatb_param_exist_23, __xlx_apatb_param_exist_24, __xlx_apatb_param_exist_25, __xlx_apatb_param_exist_26, __xlx_apatb_param_exist_27, __xlx_apatb_param_exist_28, __xlx_apatb_param_exist_29, __xlx_apatb_param_exist_30, __xlx_apatb_param_exist_31);
CodeState = DUMP_OUTPUTS;
// print resWrite Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_resWrite, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_resWrite);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_resWrite, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.resWrite_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_resWrite, __xlx_sprintf_buffer.data());
}
// print glblIterIdx Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_glblIterIdx, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_glblIterIdx);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_glblIterIdx, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.glblIterIdx_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_glblIterIdx, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
