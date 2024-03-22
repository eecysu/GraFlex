#include <stdlib.h>
#include <cstring>
#include <string>
#include <fstream>
#include <iostream>
#include <time.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "bfs_host.h"

#define MAX_NODE 4*1024*1024
#define MAX_EDGE 120*1024*1024
#define PAD_MASK 0xffffffff
#define NUM_PE 2

// #Banks in total(32 HBM + 2DDR)
#define MAX_BANKCOUNT 34
#define BANK_NAME(n) n | XCL_MEM_TOPOLOGY
#define DDR_BANK_NAME(n) (n+32) | XCL_MEM_TOPOLOGY
const int bank[MAX_BANKCOUNT] = {
    BANK_NAME(0),  BANK_NAME(1),  BANK_NAME(2),  BANK_NAME(3),  BANK_NAME(4),
    BANK_NAME(5),  BANK_NAME(6),  BANK_NAME(7),  BANK_NAME(8),  BANK_NAME(9),
    BANK_NAME(10), BANK_NAME(11), BANK_NAME(12), BANK_NAME(13), BANK_NAME(14),
    BANK_NAME(15), BANK_NAME(16), BANK_NAME(17), BANK_NAME(18), BANK_NAME(19),
    BANK_NAME(20), BANK_NAME(21), BANK_NAME(22), BANK_NAME(23), BANK_NAME(24),
    BANK_NAME(25), BANK_NAME(26), BANK_NAME(27), BANK_NAME(28), BANK_NAME(29),
    BANK_NAME(30), BANK_NAME(31), DDR_BANK_NAME(0), DDR_BANK_NAME(1)};

typedef unsigned char uchar;
typedef unsigned int uint;
typedef ap_uint<16> duint16_t;
typedef ap_uint<32> duint32_t;
typedef ap_uint<128> duint128_t;

using std::to_string;
using std::vector;
using std::string;
using std::stoi;
using std::endl;

uint node_num, edge_num;
uint ptr_dV[NUM_PE];
uint ptr_dE[NUM_PE];

uint ptr_dwV[NUM_PE] = {0};
uint ptr_dwE[NUM_PE] = {0};

// Host memory allocation
vector<uint, aligned_allocator<uint>> CSR_V(MAX_NODE);
vector<duint32_t, aligned_allocator<duint32_t>> CSR_E(MAX_EDGE);

uint d_CSR_V[NUM_PE][MAX_NODE/NUM_PE];
uint d_CSR_E[NUM_PE][MAX_EDGE/NUM_PE];
uint d[NUM_PE][MAX_NODE/(NUM_PE)];
uint final_dist[MAX_NODE];

// Ground-truth data transfered via PCIe
vector<vector<duint128_t,aligned_allocator<duint128_t>>> w_CSR_V(NUM_PE, vector<duint128_t,aligned_allocator<duint128_t>>(MAX_NODE/(NUM_PE*4))); // 4-entry per pack
vector<vector<duint128_t,aligned_allocator<duint128_t>>> w_CSR_E(NUM_PE, vector<duint128_t,aligned_allocator<duint128_t>>(MAX_EDGE/(NUM_PE*4))); // 4-entry per pack
vector<vector<duint128_t,aligned_allocator<duint128_t>>> w_glbl_d(NUM_PE, vector<duint128_t,aligned_allocator<duint128_t>>(MAX_NODE/(NUM_PE*4)));


int ArgPos(char *str, int argc, char **argv)
{
  int a;
  for (a = 1; a < argc; a++) if (!strcmp(str, argv[a]))
  {
    if (a == argc - 1) {
      printf("Argument missing for %s\n", str);
    }
      return a;
  }
  return -1;
}


uint u_ceil (uint dend, uint dsor) {
  uint quot, rmdr;
  quot = dend / dsor;
  rmdr = dend % dsor;

  return (rmdr==0 ? quot : quot+1);
}


// Construct CSR_V and CSR_E as a whole graph
void BuildCSR (string filename, const int n_nodes, vector<uint, aligned_allocator<uint>>& ArrOfst,
			   vector<duint32_t, aligned_allocator<duint32_t>>& ArrEdge)
{
  std::ifstream inFile;
  int ptr_V, ptr_E;
  uint srcIdx, srcIdx_old, dstIdx;

  ptr_V = 0;
  ptr_E = 0;

  inFile.open(filename);
  while (inFile >> srcIdx >> dstIdx)
  {
    if (ptr_E == 0)
	{
      for (uint k=0; k<=srcIdx; ++k) {
        ArrOfst[k] = 0;
      }
      srcIdx_old = srcIdx;
    } // cope with the header
    ArrEdge[ptr_E] = dstIdx;
    
    if (srcIdx_old != srcIdx)
    {
      if (srcIdx-srcIdx_old > 1)
      {
        for (uint i=1; i < srcIdx-srcIdx_old; ++i)
          ArrOfst[srcIdx_old+i] = ptr_E; // these nodes have no neighbor
      }  
      ptr_V = srcIdx;
      srcIdx_old = srcIdx;
      ArrOfst[ptr_V] = ptr_E;
    }
    ptr_E++;
  } // end while
	
  while (ptr_V < n_nodes)
  {
    ArrOfst[++ptr_V] = ptr_E;
  }
  edge_num = ptr_E;
  node_num = ptr_V;

  std::cout << "Building from file " << filename << ", node_num: " << node_num << ", edge_num: " << edge_num << endl;
  inFile.close();
}


void BuildDisCSR (void)
{
  uint i, j, k, l;
  uint cur_deg[NUM_PE];
  uint ptr_E[NUM_PE] = {0};

  ap_uint<24> dstIdx;
  ap_uint<8>  rndEdgeW;

  // initialization
  srand(time(0));
  for (k=0; k<NUM_PE; ++k)
  {
    ptr_dV[k] = 0;
    ptr_dE[k] = 0;
    d_CSR_V[k][0] = 0;
  }

  uint tailIdx = (node_num/8+2) * 4; // 8 = 2*4
  for (k=0; k<NUM_PE; ++k)
  {
    for (i=k; i<node_num; i+=NUM_PE)
    {   
      ptr_E[k] = CSR_V[i];
      cur_deg[k] = CSR_V[i+1] - CSR_V[i];

      // sentinel header
      if (cur_deg[k] != 0) {
        d_CSR_E[k][ptr_dE[k]] = (ap_uint<8>(0), ap_uint<24>((i-k)/NUM_PE));
        ++ptr_dE[k];
      }   

      for (j=0; j<cur_deg[k]; ++j)
      {   
        dstIdx   = CSR_E[ptr_E[k]+j].range(23, 0); 
        rndEdgeW = ap_uint<8>(1);

        d_CSR_E[k][ptr_dE[k]] = (rndEdgeW, dstIdx);
        ++ptr_dE[k];
      }   

      // assign value to d_CSR_V
      ++ptr_dV[k];
      d_CSR_V[k][ptr_dV[k]] = d_CSR_V[k][ptr_dV[k]-1] + ((cur_deg[k]==0) ? 0 : cur_deg[k]+1);
    }   

    // final padding
    while (ptr_dV[k] < tailIdx)
    {   
      ++ptr_dV[k];
      d_CSR_V[k][ptr_dV[k]] = d_CSR_V[k][ptr_dV[k]-1];
    }  // end while
  }

  /* report CSR info after partition */
  uint sum = 0;
  for (k=0; k<NUM_PE; ++k)
    sum += ptr_dE[k];

  for (k=0; k<NUM_PE; ++k) {
    std::cout << "CSR_V_pt" << "[" << k << "][" << ptr_dV[k]<< "] = " << d_CSR_V[k][ptr_dV[k]] << "  ";
    if (k%4 == 3)
      std::cout << "\n";
  }

  std::cout << "num of edges: " << edge_num << std::endl;
  std::cout << "sum of edges: " << sum << std::endl; // shoud be edge_num + node_num

  return;
}


void ReshapeDisCSR (void)
{
  uint i, j, k, l;
  uint n_vertex_iter, n_vertex_upper;
  uint u_deg, n_edge_iter, n_edge_rmdr;
  uint ptr_csrE;

  ap_uint<32> tmpVal_E[4];
  ap_uint<32> tmpVal_V[4];
  ap_uint<28> pre_baseAddr, baseAddr;
  ap_uint<28> nodeDeg;
  ap_uint<4>  padDecr;

  for (k=0; k<NUM_PE; ++k) {
    ptr_csrE = 0;
    pre_baseAddr = 0;

    for (i=0; i<ptr_dV[k]; ++i)
    {
        u_deg = d_CSR_V[k][i+1] - d_CSR_V[k][i];
        nodeDeg = u_ceil(u_deg, 4);
        baseAddr = pre_baseAddr;

        padDecr = (ap_uint<4>)(nodeDeg*4 - u_deg);
        tmpVal_V[i%4] = (padDecr, baseAddr);

        n_edge_iter = u_deg / 4;
        n_edge_rmdr = u_deg % 4;
        for (j=0; j<n_edge_iter; ++j)
        {
          for (l=0; l<4; ++l) {
            tmpVal_E[l] = d_CSR_E[k][ptr_csrE++];
          }
          w_CSR_E[k][ptr_dwE[k]] = (tmpVal_E[3], tmpVal_E[2], tmpVal_E[1], tmpVal_E[0]);
          ++ptr_dwE[k];
        }

        if (n_edge_rmdr != 0)
        {
          for (l=0; l<n_edge_rmdr; ++l) {
            tmpVal_E[l] = d_CSR_E[k][ptr_csrE++];
          }
          for (l=n_edge_rmdr; l<4; ++l) {
            tmpVal_E[l] = PAD_MASK; // padding value
          }
          w_CSR_E[k][ptr_dwE[k]] = (tmpVal_E[3], tmpVal_E[2], tmpVal_E[1], tmpVal_E[0]);
          ++ptr_dwE[k];
        }
        pre_baseAddr = pre_baseAddr + nodeDeg;

      if (i%4 == 3) {
        w_CSR_V[k][ptr_dwV[k]] = (tmpVal_V[3], tmpVal_V[2], tmpVal_V[1], tmpVal_V[0]);
        ++ptr_dwV[k];
      }
    }
  } // end for k

  return;
}



// File I/O functions
void SaveArrOfst(string outFn, duint128_t* arr, uint length)
{
  std::ofstream outFile;
  char tmpLine[10];
  duint128_t tmpVal;
  uint32_t dstVal;

  outFile.open(outFn);
  for (uint i=0; i<length; i++)
  {
    tmpVal = arr[i];
    dstVal = tmpVal.range(31 ,  0);
    sprintf(tmpLine, "%08x\n", dstVal);
    outFile << tmpLine;

    dstVal = tmpVal.range(63 , 32);
    sprintf(tmpLine, "%08x\n", dstVal);
    outFile << tmpLine;

    dstVal = tmpVal.range(95 , 64);
    sprintf(tmpLine, "%08x\n", dstVal);
    outFile << tmpLine;

    dstVal = tmpVal.range(127, 96);
    sprintf(tmpLine, "%08x\n", dstVal);
    outFile << tmpLine;
  }
  outFile.close();

  return;
}


void ParseArray(short id, duint128_t* baseAddr)                                                                                                                   
{     
  uint idx, num_item;
  uint tgtVal;
  ap_uint<64> distVal[8];
  const unsigned long int mask[8] = {
      0x00000000000000ff, 0x000000000000ff00, 0x0000000000ff0000, 0x00000000ff000000,
      0x000000ff00000000, 0x0000ff0000000000, 0x00ff000000000000, 0xff00000000000000
  };  
  const uchar offset[8] = {0, 8, 16, 24, 32, 40, 48, 56};
      
  num_item = node_num / NUM_PE + 1;
      
  idx = 0;
  for (uint i=0; i<4096; ++i)
  {   
    distVal[0] = baseAddr[4*i].range(63, 0); // bank 0
    distVal[1] = baseAddr[4*i].range(127,64); // bank 1
    distVal[2] = baseAddr[4*i+1].range(63, 0); // bank 2
    distVal[3] = baseAddr[4*i+1].range(127,64); // bank 3
    distVal[4] = baseAddr[4*i+2].range(63, 0); // bank 4
    distVal[5] = baseAddr[4*i+2].range(127,64); // bank 5
    distVal[6] = baseAddr[4*i+3].range(63, 0); // bank 6
    distVal[7] = baseAddr[4*i+3].range(127,64); // bank 7

    for (uchar k=0; k<8; ++k)
    { 
      for (uchar j=0; j<8; ++j)
      {
        tgtVal = (distVal[j] & mask[k]) >> offset[k];
        d[id][idx] = tgtVal;
        idx++;
      }
    } 
  }   
      
  return;
}     
  

void GatherDist (uint length)
{    
  for (uint n=0; n<length; ++n)
  {  
    for (uchar i=0; i<NUM_PE; ++i)
    {
      final_dist[NUM_PE*n+i] = d[i][n];
    }
  }  
     
  return;
}    
     
void ParseDist (void)
{    
  // parse order: pe0 -> pe15
  duint128_t* baseAddr;
     
  for (short i=0; i<NUM_PE; ++i)
  {  
    baseAddr = w_glbl_d[i].data();
    ParseArray(i, baseAddr);

  }  
  GatherDist(node_num/NUM_PE+1);
     
  return;
} 


void SaveOutcome(string outFn, uint* arr, uint length)
{     
  std::ofstream outFile;
  char tmpLine[10];
  uint32_t dstVal;
  outFile.open(outFn);
  for (uint i=0; i<length; i++)
  {   
    dstVal = arr[i];
    sprintf(tmpLine, "%d\n", dstVal);
    outFile << tmpLine;
  }   
  outFile.close();
      
  return;
}


int main (int argc, char *argv[])
{
  if (argc != 6) {
    std::cout << "Usage: ./bfs <xclbin File> <n_nodes> <root> <input graph File> <kernel frequency in MHz>" << endl;
    return EXIT_FAILURE;
  }
  char* xclbinFilename = argv[1];
  int n_nodes = atoi(argv[2]);
  int root = atoi(argv[3]);
  string inGraphFn = argv[4];
  int krnl_freq = atoi(argv[5]);

  /* Build CSR */
  BuildCSR(inGraphFn, n_nodes, CSR_V, CSR_E);
  std::cout << "Building CSR success!\n";

  /* dstIdx based CSR partition */
  BuildDisCSR();
  std::cout << "Building Distributed CSR success!\n";

  /* Reshape CSR to fit kernel DATA_WIDTH */
  ReshapeDisCSR();
  std::cout << "Reshape Distributed CSR success!\n";

  /*
  string ArrOfst_fn[NUM_PE];
  string ArrEdge_fn[NUM_PE];

  for (uchar i=0; i<NUM_PE; ++i)
  {
    ArrOfst_fn[i] = "./dis_csr_gq/GQ_CSR_V_" + to_string(i) + ".txt";
    ArrEdge_fn[i] = "./dis_csr_gq/GQ_CSR_E_" + to_string(i) + ".txt";
    SaveArrOfst(ArrOfst_fn[i], &w_CSR_V[i][0], ptr_dwV[i]);
    SaveArrOfst(ArrEdge_fn[i], &w_CSR_E[i][0], ptr_dwE[i]);
  }
  */

  vector<cl::Device> devices;
  cl::Device device;
  vector<cl::Platform> platforms;
  bool found_device = false;

  // Find Xilinx Platform and targeted device
  cl::Platform::get(&platforms);
  for (size_t i = 0; (i < platforms.size() )&(found_device == false); i++)
  {
    cl::Platform platform = platforms[i];
    std::string platformName = platform.getInfo<CL_PLATFORM_NAME>();
    if (platformName == "Xilinx") {
      devices.clear();
      platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
      if (devices.size()) {
        device = devices[0];
        found_device = true;
        break;
      }
    }
  }
  if (found_device == false) {
    std::cout << "Error: Unable to find Target Device " << device.getInfo<CL_DEVICE_NAME>() << endl;
    return EXIT_FAILURE; 
  }

  // Creating Context and Command Queue for selected device
  cl::Context context(device);
  cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE);

  // Load xclbin 
  std::cout << "Loading: '" << xclbinFilename << "'\n";
  std::ifstream bin_file(xclbinFilename, std::ifstream::binary);
  bin_file.seekg (0, bin_file.end);
  unsigned nb = bin_file.tellg();
  bin_file.seekg (0, bin_file.beg);
  char *buf = new char [nb];
  bin_file.read(buf, nb);

  // Creating Program from Binary File
  cl::Program::Binaries bins;
  bins.push_back({buf,nb});
  devices.resize(1);

  cl::Program program(context, devices, bins);
  cl::Kernel krnl;

  string krnl_name_full = "inst_bfs_2x1_v1:{inst_bfs_2x1_v1_1}";
  printf("Creating a kernel [%s] for CU(%d)\n", krnl_name_full.c_str(), 1);
  krnl = cl::Kernel(program, krnl_name_full.c_str());

  cl_mem_ext_ptr_t CSR_V_Ext[NUM_PE];
  cl_mem_ext_ptr_t CSR_E_Ext[NUM_PE];
  cl_mem_ext_ptr_t glbl_d_Ext[NUM_PE];

  for (short i=0; i<NUM_PE; ++i)
  {
    CSR_V_Ext[i].flags = bank[i];
    CSR_V_Ext[i].obj = w_CSR_V[i].data();
    CSR_V_Ext[i].param = 0;

    CSR_E_Ext[i].flags = bank[i];
    CSR_E_Ext[i].obj = w_CSR_E[i].data();
    CSR_E_Ext[i].param = 0;

    glbl_d_Ext[i].flags = bank[i]; 
    glbl_d_Ext[i].obj = w_glbl_d[i].data();
    glbl_d_Ext[i].param = 0;
  }

  cl::Buffer buffer_CSR_V[NUM_PE];
  cl::Buffer buffer_CSR_E[NUM_PE];
  cl::Buffer buffer_glbl_d[NUM_PE];

  ////
  // wait_for_enter("\nPress ENTER to continue after setting up ILA trigger...");
  ////

  for (short i=0; i<NUM_PE; ++i)
  {
    buffer_CSR_V[i] = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR | CL_MEM_EXT_PTR_XILINX,
                                (size_t)MAX_NODE/(NUM_PE*4)*sizeof(duint128_t), &CSR_V_Ext[i]);
    buffer_CSR_E[i] = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR | CL_MEM_EXT_PTR_XILINX,
                                (size_t)MAX_EDGE/(NUM_PE*4)*sizeof(duint128_t), &CSR_E_Ext[i]);
    buffer_glbl_d[i]= cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR | CL_MEM_EXT_PTR_XILINX,
                                (size_t)MAX_NODE/(NUM_PE*4)*sizeof(duint128_t), &glbl_d_Ext[i]);
  }

  std::chrono::duration<double> kernel_time(0);

  // Copy Input Data to Device Memory
  q.enqueueMigrateMemObjects({
    buffer_CSR_V[0], buffer_CSR_V[1],
    buffer_CSR_E[0], buffer_CSR_E[1]}, 0);
  q.finish();
  std::cout << "Finished Host-FPGA PCIe Data Transfer\n";
  auto kernel_start = std::chrono::high_resolution_clock::now(); //timer start

  int narg = 0;
  // krnl.setArg(narg++, root);
  krnl.setArg(narg++, node_num);
  krnl.setArg(narg++, root);

  for (short i=0; i<NUM_PE; ++i) {
    krnl.setArg(narg++, buffer_CSR_V[i]);
    krnl.setArg(narg++, buffer_CSR_E[i]);
    krnl.setArg(narg++, buffer_glbl_d[i]);
  }

  // Invoke kernel
  q.enqueueTask(krnl);
  q.finish();
  auto kernel_end = std::chrono::high_resolution_clock::now(); //timer end

  q.enqueueMigrateMemObjects (
    { buffer_glbl_d[0], buffer_glbl_d[1] }, CL_MIGRATE_MEM_OBJECT_HOST);  
  q.finish();

  kernel_time = std::chrono::duration<double>(kernel_end - kernel_start);
  double elapsed_time = kernel_time.count();
  std::cout << "-- FPGA elapsed time: " << elapsed_time << "s --" << endl;

  uint n_iter, n_cycles;
  n_iter  = (unsigned long int)w_glbl_d[0][16128].range(127,96);
  n_cycles= (unsigned long int)w_glbl_d[0][16128].range(31, 0);
  std::cout << "#Iters: " << n_iter+1 << ", #Clock Cycles: " << n_cycles << endl;

  double trv_edge = 1.0 * (n_iter+1) * edge_num;
  double trv_time = 1000.0 / krnl_freq * n_cycles;
  double trv_tpt  = trv_edge / trv_time * 1000.0;
  std::cout << "Traversal Throughput (MTEPS): " << trv_tpt << endl;

  // ParseDist();
  // SaveOutcome(outFn, final_dist, node_num);

  return EXIT_SUCCESS;
}

