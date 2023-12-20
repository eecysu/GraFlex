-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Feb  9 16:14:40 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_4var_2d_0_0_stub.vhdl
-- Design      : custom_m_axi_128_dff_4var_2d_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    q2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    q3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    q4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    d1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    d2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    d4 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,q1[63:0],q2[31:0],q3[0:0],q4[0:0],d1[63:0],d2[31:0],d3[0:0],d4[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dff_4var_2d,Vivado 2020.2";
begin
end;
