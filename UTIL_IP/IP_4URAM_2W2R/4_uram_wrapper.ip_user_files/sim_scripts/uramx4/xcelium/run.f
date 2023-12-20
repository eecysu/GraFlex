-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/uramx4/sim/uramx4.v" \
  "../../../bd/uramx4/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
  "../../../bd/uramx4/ip/uramx4_uram_2w_2r_0_3/sim/uramx4_uram_2w_2r_0_3.v" \
  "../../../bd/uramx4/ip/uramx4_uram_2w_2r_0_4/sim/uramx4_uram_2w_2r_0_4.v" \
  "../../../bd/uramx4/ip/uramx4_uram_2w_2r_1_1/sim/uramx4_uram_2w_2r_1_1.v" \
  "../../../bd/uramx4/ip/uramx4_uram_2w_2r_2_0/sim/uramx4_uram_2w_2r_2_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

