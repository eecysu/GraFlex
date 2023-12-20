#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/XILINX/Vitis/2020.2/bin:/opt/XILINX/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/XILINX/Vivado/2020.2/bin
else
  PATH=/opt/XILINX/Vitis/2020.2/bin:/opt/XILINX/Vivado/2020.2/ids_lite/ISE/bin/lin64:/opt/XILINX/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/Orion/GraphHBM/UTIL_IP/IP_AXI_ENGINE_S/m_axi_128_ultra/cus_m_axi_s_128_ultra.runs/cus_m_axi_s_128_ultra_mread_master_ultra_0_0_synth_1'
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

EAStep vivado -log cus_m_axi_s_128_ultra_mread_master_ultra_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source cus_m_axi_s_128_ultra_mread_master_ultra_0_0.tcl
