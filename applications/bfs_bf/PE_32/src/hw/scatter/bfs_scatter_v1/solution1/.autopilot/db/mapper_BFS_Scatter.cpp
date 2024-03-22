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
extern "C" void BFS_Scatter(__cosim_s8__, __cosim_s8__, __cosim_s8__, volatile void *, volatile void *, __cosim_s20__*, __cosim_s20__*, int*, volatile void *, volatile void *, volatile void *, int, int, char, int*, int*, int*, int*, volatile void *, volatile void *, volatile void *, char, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*);
extern "C" void apatb_BFS_Scatter_hw(__cosim_s8__ __xlx_apatb_param_CSR_V, __cosim_s8__ __xlx_apatb_param_CSR_E, __cosim_s8__ __xlx_apatb_param_glbl_d, volatile void * __xlx_apatb_param_rd_baseAddr, volatile void * __xlx_apatb_param_wr_baseAddr, volatile void * __xlx_apatb_param_rd_port, volatile void * __xlx_apatb_param_wr_port, volatile void * __xlx_apatb_param_rd_req, volatile void * __xlx_apatb_param_wr_len, volatile void * __xlx_apatb_param_rd_start, volatile void * __xlx_apatb_param_wr_start, int __xlx_apatb_param_N_Vertex, int __xlx_apatb_param_root, char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data_0, volatile void * __xlx_apatb_param_sw_data_1, volatile void * __xlx_apatb_param_sw_data_2, volatile void * __xlx_apatb_param_sw_data_3, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cycle_cnt, volatile void * __xlx_apatb_param_launch_recv, char __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_tmp_dist_0, volatile void * __xlx_apatb_param_tmp_dist_1, volatile void * __xlx_apatb_param_tmp_dist_2, volatile void * __xlx_apatb_param_tmp_dist_3, volatile void * __xlx_apatb_param_tmp_dist_4, volatile void * __xlx_apatb_param_tmp_dist_5, volatile void * __xlx_apatb_param_tmp_dist_6, volatile void * __xlx_apatb_param_tmp_dist_7) {
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
  // DUT call
  BFS_Scatter(__xlx_apatb_param_CSR_V, __xlx_apatb_param_CSR_E, __xlx_apatb_param_glbl_d, __xlx_apatb_param_rd_baseAddr, __xlx_apatb_param_wr_baseAddr, __xlx_rd_port_input_buffer, __xlx_wr_port_input_buffer, __xlx_rd_req_input_buffer, __xlx_apatb_param_wr_len, __xlx_apatb_param_rd_start, __xlx_apatb_param_wr_start, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_root, __xlx_apatb_param_peID, __xlx_sw_data_0_input_buffer, __xlx_sw_data_1_input_buffer, __xlx_sw_data_2_input_buffer, __xlx_sw_data_3_input_buffer, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cycle_cnt, __xlx_apatb_param_launch_recv, __xlx_apatb_param_resWrite, __xlx_tmp_dist_0__input_buffer, __xlx_tmp_dist_1__input_buffer, __xlx_tmp_dist_2__input_buffer, __xlx_tmp_dist_3__input_buffer, __xlx_tmp_dist_4__input_buffer, __xlx_tmp_dist_5__input_buffer, __xlx_tmp_dist_6__input_buffer, __xlx_tmp_dist_7__input_buffer);
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
}
