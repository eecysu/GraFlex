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
extern "C" void BFS_Ctrl_4X1_VER1(volatile void *, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_BFS_Ctrl_4X1_VER1_hw(volatile void * __xlx_apatb_param_dummyParam, int __xlx_apatb_param_N_Vertex, volatile void * __xlx_apatb_param_resWrite, volatile void * __xlx_apatb_param_glblIterIdx, volatile void * __xlx_apatb_param_cnt_scatter_0, volatile void * __xlx_apatb_param_cnt_scatter_1, volatile void * __xlx_apatb_param_cnt_scatter_2, volatile void * __xlx_apatb_param_cnt_scatter_3, volatile void * __xlx_apatb_param_cnt_gather_0, volatile void * __xlx_apatb_param_cnt_gather_1, volatile void * __xlx_apatb_param_cnt_gather_2, volatile void * __xlx_apatb_param_cnt_gather_3, volatile void * __xlx_apatb_param_exist_0, volatile void * __xlx_apatb_param_exist_1, volatile void * __xlx_apatb_param_exist_2, volatile void * __xlx_apatb_param_exist_3) {
  // DUT call
  BFS_Ctrl_4X1_VER1(__xlx_apatb_param_dummyParam, __xlx_apatb_param_N_Vertex, __xlx_apatb_param_resWrite, __xlx_apatb_param_glblIterIdx, __xlx_apatb_param_cnt_scatter_0, __xlx_apatb_param_cnt_scatter_1, __xlx_apatb_param_cnt_scatter_2, __xlx_apatb_param_cnt_scatter_3, __xlx_apatb_param_cnt_gather_0, __xlx_apatb_param_cnt_gather_1, __xlx_apatb_param_cnt_gather_2, __xlx_apatb_param_cnt_gather_3, __xlx_apatb_param_exist_0, __xlx_apatb_param_exist_1, __xlx_apatb_param_exist_2, __xlx_apatb_param_exist_3);
}
