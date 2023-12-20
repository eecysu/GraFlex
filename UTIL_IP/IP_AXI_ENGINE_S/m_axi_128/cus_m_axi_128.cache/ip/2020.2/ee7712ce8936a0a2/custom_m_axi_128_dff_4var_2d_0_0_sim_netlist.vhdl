-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Feb  9 16:14:40 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_4var_2d_0_0_sim_netlist.vhdl
-- Design      : custom_m_axi_128_dff_4var_2d_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4var_2d is
  port (
    d1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    d2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    d4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    q2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    q3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    q4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4var_2d;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4var_2d is
  signal d1_r0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal d2_r0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal d3_r0 : STD_LOGIC;
  signal d4_r0 : STD_LOGIC;
begin
\d1_r0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(0),
      Q => d1_r0(0),
      R => '0'
    );
\d1_r0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(10),
      Q => d1_r0(10),
      R => '0'
    );
\d1_r0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(11),
      Q => d1_r0(11),
      R => '0'
    );
\d1_r0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(12),
      Q => d1_r0(12),
      R => '0'
    );
\d1_r0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(13),
      Q => d1_r0(13),
      R => '0'
    );
\d1_r0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(14),
      Q => d1_r0(14),
      R => '0'
    );
\d1_r0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(15),
      Q => d1_r0(15),
      R => '0'
    );
\d1_r0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(16),
      Q => d1_r0(16),
      R => '0'
    );
\d1_r0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(17),
      Q => d1_r0(17),
      R => '0'
    );
\d1_r0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(18),
      Q => d1_r0(18),
      R => '0'
    );
\d1_r0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(19),
      Q => d1_r0(19),
      R => '0'
    );
\d1_r0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(1),
      Q => d1_r0(1),
      R => '0'
    );
\d1_r0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(20),
      Q => d1_r0(20),
      R => '0'
    );
\d1_r0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(21),
      Q => d1_r0(21),
      R => '0'
    );
\d1_r0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(22),
      Q => d1_r0(22),
      R => '0'
    );
\d1_r0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(23),
      Q => d1_r0(23),
      R => '0'
    );
\d1_r0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(24),
      Q => d1_r0(24),
      R => '0'
    );
\d1_r0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(25),
      Q => d1_r0(25),
      R => '0'
    );
\d1_r0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(26),
      Q => d1_r0(26),
      R => '0'
    );
\d1_r0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(27),
      Q => d1_r0(27),
      R => '0'
    );
\d1_r0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(28),
      Q => d1_r0(28),
      R => '0'
    );
\d1_r0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(29),
      Q => d1_r0(29),
      R => '0'
    );
\d1_r0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(2),
      Q => d1_r0(2),
      R => '0'
    );
\d1_r0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(30),
      Q => d1_r0(30),
      R => '0'
    );
\d1_r0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(31),
      Q => d1_r0(31),
      R => '0'
    );
\d1_r0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(32),
      Q => d1_r0(32),
      R => '0'
    );
\d1_r0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(33),
      Q => d1_r0(33),
      R => '0'
    );
\d1_r0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(34),
      Q => d1_r0(34),
      R => '0'
    );
\d1_r0_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(35),
      Q => d1_r0(35),
      R => '0'
    );
\d1_r0_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(36),
      Q => d1_r0(36),
      R => '0'
    );
\d1_r0_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(37),
      Q => d1_r0(37),
      R => '0'
    );
\d1_r0_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(38),
      Q => d1_r0(38),
      R => '0'
    );
\d1_r0_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(39),
      Q => d1_r0(39),
      R => '0'
    );
\d1_r0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(3),
      Q => d1_r0(3),
      R => '0'
    );
\d1_r0_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(40),
      Q => d1_r0(40),
      R => '0'
    );
\d1_r0_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(41),
      Q => d1_r0(41),
      R => '0'
    );
\d1_r0_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(42),
      Q => d1_r0(42),
      R => '0'
    );
\d1_r0_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(43),
      Q => d1_r0(43),
      R => '0'
    );
\d1_r0_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(44),
      Q => d1_r0(44),
      R => '0'
    );
\d1_r0_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(45),
      Q => d1_r0(45),
      R => '0'
    );
\d1_r0_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(46),
      Q => d1_r0(46),
      R => '0'
    );
\d1_r0_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(47),
      Q => d1_r0(47),
      R => '0'
    );
\d1_r0_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(48),
      Q => d1_r0(48),
      R => '0'
    );
\d1_r0_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(49),
      Q => d1_r0(49),
      R => '0'
    );
\d1_r0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(4),
      Q => d1_r0(4),
      R => '0'
    );
\d1_r0_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(50),
      Q => d1_r0(50),
      R => '0'
    );
\d1_r0_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(51),
      Q => d1_r0(51),
      R => '0'
    );
\d1_r0_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(52),
      Q => d1_r0(52),
      R => '0'
    );
\d1_r0_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(53),
      Q => d1_r0(53),
      R => '0'
    );
\d1_r0_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(54),
      Q => d1_r0(54),
      R => '0'
    );
\d1_r0_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(55),
      Q => d1_r0(55),
      R => '0'
    );
\d1_r0_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(56),
      Q => d1_r0(56),
      R => '0'
    );
\d1_r0_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(57),
      Q => d1_r0(57),
      R => '0'
    );
\d1_r0_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(58),
      Q => d1_r0(58),
      R => '0'
    );
\d1_r0_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(59),
      Q => d1_r0(59),
      R => '0'
    );
\d1_r0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(5),
      Q => d1_r0(5),
      R => '0'
    );
\d1_r0_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(60),
      Q => d1_r0(60),
      R => '0'
    );
\d1_r0_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(61),
      Q => d1_r0(61),
      R => '0'
    );
\d1_r0_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(62),
      Q => d1_r0(62),
      R => '0'
    );
\d1_r0_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(63),
      Q => d1_r0(63),
      R => '0'
    );
\d1_r0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(6),
      Q => d1_r0(6),
      R => '0'
    );
\d1_r0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(7),
      Q => d1_r0(7),
      R => '0'
    );
\d1_r0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(8),
      Q => d1_r0(8),
      R => '0'
    );
\d1_r0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q1(9),
      Q => d1_r0(9),
      R => '0'
    );
\d1_r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(0),
      Q => d1(0),
      R => '0'
    );
\d1_r1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(10),
      Q => d1(10),
      R => '0'
    );
\d1_r1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(11),
      Q => d1(11),
      R => '0'
    );
\d1_r1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(12),
      Q => d1(12),
      R => '0'
    );
\d1_r1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(13),
      Q => d1(13),
      R => '0'
    );
\d1_r1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(14),
      Q => d1(14),
      R => '0'
    );
\d1_r1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(15),
      Q => d1(15),
      R => '0'
    );
\d1_r1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(16),
      Q => d1(16),
      R => '0'
    );
\d1_r1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(17),
      Q => d1(17),
      R => '0'
    );
\d1_r1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(18),
      Q => d1(18),
      R => '0'
    );
\d1_r1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(19),
      Q => d1(19),
      R => '0'
    );
\d1_r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(1),
      Q => d1(1),
      R => '0'
    );
\d1_r1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(20),
      Q => d1(20),
      R => '0'
    );
\d1_r1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(21),
      Q => d1(21),
      R => '0'
    );
\d1_r1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(22),
      Q => d1(22),
      R => '0'
    );
\d1_r1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(23),
      Q => d1(23),
      R => '0'
    );
\d1_r1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(24),
      Q => d1(24),
      R => '0'
    );
\d1_r1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(25),
      Q => d1(25),
      R => '0'
    );
\d1_r1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(26),
      Q => d1(26),
      R => '0'
    );
\d1_r1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(27),
      Q => d1(27),
      R => '0'
    );
\d1_r1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(28),
      Q => d1(28),
      R => '0'
    );
\d1_r1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(29),
      Q => d1(29),
      R => '0'
    );
\d1_r1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(2),
      Q => d1(2),
      R => '0'
    );
\d1_r1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(30),
      Q => d1(30),
      R => '0'
    );
\d1_r1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(31),
      Q => d1(31),
      R => '0'
    );
\d1_r1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(32),
      Q => d1(32),
      R => '0'
    );
\d1_r1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(33),
      Q => d1(33),
      R => '0'
    );
\d1_r1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(34),
      Q => d1(34),
      R => '0'
    );
\d1_r1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(35),
      Q => d1(35),
      R => '0'
    );
\d1_r1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(36),
      Q => d1(36),
      R => '0'
    );
\d1_r1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(37),
      Q => d1(37),
      R => '0'
    );
\d1_r1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(38),
      Q => d1(38),
      R => '0'
    );
\d1_r1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(39),
      Q => d1(39),
      R => '0'
    );
\d1_r1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(3),
      Q => d1(3),
      R => '0'
    );
\d1_r1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(40),
      Q => d1(40),
      R => '0'
    );
\d1_r1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(41),
      Q => d1(41),
      R => '0'
    );
\d1_r1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(42),
      Q => d1(42),
      R => '0'
    );
\d1_r1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(43),
      Q => d1(43),
      R => '0'
    );
\d1_r1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(44),
      Q => d1(44),
      R => '0'
    );
\d1_r1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(45),
      Q => d1(45),
      R => '0'
    );
\d1_r1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(46),
      Q => d1(46),
      R => '0'
    );
\d1_r1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(47),
      Q => d1(47),
      R => '0'
    );
\d1_r1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(48),
      Q => d1(48),
      R => '0'
    );
\d1_r1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(49),
      Q => d1(49),
      R => '0'
    );
\d1_r1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(4),
      Q => d1(4),
      R => '0'
    );
\d1_r1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(50),
      Q => d1(50),
      R => '0'
    );
\d1_r1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(51),
      Q => d1(51),
      R => '0'
    );
\d1_r1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(52),
      Q => d1(52),
      R => '0'
    );
\d1_r1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(53),
      Q => d1(53),
      R => '0'
    );
\d1_r1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(54),
      Q => d1(54),
      R => '0'
    );
\d1_r1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(55),
      Q => d1(55),
      R => '0'
    );
\d1_r1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(56),
      Q => d1(56),
      R => '0'
    );
\d1_r1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(57),
      Q => d1(57),
      R => '0'
    );
\d1_r1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(58),
      Q => d1(58),
      R => '0'
    );
\d1_r1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(59),
      Q => d1(59),
      R => '0'
    );
\d1_r1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(5),
      Q => d1(5),
      R => '0'
    );
\d1_r1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(60),
      Q => d1(60),
      R => '0'
    );
\d1_r1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(61),
      Q => d1(61),
      R => '0'
    );
\d1_r1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(62),
      Q => d1(62),
      R => '0'
    );
\d1_r1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(63),
      Q => d1(63),
      R => '0'
    );
\d1_r1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(6),
      Q => d1(6),
      R => '0'
    );
\d1_r1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(7),
      Q => d1(7),
      R => '0'
    );
\d1_r1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(8),
      Q => d1(8),
      R => '0'
    );
\d1_r1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d1_r0(9),
      Q => d1(9),
      R => '0'
    );
\d2_r0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(0),
      Q => d2_r0(0),
      R => '0'
    );
\d2_r0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(10),
      Q => d2_r0(10),
      R => '0'
    );
\d2_r0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(11),
      Q => d2_r0(11),
      R => '0'
    );
\d2_r0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(12),
      Q => d2_r0(12),
      R => '0'
    );
\d2_r0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(13),
      Q => d2_r0(13),
      R => '0'
    );
\d2_r0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(14),
      Q => d2_r0(14),
      R => '0'
    );
\d2_r0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(15),
      Q => d2_r0(15),
      R => '0'
    );
\d2_r0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(16),
      Q => d2_r0(16),
      R => '0'
    );
\d2_r0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(17),
      Q => d2_r0(17),
      R => '0'
    );
\d2_r0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(18),
      Q => d2_r0(18),
      R => '0'
    );
\d2_r0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(19),
      Q => d2_r0(19),
      R => '0'
    );
\d2_r0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(1),
      Q => d2_r0(1),
      R => '0'
    );
\d2_r0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(20),
      Q => d2_r0(20),
      R => '0'
    );
\d2_r0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(21),
      Q => d2_r0(21),
      R => '0'
    );
\d2_r0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(22),
      Q => d2_r0(22),
      R => '0'
    );
\d2_r0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(23),
      Q => d2_r0(23),
      R => '0'
    );
\d2_r0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(24),
      Q => d2_r0(24),
      R => '0'
    );
\d2_r0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(25),
      Q => d2_r0(25),
      R => '0'
    );
\d2_r0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(26),
      Q => d2_r0(26),
      R => '0'
    );
\d2_r0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(27),
      Q => d2_r0(27),
      R => '0'
    );
\d2_r0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(28),
      Q => d2_r0(28),
      R => '0'
    );
\d2_r0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(29),
      Q => d2_r0(29),
      R => '0'
    );
\d2_r0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(2),
      Q => d2_r0(2),
      R => '0'
    );
\d2_r0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(30),
      Q => d2_r0(30),
      R => '0'
    );
\d2_r0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(31),
      Q => d2_r0(31),
      R => '0'
    );
\d2_r0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(3),
      Q => d2_r0(3),
      R => '0'
    );
\d2_r0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(4),
      Q => d2_r0(4),
      R => '0'
    );
\d2_r0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(5),
      Q => d2_r0(5),
      R => '0'
    );
\d2_r0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(6),
      Q => d2_r0(6),
      R => '0'
    );
\d2_r0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(7),
      Q => d2_r0(7),
      R => '0'
    );
\d2_r0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(8),
      Q => d2_r0(8),
      R => '0'
    );
\d2_r0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q2(9),
      Q => d2_r0(9),
      R => '0'
    );
\d2_r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(0),
      Q => d2(0),
      R => '0'
    );
\d2_r1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(10),
      Q => d2(10),
      R => '0'
    );
\d2_r1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(11),
      Q => d2(11),
      R => '0'
    );
\d2_r1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(12),
      Q => d2(12),
      R => '0'
    );
\d2_r1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(13),
      Q => d2(13),
      R => '0'
    );
\d2_r1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(14),
      Q => d2(14),
      R => '0'
    );
\d2_r1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(15),
      Q => d2(15),
      R => '0'
    );
\d2_r1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(16),
      Q => d2(16),
      R => '0'
    );
\d2_r1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(17),
      Q => d2(17),
      R => '0'
    );
\d2_r1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(18),
      Q => d2(18),
      R => '0'
    );
\d2_r1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(19),
      Q => d2(19),
      R => '0'
    );
\d2_r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(1),
      Q => d2(1),
      R => '0'
    );
\d2_r1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(20),
      Q => d2(20),
      R => '0'
    );
\d2_r1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(21),
      Q => d2(21),
      R => '0'
    );
\d2_r1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(22),
      Q => d2(22),
      R => '0'
    );
\d2_r1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(23),
      Q => d2(23),
      R => '0'
    );
\d2_r1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(24),
      Q => d2(24),
      R => '0'
    );
\d2_r1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(25),
      Q => d2(25),
      R => '0'
    );
\d2_r1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(26),
      Q => d2(26),
      R => '0'
    );
\d2_r1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(27),
      Q => d2(27),
      R => '0'
    );
\d2_r1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(28),
      Q => d2(28),
      R => '0'
    );
\d2_r1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(29),
      Q => d2(29),
      R => '0'
    );
\d2_r1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(2),
      Q => d2(2),
      R => '0'
    );
\d2_r1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(30),
      Q => d2(30),
      R => '0'
    );
\d2_r1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(31),
      Q => d2(31),
      R => '0'
    );
\d2_r1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(3),
      Q => d2(3),
      R => '0'
    );
\d2_r1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(4),
      Q => d2(4),
      R => '0'
    );
\d2_r1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(5),
      Q => d2(5),
      R => '0'
    );
\d2_r1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(6),
      Q => d2(6),
      R => '0'
    );
\d2_r1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(7),
      Q => d2(7),
      R => '0'
    );
\d2_r1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(8),
      Q => d2(8),
      R => '0'
    );
\d2_r1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d2_r0(9),
      Q => d2(9),
      R => '0'
    );
\d3_r0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q3(0),
      Q => d3_r0,
      R => '0'
    );
\d3_r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d3_r0,
      Q => d3(0),
      R => '0'
    );
\d4_r0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q4(0),
      Q => d4_r0,
      R => '0'
    );
\d4_r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d4_r0,
      Q => d4(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "custom_m_axi_128_dff_4var_2d_0_0,dff_4var_2d,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dff_4var_2d,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4var_2d
     port map (
      clk => clk,
      d1(63 downto 0) => d1(63 downto 0),
      d2(31 downto 0) => d2(31 downto 0),
      d3(0) => d3(0),
      d4(0) => d4(0),
      q1(63 downto 0) => q1(63 downto 0),
      q2(31 downto 0) => q2(31 downto 0),
      q3(0) => q3(0),
      q4(0) => q4(0)
    );
end STRUCTURE;
