#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Feb 13 11:23:04 HKT 2023
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto a2dc5905f12346a7905367114909264e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot bram_36e2_tb_behav xil_defaultlib.bram_36e2_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto a2dc5905f12346a7905367114909264e --incr --debug typical --relax --mt 8 -L xil_defaultlib -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot bram_36e2_tb_behav xil_defaultlib.bram_36e2_tb xil_defaultlib.glbl -log elaborate.log

