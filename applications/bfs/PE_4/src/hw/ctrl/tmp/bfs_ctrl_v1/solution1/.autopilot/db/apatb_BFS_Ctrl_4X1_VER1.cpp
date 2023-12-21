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
#define AUTOTB_TVIN_dummyParam "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_dummyParam.dat"
#define AUTOTB_TVOUT_dummyParam "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_dummyParam.dat"
// wrapc file define:
#define AUTOTB_TVIN_N_Vertex "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_N_Vertex.dat"
#define AUTOTB_TVOUT_N_Vertex "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_N_Vertex.dat"
// wrapc file define:
#define AUTOTB_TVIN_resWrite "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_resWrite.dat"
#define AUTOTB_TVOUT_resWrite "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_resWrite.dat"
// wrapc file define:
#define AUTOTB_TVIN_glblIterIdx "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_glblIterIdx.dat"
#define AUTOTB_TVOUT_glblIterIdx "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_glblIterIdx.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_scatter_0.dat"
#define AUTOTB_TVOUT_cnt_scatter_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_scatter_1.dat"
#define AUTOTB_TVOUT_cnt_scatter_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_scatter_2.dat"
#define AUTOTB_TVOUT_cnt_scatter_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_scatter_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_scatter_3.dat"
#define AUTOTB_TVOUT_cnt_scatter_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_gather_0.dat"
#define AUTOTB_TVOUT_cnt_gather_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_gather_1.dat"
#define AUTOTB_TVOUT_cnt_gather_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_gather_2.dat"
#define AUTOTB_TVOUT_cnt_gather_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_cnt_gather_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_cnt_gather_3.dat"
#define AUTOTB_TVOUT_cnt_gather_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_exist_0.dat"
#define AUTOTB_TVOUT_exist_0 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_exist_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_exist_1.dat"
#define AUTOTB_TVOUT_exist_1 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_exist_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_exist_2.dat"
#define AUTOTB_TVOUT_exist_2 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_exist_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvin_exist_3.dat"
#define AUTOTB_TVOUT_exist_3 "../tv/cdatafile/c.BFS_Ctrl_4X1_VER1.autotvout_exist_3.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_dummyParam "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_dummyParam.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_N_Vertex "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_N_Vertex.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_resWrite "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_resWrite.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_glblIterIdx "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_glblIterIdx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_0 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_1 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_2 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_scatter_3 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_scatter_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_0 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_1 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_2 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cnt_gather_3 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_cnt_gather_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_0 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_exist_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_1 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_exist_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_2 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_exist_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist_3 "../tv/rtldatafile/rtl.BFS_Ctrl_4X1_VER1.autotvout_exist_3.dat"

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
  cnt_gather_0_depth = 0;
  cnt_gather_1_depth = 0;
  cnt_gather_2_depth = 0;
  cnt_gather_3_depth = 0;
  exist_0_depth = 0;
  exist_1_depth = 0;
  exist_2_depth = 0;
  exist_3_depth = 0;
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
  total_list << "{cnt_gather_0 " << cnt_gather_0_depth << "}\n";
  total_list << "{cnt_gather_1 " << cnt_gather_1_depth << "}\n";
  total_list << "{cnt_gather_2 " << cnt_gather_2_depth << "}\n";
  total_list << "{cnt_gather_3 " << cnt_gather_3_depth << "}\n";
  total_list << "{exist_0 " << exist_0_depth << "}\n";
  total_list << "{exist_1 " << exist_1_depth << "}\n";
  total_list << "{exist_2 " << exist_2_depth << "}\n";
  total_list << "{exist_3 " << exist_3_depth << "}\n";
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
    int cnt_gather_0_depth;
    int cnt_gather_1_depth;
    int cnt_gather_2_depth;
    int cnt_gather_3_depth;
    int exist_0_depth;
    int exist_1_depth;
    int exist_2_depth;
    int exist_3_depth;
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
extern "C" void BFS_Ctrl_4X1_VER1_hw_stub_wrapper(volatile void *, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_BFS_Ctrl_4X1_VER1_hw(volatile void * __xlx_apatb_param_dummyParam, int __xlx_apatb_param_N_Vertex, volatile void * __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cnt_scatter_0, volatile void * __xlx_apatb_param_cnt_scatter_1, volatile void * __xlx_apatb_param_cnt_scatter_2, volatile void * __xlx_apatb_param_cnt_scatter_3, volatile void * __xlx_apatb_param_cnt_gather_0, volatile void * __xlx_apatb_param_cnt_gather_1, volatile void * __xlx_apatb_param_cnt_gather_2, volatile void * __xlx_apatb_param_cnt_gather_3, volatile void * __xlx_apatb_param_exist_0, volatile void * __xlx_apatb_param_exist_1, volatile void * __xlx_apatb_param_exist_2, volatile void * __xlx_apatb_param_exist_3) {
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
CodeState = CALL_C_DUT;
BFS_Ctrl_4X1_VER1_hw_stub_wrapper(__xlx_apatb_param_dummyParam, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_resWrite, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cnt_scatter_0, __xlx_apatb_param_cnt_scatter_1, __xlx_apatb_param_cnt_scatter_2, __xlx_apatb_param_cnt_scatter_3, __xlx_apatb_param_cnt_gather_0, __xlx_apatb_param_cnt_gather_1, __xlx_apatb_param_cnt_gather_2, __xlx_apatb_param_cnt_gather_3, __xlx_apatb_param_exist_0, __xlx_apatb_param_exist_1, __xlx_apatb_param_exist_2, __xlx_apatb_param_exist_3);
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
