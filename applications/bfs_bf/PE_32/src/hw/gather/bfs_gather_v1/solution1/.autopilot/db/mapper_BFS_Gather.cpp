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
extern "C" void BFS_Gather(char, volatile void *, volatile void *, long long*);
extern "C" void apatb_BFS_Gather_hw(char __xlx_apatb_param_peID, volatile void * __xlx_apatb_param_sw_data, volatile void * __xlx_apatb_param_exist, volatile void * __xlx_apatb_param_tmp_dist) {
  // Collect __xlx_tmp_dist__tmp_vec
  vector<sc_bv<64> >__xlx_tmp_dist__tmp_vec;
  for (int j = 0, e = 4096; j != e; ++j) {
    __xlx_tmp_dist__tmp_vec.push_back(((long long*)__xlx_apatb_param_tmp_dist)[j]);
  }
  int __xlx_size_param_tmp_dist = 4096;
  int __xlx_offset_param_tmp_dist = 0;
  int __xlx_offset_byte_param_tmp_dist = 0*8;
  long long* __xlx_tmp_dist__input_buffer= new long long[__xlx_tmp_dist__tmp_vec.size()];
  for (int i = 0; i < __xlx_tmp_dist__tmp_vec.size(); ++i) {
    __xlx_tmp_dist__input_buffer[i] = __xlx_tmp_dist__tmp_vec[i].range(63, 0).to_uint64();
  }
  // DUT call
  BFS_Gather(__xlx_apatb_param_peID, __xlx_apatb_param_sw_data, __xlx_apatb_param_exist, __xlx_tmp_dist__input_buffer);
// print __xlx_apatb_param_tmp_dist
  sc_bv<64>*__xlx_tmp_dist_output_buffer = new sc_bv<64>[__xlx_size_param_tmp_dist];
  for (int i = 0; i < __xlx_size_param_tmp_dist; ++i) {
    __xlx_tmp_dist_output_buffer[i] = __xlx_tmp_dist__input_buffer[i+__xlx_offset_param_tmp_dist];
  }
  for (int i = 0; i < __xlx_size_param_tmp_dist; ++i) {
    ((long long*)__xlx_apatb_param_tmp_dist)[i] = __xlx_tmp_dist_output_buffer[i].to_uint64();
  }
}
