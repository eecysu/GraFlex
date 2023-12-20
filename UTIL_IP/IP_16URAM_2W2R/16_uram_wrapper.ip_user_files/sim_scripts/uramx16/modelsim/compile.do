vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/uramx16/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_0_0/sim/uramx16_uram_2w_2r_0_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_0_1/sim/uramx16_uram_2w_2r_0_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_0_2/sim/uramx16_uram_2w_2r_0_2.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_0_3/sim/uramx16_uram_2w_2r_0_3.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_1_0/sim/uramx16_uram_2w_2r_1_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_1_1/sim/uramx16_uram_2w_2r_1_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_2_0/sim/uramx16_uram_2w_2r_2_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_3_0/sim/uramx16_uram_2w_2r_3_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_3_1/sim/uramx16_uram_2w_2r_3_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_4_0/sim/uramx16_uram_2w_2r_4_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_4_1/sim/uramx16_uram_2w_2r_4_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_5_0/sim/uramx16_uram_2w_2r_5_0.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_5_1/sim/uramx16_uram_2w_2r_5_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_6_1/sim/uramx16_uram_2w_2r_6_1.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_6_2/sim/uramx16_uram_2w_2r_6_2.v" \
"../../../bd/uramx16/ip/uramx16_uram_2w_2r_7_0/sim/uramx16_uram_2w_2r_7_0.v" \
"../../../bd/uramx16/sim/uramx16.v" \

vlog -work xil_defaultlib \
"glbl.v"

