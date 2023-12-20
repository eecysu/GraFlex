#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vitis/2020.2/bin:/opt/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2020.2/bin
else
  PATH=/opt/Xilinx/Vitis/2020.2/bin:/opt/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/Orion/GraphHBM/UTIL_IP/IP_32URAM_2W2R_WE/32_uram_we_wrapper.runs/uram_wex32_uram_2w_2r_we_2_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log uram_wex32_uram_2w_2r_we_2_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source uram_wex32_uram_2w_2r_we_2_1.tcl
