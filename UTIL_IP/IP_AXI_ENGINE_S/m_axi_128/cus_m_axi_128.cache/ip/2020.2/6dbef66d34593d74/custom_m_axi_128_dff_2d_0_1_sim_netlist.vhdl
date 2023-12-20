-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Feb  9 16:42:06 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_2d_0_1_sim_netlist.vhdl
-- Design      : custom_m_axi_128_dff_2d_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d is
  port (
    d : out STD_LOGIC_VECTOR ( 63 downto 0 );
    q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d is
  signal d0 : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
\d0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(0),
      Q => d0(0),
      R => '0'
    );
\d0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(10),
      Q => d0(10),
      R => '0'
    );
\d0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(11),
      Q => d0(11),
      R => '0'
    );
\d0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(12),
      Q => d0(12),
      R => '0'
    );
\d0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(13),
      Q => d0(13),
      R => '0'
    );
\d0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(14),
      Q => d0(14),
      R => '0'
    );
\d0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(15),
      Q => d0(15),
      R => '0'
    );
\d0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(16),
      Q => d0(16),
      R => '0'
    );
\d0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(17),
      Q => d0(17),
      R => '0'
    );
\d0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(18),
      Q => d0(18),
      R => '0'
    );
\d0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(19),
      Q => d0(19),
      R => '0'
    );
\d0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(1),
      Q => d0(1),
      R => '0'
    );
\d0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(20),
      Q => d0(20),
      R => '0'
    );
\d0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(21),
      Q => d0(21),
      R => '0'
    );
\d0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(22),
      Q => d0(22),
      R => '0'
    );
\d0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(23),
      Q => d0(23),
      R => '0'
    );
\d0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(24),
      Q => d0(24),
      R => '0'
    );
\d0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(25),
      Q => d0(25),
      R => '0'
    );
\d0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(26),
      Q => d0(26),
      R => '0'
    );
\d0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(27),
      Q => d0(27),
      R => '0'
    );
\d0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(28),
      Q => d0(28),
      R => '0'
    );
\d0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(29),
      Q => d0(29),
      R => '0'
    );
\d0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(2),
      Q => d0(2),
      R => '0'
    );
\d0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(30),
      Q => d0(30),
      R => '0'
    );
\d0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(31),
      Q => d0(31),
      R => '0'
    );
\d0_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(32),
      Q => d0(32),
      R => '0'
    );
\d0_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(33),
      Q => d0(33),
      R => '0'
    );
\d0_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(34),
      Q => d0(34),
      R => '0'
    );
\d0_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(35),
      Q => d0(35),
      R => '0'
    );
\d0_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(36),
      Q => d0(36),
      R => '0'
    );
\d0_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(37),
      Q => d0(37),
      R => '0'
    );
\d0_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(38),
      Q => d0(38),
      R => '0'
    );
\d0_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(39),
      Q => d0(39),
      R => '0'
    );
\d0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(3),
      Q => d0(3),
      R => '0'
    );
\d0_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(40),
      Q => d0(40),
      R => '0'
    );
\d0_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(41),
      Q => d0(41),
      R => '0'
    );
\d0_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(42),
      Q => d0(42),
      R => '0'
    );
\d0_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(43),
      Q => d0(43),
      R => '0'
    );
\d0_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(44),
      Q => d0(44),
      R => '0'
    );
\d0_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(45),
      Q => d0(45),
      R => '0'
    );
\d0_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(46),
      Q => d0(46),
      R => '0'
    );
\d0_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(47),
      Q => d0(47),
      R => '0'
    );
\d0_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(48),
      Q => d0(48),
      R => '0'
    );
\d0_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(49),
      Q => d0(49),
      R => '0'
    );
\d0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(4),
      Q => d0(4),
      R => '0'
    );
\d0_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(50),
      Q => d0(50),
      R => '0'
    );
\d0_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(51),
      Q => d0(51),
      R => '0'
    );
\d0_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(52),
      Q => d0(52),
      R => '0'
    );
\d0_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(53),
      Q => d0(53),
      R => '0'
    );
\d0_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(54),
      Q => d0(54),
      R => '0'
    );
\d0_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(55),
      Q => d0(55),
      R => '0'
    );
\d0_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(56),
      Q => d0(56),
      R => '0'
    );
\d0_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(57),
      Q => d0(57),
      R => '0'
    );
\d0_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(58),
      Q => d0(58),
      R => '0'
    );
\d0_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(59),
      Q => d0(59),
      R => '0'
    );
\d0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(5),
      Q => d0(5),
      R => '0'
    );
\d0_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(60),
      Q => d0(60),
      R => '0'
    );
\d0_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(61),
      Q => d0(61),
      R => '0'
    );
\d0_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(62),
      Q => d0(62),
      R => '0'
    );
\d0_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(63),
      Q => d0(63),
      R => '0'
    );
\d0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(6),
      Q => d0(6),
      R => '0'
    );
\d0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(7),
      Q => d0(7),
      R => '0'
    );
\d0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(8),
      Q => d0(8),
      R => '0'
    );
\d0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q(9),
      Q => d0(9),
      R => '0'
    );
\d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(0),
      Q => d(0),
      R => '0'
    );
\d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(10),
      Q => d(10),
      R => '0'
    );
\d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(11),
      Q => d(11),
      R => '0'
    );
\d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(12),
      Q => d(12),
      R => '0'
    );
\d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(13),
      Q => d(13),
      R => '0'
    );
\d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(14),
      Q => d(14),
      R => '0'
    );
\d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(15),
      Q => d(15),
      R => '0'
    );
\d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(16),
      Q => d(16),
      R => '0'
    );
\d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(17),
      Q => d(17),
      R => '0'
    );
\d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(18),
      Q => d(18),
      R => '0'
    );
\d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(19),
      Q => d(19),
      R => '0'
    );
\d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(1),
      Q => d(1),
      R => '0'
    );
\d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(20),
      Q => d(20),
      R => '0'
    );
\d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(21),
      Q => d(21),
      R => '0'
    );
\d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(22),
      Q => d(22),
      R => '0'
    );
\d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(23),
      Q => d(23),
      R => '0'
    );
\d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(24),
      Q => d(24),
      R => '0'
    );
\d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(25),
      Q => d(25),
      R => '0'
    );
\d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(26),
      Q => d(26),
      R => '0'
    );
\d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(27),
      Q => d(27),
      R => '0'
    );
\d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(28),
      Q => d(28),
      R => '0'
    );
\d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(29),
      Q => d(29),
      R => '0'
    );
\d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(2),
      Q => d(2),
      R => '0'
    );
\d1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(30),
      Q => d(30),
      R => '0'
    );
\d1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(31),
      Q => d(31),
      R => '0'
    );
\d1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(32),
      Q => d(32),
      R => '0'
    );
\d1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(33),
      Q => d(33),
      R => '0'
    );
\d1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(34),
      Q => d(34),
      R => '0'
    );
\d1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(35),
      Q => d(35),
      R => '0'
    );
\d1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(36),
      Q => d(36),
      R => '0'
    );
\d1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(37),
      Q => d(37),
      R => '0'
    );
\d1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(38),
      Q => d(38),
      R => '0'
    );
\d1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(39),
      Q => d(39),
      R => '0'
    );
\d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(3),
      Q => d(3),
      R => '0'
    );
\d1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(40),
      Q => d(40),
      R => '0'
    );
\d1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(41),
      Q => d(41),
      R => '0'
    );
\d1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(42),
      Q => d(42),
      R => '0'
    );
\d1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(43),
      Q => d(43),
      R => '0'
    );
\d1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(44),
      Q => d(44),
      R => '0'
    );
\d1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(45),
      Q => d(45),
      R => '0'
    );
\d1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(46),
      Q => d(46),
      R => '0'
    );
\d1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(47),
      Q => d(47),
      R => '0'
    );
\d1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(48),
      Q => d(48),
      R => '0'
    );
\d1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(49),
      Q => d(49),
      R => '0'
    );
\d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(4),
      Q => d(4),
      R => '0'
    );
\d1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(50),
      Q => d(50),
      R => '0'
    );
\d1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(51),
      Q => d(51),
      R => '0'
    );
\d1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(52),
      Q => d(52),
      R => '0'
    );
\d1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(53),
      Q => d(53),
      R => '0'
    );
\d1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(54),
      Q => d(54),
      R => '0'
    );
\d1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(55),
      Q => d(55),
      R => '0'
    );
\d1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(56),
      Q => d(56),
      R => '0'
    );
\d1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(57),
      Q => d(57),
      R => '0'
    );
\d1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(58),
      Q => d(58),
      R => '0'
    );
\d1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(59),
      Q => d(59),
      R => '0'
    );
\d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(5),
      Q => d(5),
      R => '0'
    );
\d1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(60),
      Q => d(60),
      R => '0'
    );
\d1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(61),
      Q => d(61),
      R => '0'
    );
\d1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(62),
      Q => d(62),
      R => '0'
    );
\d1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(63),
      Q => d(63),
      R => '0'
    );
\d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(6),
      Q => d(6),
      R => '0'
    );
\d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(7),
      Q => d(7),
      R => '0'
    );
\d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(8),
      Q => d(8),
      R => '0'
    );
\d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d0(9),
      Q => d(9),
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
    q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    d : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "custom_m_axi_128_dff_2d_0_1,dff_2d,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dff_2d,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d
     port map (
      clk => clk,
      d(63 downto 0) => d(63 downto 0),
      q(63 downto 0) => q(63 downto 0)
    );
end STRUCTURE;
