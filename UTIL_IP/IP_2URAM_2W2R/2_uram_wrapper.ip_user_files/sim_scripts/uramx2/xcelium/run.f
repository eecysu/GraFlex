-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/uramx2/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
  "../../../bd/uramx2/ip/uramx2_uram_2w_2r_0_0/sim/uramx2_uram_2w_2r_0_0.v" \
  "../../../bd/uramx2/ip/uramx2_uram_2w_2r_0_1/sim/uramx2_uram_2w_2r_0_1.v" \
  "../../../bd/uramx2/sim/uramx2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

