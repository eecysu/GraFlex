vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/chunyou/Xilinx/2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/custom_m_axi_s/ipshared/5f70/s2p.v" \
"../../../bd/custom_m_axi_s/ip/custom_m_axi_s_step_to_pulse_0_0/sim/custom_m_axi_s_step_to_pulse_0_0.v" \
"../../../bd/custom_m_axi_s/ip/custom_m_axi_s_step_to_pulse_0_1/sim/custom_m_axi_s_step_to_pulse_0_1.v" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../bd/custom_m_axi_s/ipshared/c1ff/axi_counter.sv" \
"../../../bd/custom_m_axi_s/ipshared/c1ff/mread_master.sv" \
"../../../bd/custom_m_axi_s/ip/custom_m_axi_s_mread_master_0_1/sim/custom_m_axi_s_mread_master_0_1.sv" \
"../../../bd/custom_m_axi_s/ipshared/b2cc/swr_master.sv" \
"../../../bd/custom_m_axi_s/ip/custom_m_axi_s_swr_engine_0_1/sim/custom_m_axi_s_swr_engine_0_1.sv" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/custom_m_axi_s/sim/custom_m_axi_s.v" \

vlog -work xil_defaultlib \
"glbl.v"

