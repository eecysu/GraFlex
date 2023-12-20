-makelib ies_lib/xpm -sv \
  "/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_s/ipshared/5f70/s2p.v" \
  "../../../bd/custom_m_axi_s/ip/custom_m_axi_s_step_to_pulse_0_0/sim/custom_m_axi_s_step_to_pulse_0_0.v" \
  "../../../bd/custom_m_axi_s/ip/custom_m_axi_s_step_to_pulse_0_1/sim/custom_m_axi_s_step_to_pulse_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/custom_m_axi_s/ipshared/c1ff/axi_counter.sv" \
  "../../../bd/custom_m_axi_s/ipshared/c1ff/mread_master.sv" \
  "../../../bd/custom_m_axi_s/ip/custom_m_axi_s_mread_master_0_1/sim/custom_m_axi_s_mread_master_0_1.sv" \
  "../../../bd/custom_m_axi_s/ipshared/b2cc/swr_master.sv" \
  "../../../bd/custom_m_axi_s/ip/custom_m_axi_s_swr_engine_0_1/sim/custom_m_axi_s_swr_engine_0_1.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_s/sim/custom_m_axi_s.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

