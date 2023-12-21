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
extern "C" void BFS_Gather(char, volatile void *, volatile void *, long long*, long long*, long long*, long long*, long long*, long long*, long long*, long long*);
extern "C" void apatb_BFS_Gather_hw(char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data, volatile void * __xlx_apatb_param_exist, volatile void * __xlx_apatb_param_tmp_dist_0, volatile void * __xlx_apatb_param_tmp_dist_1, volatile void * __xlx_apatb_param_tmp_dist_2, volatile void * __xlx_apatb_param_tmp_dist_3, volatile void * __xlx_apatb_param_tmp_dist_4, volatile void * __xlx_apatb_param_tmp_dist_5, volatile void * __xlx_apatb_param_tmp_dist_6, volatile void * __xlx_apatb_param_tmp_dist_7) {
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
  BFS_Gather(__xlx_apatb_param_peID, __xlx_apatb_param_sw_data, __xlx_apatb_param_exist, __xlx_tmp_dist_0__input_buffer, __xlx_tmp_dist_1__input_buffer, __xlx_tmp_dist_2__input_buffer, __xlx_tmp_dist_3__input_buffer, __xlx_tmp_dist_4__input_buffer, __xlx_tmp_dist_5__input_buffer, __xlx_tmp_dist_6__input_buffer, __xlx_tmp_dist_7__input_buffer);
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
