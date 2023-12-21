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
#define AUTOTB_TVIN_peID "../tv/cdatafile/c.BFS_Gather.autotvin_peID.dat"
#define AUTOTB_TVOUT_peID "../tv/cdatafile/c.BFS_Gather.autotvout_peID.dat"
// wrapc file define:
#define AUTOTB_TVIN_sw_data "../tv/cdatafile/c.BFS_Gather.autotvin_sw_data.dat"
#define AUTOTB_TVOUT_sw_data "../tv/cdatafile/c.BFS_Gather.autotvout_sw_data.dat"
// wrapc file define:
#define AUTOTB_TVIN_exist "../tv/cdatafile/c.BFS_Gather.autotvin_exist.dat"
#define AUTOTB_TVOUT_exist "../tv/cdatafile/c.BFS_Gather.autotvout_exist.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_0 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_0.dat"
#define AUTOTB_TVOUT_tmp_dist_0 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_1 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_1.dat"
#define AUTOTB_TVOUT_tmp_dist_1 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_2 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_2.dat"
#define AUTOTB_TVOUT_tmp_dist_2 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_3 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_3.dat"
#define AUTOTB_TVOUT_tmp_dist_3 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_4 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_4.dat"
#define AUTOTB_TVOUT_tmp_dist_4 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_5 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_5.dat"
#define AUTOTB_TVOUT_tmp_dist_5 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_6 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_6.dat"
#define AUTOTB_TVOUT_tmp_dist_6 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_tmp_dist_7 "../tv/cdatafile/c.BFS_Gather.autotvin_tmp_dist_7.dat"
#define AUTOTB_TVOUT_tmp_dist_7 "../tv/cdatafile/c.BFS_Gather.autotvout_tmp_dist_7.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_peID "../tv/rtldatafile/rtl.BFS_Gather.autotvout_peID.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sw_data "../tv/rtldatafile/rtl.BFS_Gather.autotvout_sw_data.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_exist "../tv/rtldatafile/rtl.BFS_Gather.autotvout_exist.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_0 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_1 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_2 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_3 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_4 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_5 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_6 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tmp_dist_7 "../tv/rtldatafile/rtl.BFS_Gather.autotvout_tmp_dist_7.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  peID_depth = 0;
  sw_data_depth = 0;
  exist_depth = 0;
  tmp_dist_0_depth = 0;
  tmp_dist_1_depth = 0;
  tmp_dist_2_depth = 0;
  tmp_dist_3_depth = 0;
  tmp_dist_4_depth = 0;
  tmp_dist_5_depth = 0;
  tmp_dist_6_depth = 0;
  tmp_dist_7_depth = 0;
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
  total_list << "{peID " << peID_depth << "}\n";
  total_list << "{sw_data " << sw_data_depth << "}\n";
  total_list << "{exist " << exist_depth << "}\n";
  total_list << "{tmp_dist_0 " << tmp_dist_0_depth << "}\n";
  total_list << "{tmp_dist_1 " << tmp_dist_1_depth << "}\n";
  total_list << "{tmp_dist_2 " << tmp_dist_2_depth << "}\n";
  total_list << "{tmp_dist_3 " << tmp_dist_3_depth << "}\n";
  total_list << "{tmp_dist_4 " << tmp_dist_4_depth << "}\n";
  total_list << "{tmp_dist_5 " << tmp_dist_5_depth << "}\n";
  total_list << "{tmp_dist_6 " << tmp_dist_6_depth << "}\n";
  total_list << "{tmp_dist_7 " << tmp_dist_7_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int peID_depth;
    int sw_data_depth;
    int exist_depth;
    int tmp_dist_0_depth;
    int tmp_dist_1_depth;
    int tmp_dist_2_depth;
    int tmp_dist_3_depth;
    int tmp_dist_4_depth;
    int tmp_dist_5_depth;
    int tmp_dist_6_depth;
    int tmp_dist_7_depth;
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
extern "C" void BFS_Gather_hw_stub_wrapper(char, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_BFS_Gather_hw(char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data, volatile void * __xlx_apatb_param_exist, volatile void * __xlx_apatb_param_tmp_dist_0, volatile void * __xlx_apatb_param_tmp_dist_1, volatile void * __xlx_apatb_param_tmp_dist_2, volatile void * __xlx_apatb_param_tmp_dist_3, volatile void * __xlx_apatb_param_tmp_dist_4, volatile void * __xlx_apatb_param_tmp_dist_5, volatile void * __xlx_apatb_param_tmp_dist_6, volatile void * __xlx_apatb_param_tmp_dist_7) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_exist);
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
          std::vector<sc_bv<1> > exist_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "exist");
  
            // push token into output port buffer
            if (AESL_token != "") {
              exist_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((char*)__xlx_apatb_param_exist)[0] = exist_pc_buffer[0].to_uint64();
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
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//peID
aesl_fh.touch(AUTOTB_TVIN_peID);
aesl_fh.touch(AUTOTB_TVOUT_peID);
//sw_data
aesl_fh.touch(AUTOTB_TVIN_sw_data);
aesl_fh.touch(AUTOTB_TVOUT_sw_data);
//exist
aesl_fh.touch(AUTOTB_TVIN_exist);
aesl_fh.touch(AUTOTB_TVOUT_exist);
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
CodeState = DUMP_INPUTS;
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
// print sw_data Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_sw_data, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_sw_data);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_sw_data, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.sw_data_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_sw_data, __xlx_sprintf_buffer.data());
}
// print exist Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_exist, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_exist, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_exist, __xlx_sprintf_buffer.data());
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
CodeState = CALL_C_DUT;
BFS_Gather_hw_stub_wrapper(__xlx_apatb_param_peID, __xlx_apatb_param_sw_data, __xlx_apatb_param_exist, __xlx_apatb_param_tmp_dist_0, __xlx_apatb_param_tmp_dist_1, __xlx_apatb_param_tmp_dist_2, __xlx_apatb_param_tmp_dist_3, __xlx_apatb_param_tmp_dist_4, __xlx_apatb_param_tmp_dist_5, __xlx_apatb_param_tmp_dist_6, __xlx_apatb_param_tmp_dist_7);
CodeState = DUMP_OUTPUTS;
// print exist Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_exist, __xlx_sprintf_buffer.data());
  {
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_exist);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_exist, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.exist_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_exist, __xlx_sprintf_buffer.data());
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
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
