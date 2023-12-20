vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/uramx4/sim/uramx4.v" \
"../../../bd/uramx4/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
"../../../bd/uramx4/ip/uramx4_uram_2w_2r_0_3/sim/uramx4_uram_2w_2r_0_3.v" \
"../../../bd/uramx4/ip/uramx4_uram_2w_2r_0_4/sim/uramx4_uram_2w_2r_0_4.v" \
"../../../bd/uramx4/ip/uramx4_uram_2w_2r_1_1/sim/uramx4_uram_2w_2r_1_1.v" \
"../../../bd/uramx4/ip/uramx4_uram_2w_2r_2_0/sim/uramx4_uram_2w_2r_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

