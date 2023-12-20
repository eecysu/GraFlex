-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Jun 16 20:03:30 2022
-- Host        : noah running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top cus_m_axi_s_128_ultra_step_to_pulse_0_0 -prefix
--               cus_m_axi_s_128_ultra_step_to_pulse_0_0_ custom_m_axi_128_step_to_pulse_0_1_sim_netlist.vhdl
-- Design      : custom_m_axi_128_step_to_pulse_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cus_m_axi_s_128_ultra_step_to_pulse_0_0_step_to_pulse is
  port (
    pul_out : out STD_LOGIC;
    step_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end cus_m_axi_s_128_ultra_step_to_pulse_0_0_step_to_pulse;

architecture STRUCTURE of cus_m_axi_s_128_ultra_step_to_pulse_0_0_step_to_pulse is
  signal step_in_1d : STD_LOGIC;
begin
pul_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => step_in,
      I1 => step_in_1d,
      O => pul_out
    );
step_in_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => step_in,
      Q => step_in_1d,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cus_m_axi_s_128_ultra_step_to_pulse_0_0 is
  port (
    clk : in STD_LOGIC;
    step_in : in STD_LOGIC;
    pul_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cus_m_axi_s_128_ultra_step_to_pulse_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cus_m_axi_s_128_ultra_step_to_pulse_0_0 : entity is "custom_m_axi_128_step_to_pulse_0_1,step_to_pulse,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cus_m_axi_s_128_ultra_step_to_pulse_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cus_m_axi_s_128_ultra_step_to_pulse_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cus_m_axi_s_128_ultra_step_to_pulse_0_0 : entity is "step_to_pulse,Vivado 2020.2";
end cus_m_axi_s_128_ultra_step_to_pulse_0_0;

architecture STRUCTURE of cus_m_axi_s_128_ultra_step_to_pulse_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk_0, INSERT_VIP 0";
begin
inst: entity work.cus_m_axi_s_128_ultra_step_to_pulse_0_0_step_to_pulse
     port map (
      clk => clk,
      pul_out => pul_out,
      step_in => step_in
    );
end STRUCTURE;
