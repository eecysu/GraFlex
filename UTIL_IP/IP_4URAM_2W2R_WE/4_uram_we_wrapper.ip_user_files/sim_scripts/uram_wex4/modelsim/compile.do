vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/uram_wex4/ipshared/ec9b/uram_2w_2r_we.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_0/sim/uram_wex4_uram_2w_2r_we_0_0.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_1/sim/uram_wex4_uram_2w_2r_we_0_1.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_1_0/sim/uram_wex4_uram_2w_2r_we_1_0.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_2/sim/uram_wex4_uram_2w_2r_we_0_2.v" \
"../../../bd/uram_wex4/sim/uram_wex4.v" \


vlog -work xil_defaultlib \
"glbl.v"

