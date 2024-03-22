# GraFlex
<!---
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10416731.svg)](https://doi.org/10.5281/zenodo.10416731)
--->

GraFlex: Flexible Graph Processing on FPGAs through Customized Scalable Interconnection Network

---

## Code Structure
- applications -> Example implementations of graph applications
- automation -> Python scripts to generate Tcl scripts for GraFlex automation flow
- UTIL_IP -> Infrastructure IP library packaged with Vivado 2020.2

## Prerequisites
### Software
- Python >= 3.7
- Vivado & Vitis & Vitis HLS 2020.2
- XRT Version: *xrt_202110.2.11.634* or *xrt_202020.2.8.743* (newer ones not verified)
### Hardware
- AMD Xilinx Alveo U280 Acceleration Board

## Quick Start (Check the GraFlex_AutoDemo.mp4 video for example)
Try GraFlex with the BFS example (Bellman-Ford, 2 PEs)
### Step 1: Generate Tcl Scripts for Automation
`cd <path_to>/GraFlex/applications/bfs_bf/PE_2`\
`export PYTHONPATH=<path_to>/GraFlex/automation`\
`python auto_backend.py`

### Step 2: Invoke Tcl Scripts from Vivado
`vivado -source autoTcl/auto_backend.tcl`

### Step 3: Wait for Vivado to Finish Synthesis and Generate Compilable Object (.xo)
### Step 4: Compile the Object with Vitis v++
Check applications/bfs_bf/PE_2/xo2xclbin for example

## Artifact Evaluation
Current release is not fully stable. To access the graph datasets and directly reproduce the results, please visit the following Zenodo link:
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10450444.svg)](https://doi.org/10.5281/zenodo.10450444)
<!---
> [GraFlex_FPGA24_AE](https://hkustconnect-my.sharepoint.com/:f:/g/personal/csuae_connect_ust_hk/EupDPx5WCC9Auo7X8-OhTXsBLQWv4-FL87pnrYbjh2VXhA?e=Qffsfd)
--->
