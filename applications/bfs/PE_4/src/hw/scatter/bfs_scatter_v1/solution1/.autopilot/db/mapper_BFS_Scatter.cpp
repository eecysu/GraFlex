#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_rd_port_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rd_port_V_size_Reader("../tv/stream_size/stream_size_in_rd_port_V.dat");
unsigned int ap_apatb_wr_port_V_cap_bc;
static AESL_RUNTIME_BC __xlx_wr_port_V_size_Reader("../tv/stream_size/stream_size_out_wr_port_V.dat");
unsigned int ap_apatb_rd_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rd_req_V_size_Reader("../tv/stream_size/stream_size_out_rd_req_V.dat");
unsigned int ap_apatb_sw_data_0_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sw_data_0_V_size_Reader("../tv/stream_size/stream_size_out_sw_data_0_V.dat");
unsigned int ap_apatb_sw_data_1_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sw_data_1_V_size_Reader("../tv/stream_size/stream_size_out_sw_data_1_V.dat");
unsigned int ap_apatb_sw_data_2_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sw_data_2_V_size_Reader("../tv/stream_size/stream_size_out_sw_data_2_V.dat");
unsigned int ap_apatb_sw_data_3_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sw_data_3_V_size_Reader("../tv/stream_size/stream_size_out_sw_data_3_V.dat");
struct __cosim_s8__ { char data[8]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void BFS_Scatter(__cosim_s8__, __cosim_s8__, __cosim_s8__, volatile void *, volatile void *, __cosim_s20__*, __cosim_s20__*, int*, volatile void *, volatile void *, volatile void *, int, int, char, int*, int*, int*, int*, volatile void *, volatile void *, volatile void *, char, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*);
extern "C" void apatb_BFS_Scatter_hw(__cosim_s8__ __xlx_apatb_param_CSR_V, __cosim_s8__ __xlx_apatb_param_CSR_E, __cosim_s8__ __xlx_apatb_param_glbl_d, volatile void * __xlx_apatb_param_rd_baseAddr, volatile void * __xlx_apatb_param_wr_baseAddr, volatile void * __xlx_apatb_param_rd_port, volatile void * __xlx_apatb_param_wr_port, volatile void * __xlx_apatb_param_rd_req, volatile void * __xlx_apatb_param_wr_len, volatile void * __xlx_apatb_param_rd_start, volatile void * __xlx_apatb_param_wr_start, int __xlx_apatb_param_N_Vertex, int __xlx_apatb_param_root, char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data_0, volatile void * __xlx_apatb_param_sw_data_1, volatile void * __xlx_apatb_param_sw_data_2, volatile void * __xlx_apatb_param_sw_data_3, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cycle_cnt, volatile void * __xlx_apatb_param_launch_recv, char __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_tmp_dist_0, volatile void * __xlx_apatb_param_tmp_dist_1, volatile void * __xlx_apatb_param_tmp_dist_2, volatile void * __xlx_apatb_param_tmp_dist_3, volatile void * __xlx_apatb_param_tmp_dist_4, volatile void * __xlx_apatb_param_tmp_dist_5, volatile void * __xlx_apatb_param_tmp_dist_6, volatile void * __xlx_apatb_param_tmp_dist_7, volatile void * __xlx_apatb_param_tmp_dist_8, volatile void * __xlx_apatb_param_tmp_dist_9, volatile void * __xlx_apatb_param_tmp_dist_10, volatile void * __xlx_apatb_param_tmp_dist_11, volatile void * __xlx_apatb_param_tmp_dist_12, volatile void * __xlx_apatb_param_tmp_dist_13, volatile void * __xlx_apatb_param_tmp_dist_14, volatile void * __xlx_apatb_param_tmp_dist_15, volatile void * __xlx_apatb_param_tmp_dist_16, volatile void * __xlx_apatb_param_tmp_dist_17, volatile void * __xlx_apatb_param_tmp_dist_18, volatile void * __xlx_apatb_param_tmp_dist_19, volatile void * __xlx_apatb_param_tmp_dist_20, volatile void * __xlx_apatb_param_tmp_dist_21, volatile void * __xlx_apatb_param_tmp_dist_22, volatile void * __xlx_apatb_param_tmp_dist_23, volatile void * __xlx_apatb_param_tmp_dist_24, volatile void * __xlx_apatb_param_tmp_dist_25, volatile void * __xlx_apatb_param_tmp_dist_26, volatile void * __xlx_apatb_param_tmp_dist_27, volatile void * __xlx_apatb_param_tmp_dist_28, volatile void * __xlx_apatb_param_tmp_dist_29, volatile void * __xlx_apatb_param_tmp_dist_30, volatile void * __xlx_apatb_param_tmp_dist_31) {
  // collect __xlx_rd_port_tmp_vec
  unsigned __xlx_rd_port_V_tmp_Count = 0;
  unsigned __xlx_rd_port_V_read_Size = __xlx_rd_port_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_rd_port_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->empty() && __xlx_rd_port_V_tmp_Count < __xlx_rd_port_V_read_Size) {
    __xlx_rd_port_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_rd_port)->read());
    __xlx_rd_port_V_tmp_Count++;
  }
  ap_apatb_rd_port_V_cap_bc = __xlx_rd_port_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_rd_port_input_buffer= new __cosim_s20__[__xlx_rd_port_tmp_vec.size()];
  for (int i = 0; i < __xlx_rd_port_tmp_vec.size(); ++i) {
    __xlx_rd_port_input_buffer[i] = __xlx_rd_port_tmp_vec[i];
  }
  //Create input buffer for wr_port
  ap_apatb_wr_port_V_cap_bc = __xlx_wr_port_V_size_Reader.read_size();
  __cosim_s20__* __xlx_wr_port_input_buffer= new __cosim_s20__[ap_apatb_wr_port_V_cap_bc];
  //Create input buffer for rd_req
  ap_apatb_rd_req_V_cap_bc = __xlx_rd_req_V_size_Reader.read_size();
  int* __xlx_rd_req_input_buffer= new int[ap_apatb_rd_req_V_cap_bc];
  //Create input buffer for sw_data_0
  ap_apatb_sw_data_0_V_cap_bc = __xlx_sw_data_0_V_size_Reader.read_size();
  int* __xlx_sw_data_0_input_buffer= new int[ap_apatb_sw_data_0_V_cap_bc];
  //Create input buffer for sw_data_1
  ap_apatb_sw_data_1_V_cap_bc = __xlx_sw_data_1_V_size_Reader.read_size();
  int* __xlx_sw_data_1_input_buffer= new int[ap_apatb_sw_data_1_V_cap_bc];
  //Create input buffer for sw_data_2
  ap_apatb_sw_data_2_V_cap_bc = __xlx_sw_data_2_V_size_Reader.read_size();
  int* __xlx_sw_data_2_input_buffer= new int[ap_apatb_sw_data_2_V_cap_bc];
  //Create input buffer for sw_data_3
  ap_apatb_sw_data_3_V_cap_bc = __xlx_sw_data_3_V_size_Reader.read_size();
  int* __xlx_sw_data_3_input_buffer= new int[ap_apatb_sw_data_3_V_cap_bc];
  // Collect __xlx_tmp_dist_0__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_0__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_0__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_0)[j]);
  }
  int __xlx_size_param_tmp_dist_0 = 4096;
  int __xlx_offset_param_tmp_dist_0 = 0;
  int __xlx_offset_byte_param_tmp_dist_0 = 0*8;
  long long* __xlx_tmp_dist_0__input_buffer= new long long[__xlx_tmp_dist_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_0__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_0__input_buffer[i] = __xlx_tmp_dist_0__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_1__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_1__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_1__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_1)[j]);
  }
  int __xlx_size_param_tmp_dist_1 = 4096;
  int __xlx_offset_param_tmp_dist_1 = 0;
  int __xlx_offset_byte_param_tmp_dist_1 = 0*8;
  long long* __xlx_tmp_dist_1__input_buffer= new long long[__xlx_tmp_dist_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_1__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_1__input_buffer[i] = __xlx_tmp_dist_1__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_2__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_2__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_2__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_2)[j]);
  }
  int __xlx_size_param_tmp_dist_2 = 4096;
  int __xlx_offset_param_tmp_dist_2 = 0;
  int __xlx_offset_byte_param_tmp_dist_2 = 0*8;
  long long* __xlx_tmp_dist_2__input_buffer= new long long[__xlx_tmp_dist_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_2__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_2__input_buffer[i] = __xlx_tmp_dist_2__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_3__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_3__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_3__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_3)[j]);
  }
  int __xlx_size_param_tmp_dist_3 = 4096;
  int __xlx_offset_param_tmp_dist_3 = 0;
  int __xlx_offset_byte_param_tmp_dist_3 = 0*8;
  long long* __xlx_tmp_dist_3__input_buffer= new long long[__xlx_tmp_dist_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_3__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_3__input_buffer[i] = __xlx_tmp_dist_3__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_4__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_4__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_4__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_4)[j]);
  }
  int __xlx_size_param_tmp_dist_4 = 4096;
  int __xlx_offset_param_tmp_dist_4 = 0;
  int __xlx_offset_byte_param_tmp_dist_4 = 0*8;
  long long* __xlx_tmp_dist_4__input_buffer= new long long[__xlx_tmp_dist_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_4__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_4__input_buffer[i] = __xlx_tmp_dist_4__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_5__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_5__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_5__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_5)[j]);
  }
  int __xlx_size_param_tmp_dist_5 = 4096;
  int __xlx_offset_param_tmp_dist_5 = 0;
  int __xlx_offset_byte_param_tmp_dist_5 = 0*8;
  long long* __xlx_tmp_dist_5__input_buffer= new long long[__xlx_tmp_dist_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_5__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_5__input_buffer[i] = __xlx_tmp_dist_5__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_6__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_6__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_6__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_6)[j]);
  }
  int __xlx_size_param_tmp_dist_6 = 4096;
  int __xlx_offset_param_tmp_dist_6 = 0;
  int __xlx_offset_byte_param_tmp_dist_6 = 0*8;
  long long* __xlx_tmp_dist_6__input_buffer= new long long[__xlx_tmp_dist_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_6__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_6__input_buffer[i] = __xlx_tmp_dist_6__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_7__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_7__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_7__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_7)[j]);
  }
  int __xlx_size_param_tmp_dist_7 = 4096;
  int __xlx_offset_param_tmp_dist_7 = 0;
  int __xlx_offset_byte_param_tmp_dist_7 = 0*8;
  long long* __xlx_tmp_dist_7__input_buffer= new long long[__xlx_tmp_dist_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_7__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_7__input_buffer[i] = __xlx_tmp_dist_7__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_8__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_8__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_8__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_8)[j]);
  }
  int __xlx_size_param_tmp_dist_8 = 4096;
  int __xlx_offset_param_tmp_dist_8 = 0;
  int __xlx_offset_byte_param_tmp_dist_8 = 0*8;
  long long* __xlx_tmp_dist_8__input_buffer= new long long[__xlx_tmp_dist_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_8__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_8__input_buffer[i] = __xlx_tmp_dist_8__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_9__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_9__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_9__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_9)[j]);
  }
  int __xlx_size_param_tmp_dist_9 = 4096;
  int __xlx_offset_param_tmp_dist_9 = 0;
  int __xlx_offset_byte_param_tmp_dist_9 = 0*8;
  long long* __xlx_tmp_dist_9__input_buffer= new long long[__xlx_tmp_dist_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_9__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_9__input_buffer[i] = __xlx_tmp_dist_9__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_10__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_10__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_10__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_10)[j]);
  }
  int __xlx_size_param_tmp_dist_10 = 4096;
  int __xlx_offset_param_tmp_dist_10 = 0;
  int __xlx_offset_byte_param_tmp_dist_10 = 0*8;
  long long* __xlx_tmp_dist_10__input_buffer= new long long[__xlx_tmp_dist_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_10__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_10__input_buffer[i] = __xlx_tmp_dist_10__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_11__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_11__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_11__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_11)[j]);
  }
  int __xlx_size_param_tmp_dist_11 = 4096;
  int __xlx_offset_param_tmp_dist_11 = 0;
  int __xlx_offset_byte_param_tmp_dist_11 = 0*8;
  long long* __xlx_tmp_dist_11__input_buffer= new long long[__xlx_tmp_dist_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_11__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_11__input_buffer[i] = __xlx_tmp_dist_11__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_12__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_12__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_12__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_12)[j]);
  }
  int __xlx_size_param_tmp_dist_12 = 4096;
  int __xlx_offset_param_tmp_dist_12 = 0;
  int __xlx_offset_byte_param_tmp_dist_12 = 0*8;
  long long* __xlx_tmp_dist_12__input_buffer= new long long[__xlx_tmp_dist_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_12__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_12__input_buffer[i] = __xlx_tmp_dist_12__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_13__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_13__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_13__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_13)[j]);
  }
  int __xlx_size_param_tmp_dist_13 = 4096;
  int __xlx_offset_param_tmp_dist_13 = 0;
  int __xlx_offset_byte_param_tmp_dist_13 = 0*8;
  long long* __xlx_tmp_dist_13__input_buffer= new long long[__xlx_tmp_dist_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_13__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_13__input_buffer[i] = __xlx_tmp_dist_13__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_14__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_14__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_14__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_14)[j]);
  }
  int __xlx_size_param_tmp_dist_14 = 4096;
  int __xlx_offset_param_tmp_dist_14 = 0;
  int __xlx_offset_byte_param_tmp_dist_14 = 0*8;
  long long* __xlx_tmp_dist_14__input_buffer= new long long[__xlx_tmp_dist_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_14__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_14__input_buffer[i] = __xlx_tmp_dist_14__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_15__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_15__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_15__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_15)[j]);
  }
  int __xlx_size_param_tmp_dist_15 = 4096;
  int __xlx_offset_param_tmp_dist_15 = 0;
  int __xlx_offset_byte_param_tmp_dist_15 = 0*8;
  long long* __xlx_tmp_dist_15__input_buffer= new long long[__xlx_tmp_dist_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_15__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_15__input_buffer[i] = __xlx_tmp_dist_15__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_16__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_16__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_16__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_16)[j]);
  }
  int __xlx_size_param_tmp_dist_16 = 4096;
  int __xlx_offset_param_tmp_dist_16 = 0;
  int __xlx_offset_byte_param_tmp_dist_16 = 0*8;
  long long* __xlx_tmp_dist_16__input_buffer= new long long[__xlx_tmp_dist_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_16__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_16__input_buffer[i] = __xlx_tmp_dist_16__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_17__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_17__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_17__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_17)[j]);
  }
  int __xlx_size_param_tmp_dist_17 = 4096;
  int __xlx_offset_param_tmp_dist_17 = 0;
  int __xlx_offset_byte_param_tmp_dist_17 = 0*8;
  long long* __xlx_tmp_dist_17__input_buffer= new long long[__xlx_tmp_dist_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_17__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_17__input_buffer[i] = __xlx_tmp_dist_17__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_18__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_18__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_18__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_18)[j]);
  }
  int __xlx_size_param_tmp_dist_18 = 4096;
  int __xlx_offset_param_tmp_dist_18 = 0;
  int __xlx_offset_byte_param_tmp_dist_18 = 0*8;
  long long* __xlx_tmp_dist_18__input_buffer= new long long[__xlx_tmp_dist_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_18__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_18__input_buffer[i] = __xlx_tmp_dist_18__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_19__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_19__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_19__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_19)[j]);
  }
  int __xlx_size_param_tmp_dist_19 = 4096;
  int __xlx_offset_param_tmp_dist_19 = 0;
  int __xlx_offset_byte_param_tmp_dist_19 = 0*8;
  long long* __xlx_tmp_dist_19__input_buffer= new long long[__xlx_tmp_dist_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_19__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_19__input_buffer[i] = __xlx_tmp_dist_19__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_20__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_20__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_20__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_20)[j]);
  }
  int __xlx_size_param_tmp_dist_20 = 4096;
  int __xlx_offset_param_tmp_dist_20 = 0;
  int __xlx_offset_byte_param_tmp_dist_20 = 0*8;
  long long* __xlx_tmp_dist_20__input_buffer= new long long[__xlx_tmp_dist_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_20__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_20__input_buffer[i] = __xlx_tmp_dist_20__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_21__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_21__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_21__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_21)[j]);
  }
  int __xlx_size_param_tmp_dist_21 = 4096;
  int __xlx_offset_param_tmp_dist_21 = 0;
  int __xlx_offset_byte_param_tmp_dist_21 = 0*8;
  long long* __xlx_tmp_dist_21__input_buffer= new long long[__xlx_tmp_dist_21__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_21__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_21__input_buffer[i] = __xlx_tmp_dist_21__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_22__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_22__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_22__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_22)[j]);
  }
  int __xlx_size_param_tmp_dist_22 = 4096;
  int __xlx_offset_param_tmp_dist_22 = 0;
  int __xlx_offset_byte_param_tmp_dist_22 = 0*8;
  long long* __xlx_tmp_dist_22__input_buffer= new long long[__xlx_tmp_dist_22__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_22__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_22__input_buffer[i] = __xlx_tmp_dist_22__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_23__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_23__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_23__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_23)[j]);
  }
  int __xlx_size_param_tmp_dist_23 = 4096;
  int __xlx_offset_param_tmp_dist_23 = 0;
  int __xlx_offset_byte_param_tmp_dist_23 = 0*8;
  long long* __xlx_tmp_dist_23__input_buffer= new long long[__xlx_tmp_dist_23__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_23__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_23__input_buffer[i] = __xlx_tmp_dist_23__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_24__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_24__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_24__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_24)[j]);
  }
  int __xlx_size_param_tmp_dist_24 = 4096;
  int __xlx_offset_param_tmp_dist_24 = 0;
  int __xlx_offset_byte_param_tmp_dist_24 = 0*8;
  long long* __xlx_tmp_dist_24__input_buffer= new long long[__xlx_tmp_dist_24__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_24__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_24__input_buffer[i] = __xlx_tmp_dist_24__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_25__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_25__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_25__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_25)[j]);
  }
  int __xlx_size_param_tmp_dist_25 = 4096;
  int __xlx_offset_param_tmp_dist_25 = 0;
  int __xlx_offset_byte_param_tmp_dist_25 = 0*8;
  long long* __xlx_tmp_dist_25__input_buffer= new long long[__xlx_tmp_dist_25__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_25__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_25__input_buffer[i] = __xlx_tmp_dist_25__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_26__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_26__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_26__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_26)[j]);
  }
  int __xlx_size_param_tmp_dist_26 = 4096;
  int __xlx_offset_param_tmp_dist_26 = 0;
  int __xlx_offset_byte_param_tmp_dist_26 = 0*8;
  long long* __xlx_tmp_dist_26__input_buffer= new long long[__xlx_tmp_dist_26__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_26__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_26__input_buffer[i] = __xlx_tmp_dist_26__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_27__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_27__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_27__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_27)[j]);
  }
  int __xlx_size_param_tmp_dist_27 = 4096;
  int __xlx_offset_param_tmp_dist_27 = 0;
  int __xlx_offset_byte_param_tmp_dist_27 = 0*8;
  long long* __xlx_tmp_dist_27__input_buffer= new long long[__xlx_tmp_dist_27__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_27__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_27__input_buffer[i] = __xlx_tmp_dist_27__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_28__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_28__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_28__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_28)[j]);
  }
  int __xlx_size_param_tmp_dist_28 = 4096;
  int __xlx_offset_param_tmp_dist_28 = 0;
  int __xlx_offset_byte_param_tmp_dist_28 = 0*8;
  long long* __xlx_tmp_dist_28__input_buffer= new long long[__xlx_tmp_dist_28__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_28__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_28__input_buffer[i] = __xlx_tmp_dist_28__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_29__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_29__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_29__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_29)[j]);
  }
  int __xlx_size_param_tmp_dist_29 = 4096;
  int __xlx_offset_param_tmp_dist_29 = 0;
  int __xlx_offset_byte_param_tmp_dist_29 = 0*8;
  long long* __xlx_tmp_dist_29__input_buffer= new long long[__xlx_tmp_dist_29__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_29__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_29__input_buffer[i] = __xlx_tmp_dist_29__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_30__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_30__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_30__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_30)[j]);
  }
  int __xlx_size_param_tmp_dist_30 = 4096;
  int __xlx_offset_param_tmp_dist_30 = 0;
  int __xlx_offset_byte_param_tmp_dist_30 = 0*8;
  long long* __xlx_tmp_dist_30__input_buffer= new long long[__xlx_tmp_dist_30__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_30__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_30__input_buffer[i] = __xlx_tmp_dist_30__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_tmp_dist_31__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist_31__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist_31__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist_31)[j]);
  }
  int __xlx_size_param_tmp_dist_31 = 4096;
  int __xlx_offset_param_tmp_dist_31 = 0;
  int __xlx_offset_byte_param_tmp_dist_31 = 0*8;
  long long* __xlx_tmp_dist_31__input_buffer= new long long[__xlx_tmp_dist_31__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist_31__tmp_vec.size(); ++i) {
    __xlx_tmp_dist_31__input_buffer[i] = __xlx_tmp_dist_31__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  BFS_Scatter(__xlx_apatb_param_CSR_V, __xlx_apatb_param_CSR_E, __xlx_apatb_param_glbl_d, __xlx_apatb_param_rd_baseAddr, __xlx_apatb_param_wr_baseAddr, __xlx_rd_port_input_buffer, __xlx_wr_port_input_buffer, __xlx_rd_req_input_buffer, __xlx_apatb_param_wr_len, __xlx_apatb_param_rd_start, __xlx_apatb_param_wr_start, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_root, __xlx_apatb_param_peID, __xlx_sw_data_0_input_buffer, __xlx_sw_data_1_input_buffer, __xlx_sw_data_2_input_buffer, __xlx_sw_data_3_input_buffer, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cycle_cnt, __xlx_apatb_param_launch_recv, __xlx_apatb_param_resWrite, __xlx_tmp_dist_0__input_buffer, __xlx_tmp_dist_1__input_buffer, __xlx_tmp_dist_2__input_buffer, __xlx_tmp_dist_3__input_buffer, __xlx_tmp_dist_4__input_buffer, __xlx_tmp_dist_5__input_buffer, __xlx_tmp_dist_6__input_buffer, __xlx_tmp_dist_7__input_buffer, __xlx_tmp_dist_8__input_buffer, __xlx_tmp_dist_9__input_buffer, __xlx_tmp_dist_10__input_buffer, __xlx_tmp_dist_11__input_buffer, __xlx_tmp_dist_12__input_buffer, __xlx_tmp_dist_13__input_buffer, __xlx_tmp_dist_14__input_buffer, __xlx_tmp_dist_15__input_buffer, __xlx_tmp_dist_16__input_buffer, __xlx_tmp_dist_17__input_buffer, __xlx_tmp_dist_18__input_buffer, __xlx_tmp_dist_19__input_buffer, __xlx_tmp_dist_20__input_buffer, __xlx_tmp_dist_21__input_buffer, __xlx_tmp_dist_22__input_buffer, __xlx_tmp_dist_23__input_buffer, __xlx_tmp_dist_24__input_buffer, __xlx_tmp_dist_25__input_buffer, __xlx_tmp_dist_26__input_buffer, __xlx_tmp_dist_27__input_buffer, __xlx_tmp_dist_28__input_buffer, __xlx_tmp_dist_29__input_buffer, __xlx_tmp_dist_30__input_buffer, __xlx_tmp_dist_31__input_buffer);
  for (unsigned i = 0; i <ap_apatb_wr_port_V_cap_bc; ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_wr_port)->write(__xlx_wr_port_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_rd_req_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_rd_req)->write(__xlx_rd_req_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_sw_data_0_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_0)->write(__xlx_sw_data_0_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_sw_data_1_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_1)->write(__xlx_sw_data_1_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_sw_data_2_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_2)->write(__xlx_sw_data_2_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_sw_data_3_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_sw_data_3)->write(__xlx_sw_data_3_input_buffer[i]);
// print __xlx_apatb_param_tmp_dist_0
  sc_bv<64>*__xlx_tmp_dist_0_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_0];
  for (int i = 0; i < __xlx_size_param_tmp_dist_0; ++i) {
    __xlx_tmp_dist_0_output_buffer[i] = __xlx_tmp_dist_0__input_buffer[i+__xlx_offset_param_tmp_dist_0];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_0; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_0)[i] = __xlx_tmp_dist_0_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_1
  sc_bv<64>*__xlx_tmp_dist_1_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_1];
  for (int i = 0; i < __xlx_size_param_tmp_dist_1; ++i) {
    __xlx_tmp_dist_1_output_buffer[i] = __xlx_tmp_dist_1__input_buffer[i+__xlx_offset_param_tmp_dist_1];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_1; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_1)[i] = __xlx_tmp_dist_1_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_2
  sc_bv<64>*__xlx_tmp_dist_2_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_2];
  for (int i = 0; i < __xlx_size_param_tmp_dist_2; ++i) {
    __xlx_tmp_dist_2_output_buffer[i] = __xlx_tmp_dist_2__input_buffer[i+__xlx_offset_param_tmp_dist_2];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_2; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_2)[i] = __xlx_tmp_dist_2_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_3
  sc_bv<64>*__xlx_tmp_dist_3_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_3];
  for (int i = 0; i < __xlx_size_param_tmp_dist_3; ++i) {
    __xlx_tmp_dist_3_output_buffer[i] = __xlx_tmp_dist_3__input_buffer[i+__xlx_offset_param_tmp_dist_3];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_3; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_3)[i] = __xlx_tmp_dist_3_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_4
  sc_bv<64>*__xlx_tmp_dist_4_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_4];
  for (int i = 0; i < __xlx_size_param_tmp_dist_4; ++i) {
    __xlx_tmp_dist_4_output_buffer[i] = __xlx_tmp_dist_4__input_buffer[i+__xlx_offset_param_tmp_dist_4];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_4; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_4)[i] = __xlx_tmp_dist_4_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_5
  sc_bv<64>*__xlx_tmp_dist_5_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_5];
  for (int i = 0; i < __xlx_size_param_tmp_dist_5; ++i) {
    __xlx_tmp_dist_5_output_buffer[i] = __xlx_tmp_dist_5__input_buffer[i+__xlx_offset_param_tmp_dist_5];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_5; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_5)[i] = __xlx_tmp_dist_5_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_6
  sc_bv<64>*__xlx_tmp_dist_6_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_6];
  for (int i = 0; i < __xlx_size_param_tmp_dist_6; ++i) {
    __xlx_tmp_dist_6_output_buffer[i] = __xlx_tmp_dist_6__input_buffer[i+__xlx_offset_param_tmp_dist_6];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_6; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_6)[i] = __xlx_tmp_dist_6_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_7
  sc_bv<64>*__xlx_tmp_dist_7_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_7];
  for (int i = 0; i < __xlx_size_param_tmp_dist_7; ++i) {
    __xlx_tmp_dist_7_output_buffer[i] = __xlx_tmp_dist_7__input_buffer[i+__xlx_offset_param_tmp_dist_7];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_7; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_7)[i] = __xlx_tmp_dist_7_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_8
  sc_bv<64>*__xlx_tmp_dist_8_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_8];
  for (int i = 0; i < __xlx_size_param_tmp_dist_8; ++i) {
    __xlx_tmp_dist_8_output_buffer[i] = __xlx_tmp_dist_8__input_buffer[i+__xlx_offset_param_tmp_dist_8];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_8; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_8)[i] = __xlx_tmp_dist_8_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_9
  sc_bv<64>*__xlx_tmp_dist_9_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_9];
  for (int i = 0; i < __xlx_size_param_tmp_dist_9; ++i) {
    __xlx_tmp_dist_9_output_buffer[i] = __xlx_tmp_dist_9__input_buffer[i+__xlx_offset_param_tmp_dist_9];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_9; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_9)[i] = __xlx_tmp_dist_9_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_10
  sc_bv<64>*__xlx_tmp_dist_10_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_10];
  for (int i = 0; i < __xlx_size_param_tmp_dist_10; ++i) {
    __xlx_tmp_dist_10_output_buffer[i] = __xlx_tmp_dist_10__input_buffer[i+__xlx_offset_param_tmp_dist_10];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_10; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_10)[i] = __xlx_tmp_dist_10_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_11
  sc_bv<64>*__xlx_tmp_dist_11_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_11];
  for (int i = 0; i < __xlx_size_param_tmp_dist_11; ++i) {
    __xlx_tmp_dist_11_output_buffer[i] = __xlx_tmp_dist_11__input_buffer[i+__xlx_offset_param_tmp_dist_11];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_11; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_11)[i] = __xlx_tmp_dist_11_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_12
  sc_bv<64>*__xlx_tmp_dist_12_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_12];
  for (int i = 0; i < __xlx_size_param_tmp_dist_12; ++i) {
    __xlx_tmp_dist_12_output_buffer[i] = __xlx_tmp_dist_12__input_buffer[i+__xlx_offset_param_tmp_dist_12];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_12; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_12)[i] = __xlx_tmp_dist_12_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_13
  sc_bv<64>*__xlx_tmp_dist_13_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_13];
  for (int i = 0; i < __xlx_size_param_tmp_dist_13; ++i) {
    __xlx_tmp_dist_13_output_buffer[i] = __xlx_tmp_dist_13__input_buffer[i+__xlx_offset_param_tmp_dist_13];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_13; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_13)[i] = __xlx_tmp_dist_13_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_14
  sc_bv<64>*__xlx_tmp_dist_14_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_14];
  for (int i = 0; i < __xlx_size_param_tmp_dist_14; ++i) {
    __xlx_tmp_dist_14_output_buffer[i] = __xlx_tmp_dist_14__input_buffer[i+__xlx_offset_param_tmp_dist_14];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_14; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_14)[i] = __xlx_tmp_dist_14_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_15
  sc_bv<64>*__xlx_tmp_dist_15_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_15];
  for (int i = 0; i < __xlx_size_param_tmp_dist_15; ++i) {
    __xlx_tmp_dist_15_output_buffer[i] = __xlx_tmp_dist_15__input_buffer[i+__xlx_offset_param_tmp_dist_15];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_15; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_15)[i] = __xlx_tmp_dist_15_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_16
  sc_bv<64>*__xlx_tmp_dist_16_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_16];
  for (int i = 0; i < __xlx_size_param_tmp_dist_16; ++i) {
    __xlx_tmp_dist_16_output_buffer[i] = __xlx_tmp_dist_16__input_buffer[i+__xlx_offset_param_tmp_dist_16];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_16; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_16)[i] = __xlx_tmp_dist_16_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_17
  sc_bv<64>*__xlx_tmp_dist_17_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_17];
  for (int i = 0; i < __xlx_size_param_tmp_dist_17; ++i) {
    __xlx_tmp_dist_17_output_buffer[i] = __xlx_tmp_dist_17__input_buffer[i+__xlx_offset_param_tmp_dist_17];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_17; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_17)[i] = __xlx_tmp_dist_17_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_18
  sc_bv<64>*__xlx_tmp_dist_18_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_18];
  for (int i = 0; i < __xlx_size_param_tmp_dist_18; ++i) {
    __xlx_tmp_dist_18_output_buffer[i] = __xlx_tmp_dist_18__input_buffer[i+__xlx_offset_param_tmp_dist_18];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_18; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_18)[i] = __xlx_tmp_dist_18_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_19
  sc_bv<64>*__xlx_tmp_dist_19_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_19];
  for (int i = 0; i < __xlx_size_param_tmp_dist_19; ++i) {
    __xlx_tmp_dist_19_output_buffer[i] = __xlx_tmp_dist_19__input_buffer[i+__xlx_offset_param_tmp_dist_19];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_19; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_19)[i] = __xlx_tmp_dist_19_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_20
  sc_bv<64>*__xlx_tmp_dist_20_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_20];
  for (int i = 0; i < __xlx_size_param_tmp_dist_20; ++i) {
    __xlx_tmp_dist_20_output_buffer[i] = __xlx_tmp_dist_20__input_buffer[i+__xlx_offset_param_tmp_dist_20];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_20; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_20)[i] = __xlx_tmp_dist_20_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_21
  sc_bv<64>*__xlx_tmp_dist_21_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_21];
  for (int i = 0; i < __xlx_size_param_tmp_dist_21; ++i) {
    __xlx_tmp_dist_21_output_buffer[i] = __xlx_tmp_dist_21__input_buffer[i+__xlx_offset_param_tmp_dist_21];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_21; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_21)[i] = __xlx_tmp_dist_21_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_22
  sc_bv<64>*__xlx_tmp_dist_22_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_22];
  for (int i = 0; i < __xlx_size_param_tmp_dist_22; ++i) {
    __xlx_tmp_dist_22_output_buffer[i] = __xlx_tmp_dist_22__input_buffer[i+__xlx_offset_param_tmp_dist_22];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_22; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_22)[i] = __xlx_tmp_dist_22_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_23
  sc_bv<64>*__xlx_tmp_dist_23_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_23];
  for (int i = 0; i < __xlx_size_param_tmp_dist_23; ++i) {
    __xlx_tmp_dist_23_output_buffer[i] = __xlx_tmp_dist_23__input_buffer[i+__xlx_offset_param_tmp_dist_23];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_23; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_23)[i] = __xlx_tmp_dist_23_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_24
  sc_bv<64>*__xlx_tmp_dist_24_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_24];
  for (int i = 0; i < __xlx_size_param_tmp_dist_24; ++i) {
    __xlx_tmp_dist_24_output_buffer[i] = __xlx_tmp_dist_24__input_buffer[i+__xlx_offset_param_tmp_dist_24];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_24; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_24)[i] = __xlx_tmp_dist_24_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_25
  sc_bv<64>*__xlx_tmp_dist_25_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_25];
  for (int i = 0; i < __xlx_size_param_tmp_dist_25; ++i) {
    __xlx_tmp_dist_25_output_buffer[i] = __xlx_tmp_dist_25__input_buffer[i+__xlx_offset_param_tmp_dist_25];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_25; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_25)[i] = __xlx_tmp_dist_25_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_26
  sc_bv<64>*__xlx_tmp_dist_26_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_26];
  for (int i = 0; i < __xlx_size_param_tmp_dist_26; ++i) {
    __xlx_tmp_dist_26_output_buffer[i] = __xlx_tmp_dist_26__input_buffer[i+__xlx_offset_param_tmp_dist_26];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_26; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_26)[i] = __xlx_tmp_dist_26_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_27
  sc_bv<64>*__xlx_tmp_dist_27_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_27];
  for (int i = 0; i < __xlx_size_param_tmp_dist_27; ++i) {
    __xlx_tmp_dist_27_output_buffer[i] = __xlx_tmp_dist_27__input_buffer[i+__xlx_offset_param_tmp_dist_27];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_27; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_27)[i] = __xlx_tmp_dist_27_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_28
  sc_bv<64>*__xlx_tmp_dist_28_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_28];
  for (int i = 0; i < __xlx_size_param_tmp_dist_28; ++i) {
    __xlx_tmp_dist_28_output_buffer[i] = __xlx_tmp_dist_28__input_buffer[i+__xlx_offset_param_tmp_dist_28];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_28; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_28)[i] = __xlx_tmp_dist_28_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_29
  sc_bv<64>*__xlx_tmp_dist_29_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_29];
  for (int i = 0; i < __xlx_size_param_tmp_dist_29; ++i) {
    __xlx_tmp_dist_29_output_buffer[i] = __xlx_tmp_dist_29__input_buffer[i+__xlx_offset_param_tmp_dist_29];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_29; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_29)[i] = __xlx_tmp_dist_29_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_30
  sc_bv<64>*__xlx_tmp_dist_30_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_30];
  for (int i = 0; i < __xlx_size_param_tmp_dist_30; ++i) {
    __xlx_tmp_dist_30_output_buffer[i] = __xlx_tmp_dist_30__input_buffer[i+__xlx_offset_param_tmp_dist_30];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_30; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_30)[i] = __xlx_tmp_dist_30_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_tmp_dist_31
  sc_bv<64>*__xlx_tmp_dist_31_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist_31];
  for (int i = 0; i < __xlx_size_param_tmp_dist_31; ++i) {
    __xlx_tmp_dist_31_output_buffer[i] = __xlx_tmp_dist_31__input_buffer[i+__xlx_offset_param_tmp_dist_31];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist_31; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist_31)[i] = __xlx_tmp_dist_31_output_buffer[i].to_uint64();
  }
}
