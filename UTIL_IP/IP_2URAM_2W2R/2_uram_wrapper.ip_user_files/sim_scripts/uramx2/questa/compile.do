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
"../../../bd/uramx2/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
"../../../bd/uramx2/ip/uramx2_uram_2w_2r_0_0/sim/uramx2_uram_2w_2r_0_0.v" \
"../../../bd/uramx2/ip/uramx2_uram_2w_2r_0_1/sim/uramx2_uram_2w_2r_0_1.v" \
"../../../bd/uramx2/sim/uramx2.v" \

vlog -work xil_defaultlib \
"glbl.v"

