-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 29 12:57:32 2022
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_swr_engine_0_0_sim_netlist.vhdl
-- Design      : custom_m_axi_128_swr_engine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    \num_transactions_reg[7]\ : out STD_LOGIC;
    \num_transactions_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_1 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_WREADY : in STD_LOGIC;
    m_axi_WVALID : in STD_LOGIC;
    \m_axi_AWLEN[3]_INST_0_i_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    start : in STD_LOGIC;
    w_almost_final_transaction : in STD_LOGIC;
    wfirst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  signal \count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal is_zero_r : STD_LOGIC;
  signal is_zero_r_i_2_n_0 : STD_LOGIC;
  signal is_zero_r_i_4_n_0 : STD_LOGIC;
  signal is_zero_r_i_5_n_0 : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal \load_burst_cntr__1\ : STD_LOGIC;
  signal \^num_transactions_reg[6]\ : STD_LOGIC;
  signal \^num_transactions_reg[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_r[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_r[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of is_zero_r_i_5 : label is "soft_lutpair16";
begin
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
  \num_transactions_reg[6]\ <= \^num_transactions_reg[6]\;
  \num_transactions_reg[7]\ <= \^num_transactions_reg[7]\;
\count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => \load_burst_cntr__1\,
      I2 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1_n_0\
    );
\count_r[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => m_axi_WVALID,
      I2 => m_axi_WREADY,
      I3 => start,
      O => E(0)
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => \load_burst_cntr__1\,
      I3 => Q(1),
      O => \count_r[1]_i_1_n_0\
    );
\count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => \load_burst_cntr__1\,
      I4 => Q(2),
      O => \count_r[2]_i_1_n_0\
    );
\count_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCC90000CCC9"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \load_burst_cntr__1\,
      I5 => Q(3),
      O => \count_r[3]_i_1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r[0]_i_1_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      S => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r[1]_i_1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      S => SR(0)
    );
\count_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r[2]_i_1_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      S => SR(0)
    );
\count_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r[3]_i_1_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      S => SR(0)
    );
is_zero_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axi_WREADY,
      I1 => m_axi_WVALID,
      I2 => \load_burst_cntr__1\,
      O => is_zero_r
    );
is_zero_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \load_burst_cntr__1\,
      I5 => is_zero_r_i_4_n_0,
      O => is_zero_r_i_2_n_0
    );
is_zero_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => is_zero_r_i_5_n_0,
      I1 => \^num_transactions_reg[7]\,
      I2 => \m_axi_AWLEN[3]_INST_0_i_1\(0),
      I3 => \m_axi_AWLEN[3]_INST_0_i_1\(1),
      I4 => \m_axi_AWLEN[3]_INST_0_i_1\(2),
      I5 => \^num_transactions_reg[6]\,
      O => \load_burst_cntr__1\
    );
is_zero_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => m_axi_WREADY,
      I5 => m_axi_WVALID,
      O => is_zero_r_i_4_n_0
    );
is_zero_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => w_almost_final_transaction,
      I2 => m_axi_WREADY,
      I3 => m_axi_WVALID,
      O => is_zero_r_i_5_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => is_zero_r_i_2_n_0,
      Q => \^is_zero_r_reg_0\,
      R => SR(0)
    );
\m_axi_AWLEN[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m_axi_AWLEN[3]_INST_0_i_1\(6),
      I1 => \m_axi_AWLEN[3]_INST_0_i_1\(5),
      I2 => \m_axi_AWLEN[3]_INST_0_i_1\(4),
      I3 => \m_axi_AWLEN[3]_INST_0_i_1\(3),
      O => \^num_transactions_reg[6]\
    );
\m_axi_AWLEN[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \m_axi_AWLEN[3]_INST_0_i_1\(7),
      I1 => \m_axi_AWLEN[3]_INST_0_i_1\(8),
      I2 => \m_axi_AWLEN[3]_INST_0_i_1\(9),
      I3 => \m_axi_AWLEN[3]_INST_0_i_1\(10),
      I4 => \m_axi_AWLEN[3]_INST_0_i_1\(11),
      I5 => start,
      O => \^num_transactions_reg[7]\
    );
wfirst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => m_axi_WVALID,
      I2 => m_axi_WREADY,
      I3 => wfirst,
      O => is_zero_r_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \num_transactions_reg[2]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    load_burst_cntr04_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_AWREADY : in STD_LOGIC;
    \count_r_reg[0]_0\ : in STD_LOGIC;
    start : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \count_r_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_r : STD_LOGIC;
  signal \count_r[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_2__0_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \is_zero_r_i_1__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__0_n_0\ : STD_LOGIC;
  signal is_zero_r_i_6_n_0 : STD_LOGIC;
  signal is_zero_r_i_7_n_0 : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \^num_transactions_reg[2]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[3]_INST_0\ : label is "soft_lutpair11";
begin
  SR(0) <= \^sr\(0);
  \num_transactions_reg[2]\ <= \^num_transactions_reg[2]\;
awvalid_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^sr\(0)
    );
\count_r[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \count_r_reg[11]_0\(0),
      I1 => start,
      I2 => count_r_reg(0),
      O => \p_0_in__0\(0)
    );
\count_r[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(8),
      I2 => \count_r[10]_i_2__0_n_0\,
      I3 => count_r_reg(9),
      I4 => \count_r_reg[11]_0\(10),
      I5 => start,
      O => \p_0_in__0\(10)
    );
\count_r[10]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2__0_n_0\,
      I3 => count_r_reg(5),
      I4 => count_r_reg(7),
      O => \count_r[10]_i_2__0_n_0\
    );
\count_r[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => start,
      I1 => m_axi_AWREADY,
      I2 => \count_r_reg[0]_0\,
      O => count_r
    );
\count_r[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => \count_r[11]_i_3__0_n_0\,
      I2 => \count_r_reg[11]_0\(11),
      I3 => start,
      O => \p_0_in__0\(11)
    );
\count_r[11]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => count_r_reg(7),
      I2 => \count_r[7]_i_2__0_n_0\,
      I3 => count_r_reg(6),
      I4 => count_r_reg(8),
      I5 => count_r_reg(10),
      O => \count_r[11]_i_3__0_n_0\
    );
\count_r[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => count_r_reg(0),
      I2 => \count_r_reg[11]_0\(1),
      I3 => start,
      O => \p_0_in__0\(1)
    );
\count_r[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => \count_r_reg[11]_0\(2),
      I4 => start,
      O => \p_0_in__0\(2)
    );
\count_r[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => count_r_reg(1),
      I2 => count_r_reg(0),
      I3 => count_r_reg(2),
      I4 => \count_r_reg[11]_0\(3),
      I5 => start,
      O => \p_0_in__0\(3)
    );
\count_r[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => \count_r[6]_i_2__0_n_0\,
      I2 => \count_r_reg[11]_0\(4),
      I3 => start,
      O => \p_0_in__0\(4)
    );
\count_r[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => \count_r[6]_i_2__0_n_0\,
      I2 => count_r_reg(4),
      I3 => \count_r_reg[11]_0\(5),
      I4 => start,
      O => \p_0_in__0\(5)
    );
\count_r[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2__0_n_0\,
      I3 => count_r_reg(5),
      I4 => \count_r_reg[11]_0\(6),
      I5 => start,
      O => \p_0_in__0\(6)
    );
\count_r[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => count_r_reg(3),
      O => \count_r[6]_i_2__0_n_0\
    );
\count_r[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => \count_r[7]_i_2__0_n_0\,
      I2 => count_r_reg(6),
      I3 => \count_r_reg[11]_0\(7),
      I4 => start,
      O => \p_0_in__0\(7)
    );
\count_r[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => count_r_reg(2),
      I2 => count_r_reg(0),
      I3 => count_r_reg(1),
      I4 => count_r_reg(3),
      I5 => count_r_reg(5),
      O => \count_r[7]_i_2__0_n_0\
    );
\count_r[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => \count_r[10]_i_2__0_n_0\,
      I2 => \count_r_reg[11]_0\(8),
      I3 => start,
      O => \p_0_in__0\(8)
    );
\count_r[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => \count_r[10]_i_2__0_n_0\,
      I2 => count_r_reg(8),
      I3 => \count_r_reg[11]_0\(9),
      I4 => start,
      O => \p_0_in__0\(9)
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(0),
      Q => count_r_reg(0),
      R => \^sr\(0)
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(10),
      Q => count_r_reg(10),
      R => \^sr\(0)
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(11),
      Q => count_r_reg(11),
      R => \^sr\(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(1),
      Q => count_r_reg(1),
      R => \^sr\(0)
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(2),
      Q => count_r_reg(2),
      R => \^sr\(0)
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(3),
      Q => count_r_reg(3),
      R => \^sr\(0)
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(4),
      Q => count_r_reg(4),
      R => \^sr\(0)
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(5),
      Q => count_r_reg(5),
      R => \^sr\(0)
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(6),
      Q => count_r_reg(6),
      R => \^sr\(0)
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(7),
      Q => count_r_reg(7),
      R => \^sr\(0)
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(8),
      Q => count_r_reg(8),
      R => \^sr\(0)
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count_r,
      D => \p_0_in__0\(9),
      Q => count_r_reg(9),
      R => \^sr\(0)
    );
\is_zero_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFFFBBBBB000"
    )
        port map (
      I0 => \is_zero_r_i_2__0_n_0\,
      I1 => \^num_transactions_reg[2]\,
      I2 => m_axi_AWREADY,
      I3 => \count_r_reg[0]_0\,
      I4 => start,
      I5 => is_zero_r_reg_n_0,
      O => \is_zero_r_i_1__2_n_0\
    );
\is_zero_r_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \is_zero_r_i_3__1_n_0\,
      I1 => count_r_reg(2),
      I2 => count_r_reg(1),
      I3 => count_r_reg(0),
      I4 => \is_zero_r_i_4__1_n_0\,
      I5 => \is_zero_r_i_5__0_n_0\,
      O => \is_zero_r_i_2__0_n_0\
    );
\is_zero_r_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => is_zero_r_i_6_n_0,
      I1 => \count_r_reg[11]_0\(2),
      I2 => \count_r_reg[11]_0\(4),
      I3 => \count_r_reg[11]_0\(1),
      I4 => \count_r_reg[11]_0\(0),
      I5 => is_zero_r_i_7_n_0,
      O => \^num_transactions_reg[2]\
    );
\is_zero_r_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(5),
      I2 => count_r_reg(4),
      I3 => count_r_reg(3),
      O => \is_zero_r_i_3__1_n_0\
    );
\is_zero_r_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(9),
      I2 => count_r_reg(8),
      I3 => count_r_reg(7),
      O => \is_zero_r_i_4__1_n_0\
    );
\is_zero_r_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => \count_r_reg[0]_0\,
      I2 => start,
      I3 => count_r_reg(11),
      O => \is_zero_r_i_5__0_n_0\
    );
is_zero_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_r_reg[11]_0\(6),
      I1 => \count_r_reg[11]_0\(8),
      I2 => \count_r_reg[11]_0\(10),
      I3 => \count_r_reg[11]_0\(7),
      O => is_zero_r_i_6_n_0
    );
is_zero_r_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => start,
      I1 => \count_r_reg[11]_0\(9),
      I2 => \count_r_reg[11]_0\(11),
      I3 => \count_r_reg[11]_0\(3),
      I4 => \count_r_reg[11]_0\(5),
      O => is_zero_r_i_7_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \is_zero_r_i_1__2_n_0\,
      Q => is_zero_r_reg_n_0,
      S => \^sr\(0)
    );
\m_axi_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => load_burst_cntr04_out,
      I1 => is_zero_r_reg_n_0,
      I2 => Q(0),
      O => m_axi_AWLEN(0)
    );
\m_axi_AWLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => load_burst_cntr04_out,
      I1 => is_zero_r_reg_n_0,
      I2 => Q(1),
      O => m_axi_AWLEN(1)
    );
\m_axi_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => load_burst_cntr04_out,
      I1 => is_zero_r_reg_n_0,
      I2 => Q(2),
      O => m_axi_AWLEN(2)
    );
\m_axi_AWLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => load_burst_cntr04_out,
      I1 => is_zero_r_reg_n_0,
      I2 => Q(3),
      O => m_axi_AWLEN(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  port (
    req_done : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    is_zero_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  signal \count_r[10]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_2_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \is_zero_r_i_1__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__1_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_r[10]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \is_zero_r_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \is_zero_r_i_4__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of req_done_INST_0 : label is "soft_lutpair13";
begin
\count_r[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => start,
      I2 => count_r_reg(0),
      O => p_0_in(0)
    );
\count_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(8),
      I2 => \count_r[10]_i_2_n_0\,
      I3 => count_r_reg(9),
      I4 => Q(10),
      I5 => start,
      O => p_0_in(10)
    );
\count_r[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2_n_0\,
      I3 => count_r_reg(5),
      I4 => count_r_reg(7),
      O => \count_r[10]_i_2_n_0\
    );
\count_r[11]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start,
      I1 => m_axi_BVALID,
      O => \count_r[11]_i_1__1_n_0\
    );
\count_r[11]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => \count_r[11]_i_3_n_0\,
      I2 => Q(11),
      I3 => start,
      O => p_0_in(11)
    );
\count_r[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => count_r_reg(7),
      I2 => \count_r[7]_i_2_n_0\,
      I3 => count_r_reg(6),
      I4 => count_r_reg(8),
      I5 => count_r_reg(10),
      O => \count_r[11]_i_3_n_0\
    );
\count_r[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => count_r_reg(0),
      I2 => Q(1),
      I3 => start,
      O => p_0_in(1)
    );
\count_r[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => Q(2),
      I4 => start,
      O => p_0_in(2)
    );
\count_r[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => count_r_reg(1),
      I2 => count_r_reg(0),
      I3 => count_r_reg(2),
      I4 => Q(3),
      I5 => start,
      O => p_0_in(3)
    );
\count_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => \count_r[6]_i_2_n_0\,
      I2 => Q(4),
      I3 => start,
      O => p_0_in(4)
    );
\count_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => \count_r[6]_i_2_n_0\,
      I2 => count_r_reg(4),
      I3 => Q(5),
      I4 => start,
      O => p_0_in(5)
    );
\count_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2_n_0\,
      I3 => count_r_reg(5),
      I4 => Q(6),
      I5 => start,
      O => p_0_in(6)
    );
\count_r[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => count_r_reg(3),
      O => \count_r[6]_i_2_n_0\
    );
\count_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => \count_r[7]_i_2_n_0\,
      I2 => count_r_reg(6),
      I3 => Q(7),
      I4 => start,
      O => p_0_in(7)
    );
\count_r[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => count_r_reg(2),
      I2 => count_r_reg(0),
      I3 => count_r_reg(1),
      I4 => count_r_reg(3),
      I5 => count_r_reg(5),
      O => \count_r[7]_i_2_n_0\
    );
\count_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => \count_r[10]_i_2_n_0\,
      I2 => Q(8),
      I3 => start,
      O => p_0_in(8)
    );
\count_r[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => \count_r[10]_i_2_n_0\,
      I2 => count_r_reg(8),
      I3 => Q(9),
      I4 => start,
      O => p_0_in(9)
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(0),
      Q => count_r_reg(0),
      R => SR(0)
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(10),
      Q => count_r_reg(10),
      R => SR(0)
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(11),
      Q => count_r_reg(11),
      R => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(1),
      Q => count_r_reg(1),
      R => SR(0)
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(2),
      Q => count_r_reg(2),
      R => SR(0)
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(3),
      Q => count_r_reg(3),
      R => SR(0)
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(4),
      Q => count_r_reg(4),
      R => SR(0)
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(5),
      Q => count_r_reg(5),
      R => SR(0)
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(6),
      Q => count_r_reg(6),
      R => SR(0)
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(7),
      Q => count_r_reg(7),
      R => SR(0)
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(8),
      Q => count_r_reg(8),
      R => SR(0)
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[11]_i_1__1_n_0\,
      D => p_0_in(9),
      Q => count_r_reg(9),
      R => SR(0)
    );
\is_zero_r_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFBBB0"
    )
        port map (
      I0 => \is_zero_r_i_2__1_n_0\,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_BVALID,
      I3 => start,
      I4 => is_zero_r_reg_n_0,
      O => \is_zero_r_i_1__1_n_0\
    );
\is_zero_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \is_zero_r_i_4__0_n_0\,
      I1 => count_r_reg(1),
      I2 => count_r_reg(0),
      I3 => count_r_reg(3),
      I4 => count_r_reg(2),
      I5 => \is_zero_r_i_5__1_n_0\,
      O => \is_zero_r_i_2__1_n_0\
    );
\is_zero_r_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => count_r_reg(6),
      I2 => count_r_reg(5),
      I3 => count_r_reg(4),
      O => \is_zero_r_i_4__0_n_0\
    );
\is_zero_r_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => count_r_reg(9),
      I2 => count_r_reg(10),
      I3 => count_r_reg(11),
      I4 => start,
      I5 => m_axi_BVALID,
      O => \is_zero_r_i_5__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \is_zero_r_i_1__1_n_0\,
      Q => is_zero_r_reg_n_0,
      S => SR(0)
    );
req_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_n_0,
      O => req_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  port (
    \count_r_reg[11]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    start : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  signal \count_r[10]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[11]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[7]_i_2__1_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal w_almost_final_transaction_i_2_n_0 : STD_LOGIC;
  signal w_almost_final_transaction_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_r[10]_i_2__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_r[6]_i_2__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of w_almost_final_transaction_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of w_almost_final_transaction_i_3 : label is "soft_lutpair20";
begin
\count_r[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => start,
      I2 => count_r_reg(0),
      O => \p_0_in__1\(0)
    );
\count_r[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(8),
      I2 => \count_r[10]_i_2__1_n_0\,
      I3 => count_r_reg(9),
      I4 => Q(10),
      I5 => start,
      O => \p_0_in__1\(10)
    );
\count_r[10]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2__1_n_0\,
      I3 => count_r_reg(5),
      I4 => count_r_reg(7),
      O => \count_r[10]_i_2__1_n_0\
    );
\count_r[11]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => \count_r[11]_i_3__1_n_0\,
      I2 => Q(11),
      I3 => start,
      O => \p_0_in__1\(11)
    );
\count_r[11]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => count_r_reg(7),
      I2 => \count_r[7]_i_2__1_n_0\,
      I3 => count_r_reg(6),
      I4 => count_r_reg(8),
      I5 => count_r_reg(10),
      O => \count_r[11]_i_3__1_n_0\
    );
\count_r[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => count_r_reg(0),
      I2 => Q(1),
      I3 => start,
      O => \p_0_in__1\(1)
    );
\count_r[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => Q(2),
      I4 => start,
      O => \p_0_in__1\(2)
    );
\count_r[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => count_r_reg(1),
      I2 => count_r_reg(0),
      I3 => count_r_reg(2),
      I4 => Q(3),
      I5 => start,
      O => \p_0_in__1\(3)
    );
\count_r[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => \count_r[6]_i_2__1_n_0\,
      I2 => Q(4),
      I3 => start,
      O => \p_0_in__1\(4)
    );
\count_r[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => \count_r[6]_i_2__1_n_0\,
      I2 => count_r_reg(4),
      I3 => Q(5),
      I4 => start,
      O => \p_0_in__1\(5)
    );
\count_r[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAA9AAA9"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => count_r_reg(4),
      I2 => \count_r[6]_i_2__1_n_0\,
      I3 => count_r_reg(5),
      I4 => Q(6),
      I5 => start,
      O => \p_0_in__1\(6)
    );
\count_r[6]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(0),
      I2 => count_r_reg(1),
      I3 => count_r_reg(3),
      O => \count_r[6]_i_2__1_n_0\
    );
\count_r[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => \count_r[7]_i_2__1_n_0\,
      I2 => count_r_reg(6),
      I3 => Q(7),
      I4 => start,
      O => \p_0_in__1\(7)
    );
\count_r[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => count_r_reg(2),
      I2 => count_r_reg(0),
      I3 => count_r_reg(1),
      I4 => count_r_reg(3),
      I5 => count_r_reg(5),
      O => \count_r[7]_i_2__1_n_0\
    );
\count_r[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F099"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => \count_r[10]_i_2__1_n_0\,
      I2 => Q(8),
      I3 => start,
      O => \p_0_in__1\(8)
    );
\count_r[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00A9A9"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => \count_r[10]_i_2__1_n_0\,
      I2 => count_r_reg(8),
      I3 => Q(9),
      I4 => start,
      O => \p_0_in__1\(9)
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(0),
      Q => count_r_reg(0),
      R => SR(0)
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(10),
      Q => count_r_reg(10),
      R => SR(0)
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(11),
      Q => count_r_reg(11),
      R => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(1),
      Q => count_r_reg(1),
      R => SR(0)
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(2),
      Q => count_r_reg(2),
      R => SR(0)
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(3),
      Q => count_r_reg(3),
      R => SR(0)
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(4),
      Q => count_r_reg(4),
      R => SR(0)
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(5),
      Q => count_r_reg(5),
      R => SR(0)
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(6),
      Q => count_r_reg(6),
      R => SR(0)
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(7),
      Q => count_r_reg(7),
      R => SR(0)
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(8),
      Q => count_r_reg(8),
      R => SR(0)
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(9),
      Q => count_r_reg(9),
      R => SR(0)
    );
w_almost_final_transaction_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => w_almost_final_transaction_i_2_n_0,
      I1 => count_r_reg(11),
      I2 => count_r_reg(10),
      I3 => count_r_reg(9),
      I4 => count_r_reg(8),
      I5 => w_almost_final_transaction_i_3_n_0,
      O => \count_r_reg[11]_0\
    );
w_almost_final_transaction_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => count_r_reg(6),
      I2 => count_r_reg(5),
      I3 => count_r_reg(4),
      O => w_almost_final_transaction_i_2_n_0
    );
w_almost_final_transaction_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => count_r_reg(0),
      I2 => count_r_reg(3),
      I3 => count_r_reg(2),
      O => w_almost_final_transaction_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  port (
    awvalid_r_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    wfirst_pulse : in STD_LOGIC;
    \count_r_reg[2]_0\ : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  signal \awxfer__0\ : STD_LOGIC;
  signal \count_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal idle_aw : STD_LOGIC;
  signal \is_zero_r_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_r[3]_i_3\ : label is "soft_lutpair17";
begin
awvalid_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1B"
    )
        port map (
      I0 => \count_r_reg[2]_0\,
      I1 => idle_aw,
      I2 => m_axi_AWREADY,
      O => awvalid_r_reg
    );
\count_r[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__0_n_0\
    );
\count_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696969"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => wfirst_pulse,
      I3 => \count_r_reg[2]_0\,
      I4 => m_axi_AWREADY,
      O => \count_r[1]_i_1__0_n_0\
    );
\count_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A666AAAAAAAA5999"
    )
        port map (
      I0 => \count_r_reg_n_0_[2]\,
      I1 => wfirst_pulse,
      I2 => \count_r_reg[2]_0\,
      I3 => m_axi_AWREADY,
      I4 => \count_r_reg_n_0_[1]\,
      I5 => \count_r_reg_n_0_[0]\,
      O => \count_r[2]_i_1__0_n_0\
    );
\count_r[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wfirst_pulse,
      I1 => \count_r_reg[2]_0\,
      I2 => m_axi_AWREADY,
      O => \count_r[3]_i_1__0_n_0\
    );
\count_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAA59"
    )
        port map (
      I0 => \count_r_reg_n_0_[3]\,
      I1 => wfirst_pulse,
      I2 => \awxfer__0\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \count_r_reg_n_0_[0]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[3]_i_2_n_0\
    );
\count_r[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_r_reg[2]_0\,
      I1 => m_axi_AWREADY,
      O => \awxfer__0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__0_n_0\,
      D => \count_r[0]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__0_n_0\,
      D => \count_r[1]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => SR(0)
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__0_n_0\,
      D => \count_r[2]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => SR(0)
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__0_n_0\,
      D => \count_r[3]_i_2_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => SR(0)
    );
\is_zero_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000000000000C00"
    )
        port map (
      I0 => wfirst_pulse,
      I1 => \awxfer__0\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[3]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \is_zero_r_i_1__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__0_n_0\,
      D => \is_zero_r_i_1__0_n_0\,
      Q => idle_aw,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair0";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(5 downto 0) <= \^q\(5 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[5]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[5]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_i,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^leaving_empty0\,
      I4 => going_full1,
      I5 => ram_wr_en_i,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair3";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[5]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[5]_1\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[5]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[5]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[5]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[5]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[5]_1\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[5]_1\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[5]_1\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00008080"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I3 => leaving_empty0,
      I4 => E(0),
      I5 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_2_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair2";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[5]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[5]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[5]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair5";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[5]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[5]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[5]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 83 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 83 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 83 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 83 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 5376;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 6;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 84;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg\ : STD_LOGIC_VECTOR ( 83 downto 0 );
  signal \gen_rd_b.doutb_reg0\ : STD_LOGIC_VECTOR ( 83 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83_DOH_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\ : STD_LOGIC;
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[10]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[11]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[12]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[13]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[14]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[15]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[16]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[17]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[18]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[19]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[20]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[21]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[22]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[23]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[24]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[25]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[26]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[27]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[28]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[29]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[30]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[31]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[32]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[33]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[34]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[35]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[36]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[37]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[38]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[39]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[40]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[41]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[42]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[43]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[44]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[45]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[46]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[47]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[48]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[49]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[50]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[51]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[52]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[53]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[54]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[55]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[56]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[57]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[58]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[59]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[60]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[61]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[62]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[63]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[64]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[65]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[66]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[67]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[68]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[69]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[70]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[71]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[72]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[73]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[74]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[75]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[76]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[77]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[78]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[79]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[7]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[80]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[81]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[82]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[83]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[8]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 5376;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\ : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\ : label is 20;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\ : label is 34;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 35;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\ : label is 41;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 42;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\ : label is 48;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 49;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\ : label is 55;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 56;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\ : label is 62;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 63;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\ : label is 69;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 70;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\ : label is 76;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 77;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\ : label is 83;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 5376;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 63;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\ : label is 13;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(83) <= \<const0>\;
  douta(82) <= \<const0>\;
  douta(81) <= \<const0>\;
  douta(80) <= \<const0>\;
  douta(79) <= \<const0>\;
  douta(78) <= \<const0>\;
  douta(77) <= \<const0>\;
  douta(76) <= \<const0>\;
  douta(75) <= \<const0>\;
  douta(74) <= \<const0>\;
  douta(73) <= \<const0>\;
  douta(72) <= \<const0>\;
  douta(71) <= \<const0>\;
  douta(70) <= \<const0>\;
  douta(69) <= \<const0>\;
  douta(68) <= \<const0>\;
  douta(67) <= \<const0>\;
  douta(66) <= \<const0>\;
  douta(65) <= \<const0>\;
  douta(64) <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(0),
      Q => \gen_rd_b.doutb_reg\(0),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(10),
      Q => \gen_rd_b.doutb_reg\(10),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(11),
      Q => \gen_rd_b.doutb_reg\(11),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(12),
      Q => \gen_rd_b.doutb_reg\(12),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(13),
      Q => \gen_rd_b.doutb_reg\(13),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(14),
      Q => \gen_rd_b.doutb_reg\(14),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(15),
      Q => \gen_rd_b.doutb_reg\(15),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(16),
      Q => \gen_rd_b.doutb_reg\(16),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(17),
      Q => \gen_rd_b.doutb_reg\(17),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(18),
      Q => \gen_rd_b.doutb_reg\(18),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(19),
      Q => \gen_rd_b.doutb_reg\(19),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(1),
      Q => \gen_rd_b.doutb_reg\(1),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(20),
      Q => \gen_rd_b.doutb_reg\(20),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(21),
      Q => \gen_rd_b.doutb_reg\(21),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(22),
      Q => \gen_rd_b.doutb_reg\(22),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(23),
      Q => \gen_rd_b.doutb_reg\(23),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(24),
      Q => \gen_rd_b.doutb_reg\(24),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(25),
      Q => \gen_rd_b.doutb_reg\(25),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(26),
      Q => \gen_rd_b.doutb_reg\(26),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(27),
      Q => \gen_rd_b.doutb_reg\(27),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(28),
      Q => \gen_rd_b.doutb_reg\(28),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(29),
      Q => \gen_rd_b.doutb_reg\(29),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(2),
      Q => \gen_rd_b.doutb_reg\(2),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(30),
      Q => \gen_rd_b.doutb_reg\(30),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(31),
      Q => \gen_rd_b.doutb_reg\(31),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(32),
      Q => \gen_rd_b.doutb_reg\(32),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(33),
      Q => \gen_rd_b.doutb_reg\(33),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(34),
      Q => \gen_rd_b.doutb_reg\(34),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(35),
      Q => \gen_rd_b.doutb_reg\(35),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(36),
      Q => \gen_rd_b.doutb_reg\(36),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(37),
      Q => \gen_rd_b.doutb_reg\(37),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(38),
      Q => \gen_rd_b.doutb_reg\(38),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(39),
      Q => \gen_rd_b.doutb_reg\(39),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(3),
      Q => \gen_rd_b.doutb_reg\(3),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(40),
      Q => \gen_rd_b.doutb_reg\(40),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(41),
      Q => \gen_rd_b.doutb_reg\(41),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(42),
      Q => \gen_rd_b.doutb_reg\(42),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(43),
      Q => \gen_rd_b.doutb_reg\(43),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(44),
      Q => \gen_rd_b.doutb_reg\(44),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(45),
      Q => \gen_rd_b.doutb_reg\(45),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(46),
      Q => \gen_rd_b.doutb_reg\(46),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(47),
      Q => \gen_rd_b.doutb_reg\(47),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(48),
      Q => \gen_rd_b.doutb_reg\(48),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(49),
      Q => \gen_rd_b.doutb_reg\(49),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(4),
      Q => \gen_rd_b.doutb_reg\(4),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(50),
      Q => \gen_rd_b.doutb_reg\(50),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(51),
      Q => \gen_rd_b.doutb_reg\(51),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(52),
      Q => \gen_rd_b.doutb_reg\(52),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(53),
      Q => \gen_rd_b.doutb_reg\(53),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(54),
      Q => \gen_rd_b.doutb_reg\(54),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(55),
      Q => \gen_rd_b.doutb_reg\(55),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(56),
      Q => \gen_rd_b.doutb_reg\(56),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(57),
      Q => \gen_rd_b.doutb_reg\(57),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(58),
      Q => \gen_rd_b.doutb_reg\(58),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(59),
      Q => \gen_rd_b.doutb_reg\(59),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(5),
      Q => \gen_rd_b.doutb_reg\(5),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(60),
      Q => \gen_rd_b.doutb_reg\(60),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(61),
      Q => \gen_rd_b.doutb_reg\(61),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(62),
      Q => \gen_rd_b.doutb_reg\(62),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(63),
      Q => \gen_rd_b.doutb_reg\(63),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(64),
      Q => \gen_rd_b.doutb_reg\(64),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(65),
      Q => \gen_rd_b.doutb_reg\(65),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(66),
      Q => \gen_rd_b.doutb_reg\(66),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(67),
      Q => \gen_rd_b.doutb_reg\(67),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(68),
      Q => \gen_rd_b.doutb_reg\(68),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(69),
      Q => \gen_rd_b.doutb_reg\(69),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(6),
      Q => \gen_rd_b.doutb_reg\(6),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(70),
      Q => \gen_rd_b.doutb_reg\(70),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(71),
      Q => \gen_rd_b.doutb_reg\(71),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(72),
      Q => \gen_rd_b.doutb_reg\(72),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(73),
      Q => \gen_rd_b.doutb_reg\(73),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(74),
      Q => \gen_rd_b.doutb_reg\(74),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(75),
      Q => \gen_rd_b.doutb_reg\(75),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(76),
      Q => \gen_rd_b.doutb_reg\(76),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(77),
      Q => \gen_rd_b.doutb_reg\(77),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(78),
      Q => \gen_rd_b.doutb_reg\(78),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(79),
      Q => \gen_rd_b.doutb_reg\(79),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(7),
      Q => \gen_rd_b.doutb_reg\(7),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(80),
      Q => \gen_rd_b.doutb_reg\(80),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(81),
      Q => \gen_rd_b.doutb_reg\(81),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(82),
      Q => \gen_rd_b.doutb_reg\(82),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(83),
      Q => \gen_rd_b.doutb_reg\(83),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(8),
      Q => \gen_rd_b.doutb_reg\(8),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(9),
      Q => \gen_rd_b.doutb_reg\(9),
      R => '0'
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(22),
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(23),
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(24),
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(25),
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(26),
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(27),
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(28),
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(29),
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(30),
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(31),
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(32),
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(33),
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(34),
      Q => doutb(34),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(35),
      Q => doutb(35),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(36),
      Q => doutb(36),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(37),
      Q => doutb(37),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(38),
      Q => doutb(38),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(39),
      Q => doutb(39),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(40),
      Q => doutb(40),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(41),
      Q => doutb(41),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(42),
      Q => doutb(42),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(43),
      Q => doutb(43),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(44),
      Q => doutb(44),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(45),
      Q => doutb(45),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(46),
      Q => doutb(46),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(47),
      Q => doutb(47),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(48),
      Q => doutb(48),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(49),
      Q => doutb(49),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(50),
      Q => doutb(50),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(51),
      Q => doutb(51),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(52),
      Q => doutb(52),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(53),
      Q => doutb(53),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(54),
      Q => doutb(54),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(55),
      Q => doutb(55),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(56),
      Q => doutb(56),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(57),
      Q => doutb(57),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(58),
      Q => doutb(58),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(59),
      Q => doutb(59),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(60),
      Q => doutb(60),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(61),
      Q => doutb(61),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(62),
      Q => doutb(62),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(63),
      Q => doutb(63),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(64),
      Q => doutb(64),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(65),
      Q => doutb(65),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(66),
      Q => doutb(66),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(67),
      Q => doutb(67),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(68),
      Q => doutb(68),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(69),
      Q => doutb(69),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(70),
      Q => doutb(70),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(71),
      Q => doutb(71),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(72),
      Q => doutb(72),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(73),
      Q => doutb(73),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(74),
      Q => doutb(74),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(75),
      Q => doutb(75),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(76),
      Q => doutb(76),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(77),
      Q => doutb(77),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(78),
      Q => doutb(78),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(79),
      Q => doutb(79),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(80),
      Q => doutb(80),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(81),
      Q => doutb(81),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(82),
      Q => doutb(82),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(83),
      Q => doutb(83),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(0),
      DIB => dina(1),
      DIC => dina(2),
      DID => dina(3),
      DIE => dina(4),
      DIF => dina(5),
      DIG => dina(6),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(0),
      DOB => \gen_rd_b.doutb_reg0\(1),
      DOC => \gen_rd_b.doutb_reg0\(2),
      DOD => \gen_rd_b.doutb_reg0\(3),
      DOE => \gen_rd_b.doutb_reg0\(4),
      DOF => \gen_rd_b.doutb_reg0\(5),
      DOG => \gen_rd_b.doutb_reg0\(6),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_6_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(14),
      DIB => dina(15),
      DIC => dina(16),
      DID => dina(17),
      DIE => dina(18),
      DIF => dina(19),
      DIG => dina(20),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(14),
      DOB => \gen_rd_b.doutb_reg0\(15),
      DOC => \gen_rd_b.doutb_reg0\(16),
      DOD => \gen_rd_b.doutb_reg0\(17),
      DOE => \gen_rd_b.doutb_reg0\(18),
      DOF => \gen_rd_b.doutb_reg0\(19),
      DOG => \gen_rd_b.doutb_reg0\(20),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(21),
      DIB => dina(22),
      DIC => dina(23),
      DID => dina(24),
      DIE => dina(25),
      DIF => dina(26),
      DIG => dina(27),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(21),
      DOB => \gen_rd_b.doutb_reg0\(22),
      DOC => \gen_rd_b.doutb_reg0\(23),
      DOD => \gen_rd_b.doutb_reg0\(24),
      DOE => \gen_rd_b.doutb_reg0\(25),
      DOF => \gen_rd_b.doutb_reg0\(26),
      DOG => \gen_rd_b.doutb_reg0\(27),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_27_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(28),
      DIB => dina(29),
      DIC => dina(30),
      DID => dina(31),
      DIE => dina(32),
      DIF => dina(33),
      DIG => dina(34),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(28),
      DOB => \gen_rd_b.doutb_reg0\(29),
      DOC => \gen_rd_b.doutb_reg0\(30),
      DOD => \gen_rd_b.doutb_reg0\(31),
      DOE => \gen_rd_b.doutb_reg0\(32),
      DOF => \gen_rd_b.doutb_reg0\(33),
      DOG => \gen_rd_b.doutb_reg0\(34),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_28_34_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(35),
      DIB => dina(36),
      DIC => dina(37),
      DID => dina(38),
      DIE => dina(39),
      DIF => dina(40),
      DIG => dina(41),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(35),
      DOB => \gen_rd_b.doutb_reg0\(36),
      DOC => \gen_rd_b.doutb_reg0\(37),
      DOD => \gen_rd_b.doutb_reg0\(38),
      DOE => \gen_rd_b.doutb_reg0\(39),
      DOF => \gen_rd_b.doutb_reg0\(40),
      DOG => \gen_rd_b.doutb_reg0\(41),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_35_41_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(42),
      DIB => dina(43),
      DIC => dina(44),
      DID => dina(45),
      DIE => dina(46),
      DIF => dina(47),
      DIG => dina(48),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(42),
      DOB => \gen_rd_b.doutb_reg0\(43),
      DOC => \gen_rd_b.doutb_reg0\(44),
      DOD => \gen_rd_b.doutb_reg0\(45),
      DOE => \gen_rd_b.doutb_reg0\(46),
      DOF => \gen_rd_b.doutb_reg0\(47),
      DOG => \gen_rd_b.doutb_reg0\(48),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_42_48_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(49),
      DIB => dina(50),
      DIC => dina(51),
      DID => dina(52),
      DIE => dina(53),
      DIF => dina(54),
      DIG => dina(55),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(49),
      DOB => \gen_rd_b.doutb_reg0\(50),
      DOC => \gen_rd_b.doutb_reg0\(51),
      DOD => \gen_rd_b.doutb_reg0\(52),
      DOE => \gen_rd_b.doutb_reg0\(53),
      DOF => \gen_rd_b.doutb_reg0\(54),
      DOG => \gen_rd_b.doutb_reg0\(55),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_49_55_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(56),
      DIB => dina(57),
      DIC => dina(58),
      DID => dina(59),
      DIE => dina(60),
      DIF => dina(61),
      DIG => dina(62),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(56),
      DOB => \gen_rd_b.doutb_reg0\(57),
      DOC => \gen_rd_b.doutb_reg0\(58),
      DOD => \gen_rd_b.doutb_reg0\(59),
      DOE => \gen_rd_b.doutb_reg0\(60),
      DOF => \gen_rd_b.doutb_reg0\(61),
      DOG => \gen_rd_b.doutb_reg0\(62),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_56_62_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(63),
      DIB => dina(64),
      DIC => dina(65),
      DID => dina(66),
      DIE => dina(67),
      DIF => dina(68),
      DIG => dina(69),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(63),
      DOB => \gen_rd_b.doutb_reg0\(64),
      DOC => \gen_rd_b.doutb_reg0\(65),
      DOD => \gen_rd_b.doutb_reg0\(66),
      DOE => \gen_rd_b.doutb_reg0\(67),
      DOF => \gen_rd_b.doutb_reg0\(68),
      DOG => \gen_rd_b.doutb_reg0\(69),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_63_69_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(70),
      DIB => dina(71),
      DIC => dina(72),
      DID => dina(73),
      DIE => dina(74),
      DIF => dina(75),
      DIG => dina(76),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(70),
      DOB => \gen_rd_b.doutb_reg0\(71),
      DOC => \gen_rd_b.doutb_reg0\(72),
      DOD => \gen_rd_b.doutb_reg0\(73),
      DOE => \gen_rd_b.doutb_reg0\(74),
      DOF => \gen_rd_b.doutb_reg0\(75),
      DOG => \gen_rd_b.doutb_reg0\(76),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_70_76_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(77),
      DIB => dina(78),
      DIC => dina(79),
      DID => dina(80),
      DIE => dina(81),
      DIF => dina(82),
      DIG => dina(83),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(77),
      DOB => \gen_rd_b.doutb_reg0\(78),
      DOC => \gen_rd_b.doutb_reg0\(79),
      DOD => \gen_rd_b.doutb_reg0\(80),
      DOE => \gen_rd_b.doutb_reg0\(81),
      DOF => \gen_rd_b.doutb_reg0\(82),
      DOG => \gen_rd_b.doutb_reg0\(83),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_77_83_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13\: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => addrb(5 downto 0),
      ADDRB(5 downto 0) => addrb(5 downto 0),
      ADDRC(5 downto 0) => addrb(5 downto 0),
      ADDRD(5 downto 0) => addrb(5 downto 0),
      ADDRE(5 downto 0) => addrb(5 downto 0),
      ADDRF(5 downto 0) => addrb(5 downto 0),
      ADDRG(5 downto 0) => addrb(5 downto 0),
      ADDRH(5 downto 0) => addra(5 downto 0),
      DIA => dina(7),
      DIB => dina(8),
      DIC => dina(9),
      DID => dina(10),
      DIE => dina(11),
      DIF => dina(12),
      DIG => dina(13),
      DIH => '0',
      DOA => \gen_rd_b.doutb_reg0\(7),
      DOB => \gen_rd_b.doutb_reg0\(8),
      DOC => \gen_rd_b.doutb_reg0\(9),
      DOD => \gen_rd_b.doutb_reg0\(10),
      DOE => \gen_rd_b.doutb_reg0\(11),
      DOF => \gen_rd_b.doutb_reg0\(12),
      DOG => \gen_rd_b.doutb_reg0\(13),
      DOH => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 83 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 83 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 64;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5376;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 64;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 59;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 59;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 59;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 61;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 84;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 825241648;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 84;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal \count_value_i__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rdp_inst_n_7 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 83 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair7";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 5376;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 84;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair8";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(15) <= \<const0>\;
  rd_data_count(14) <= \<const0>\;
  rd_data_count(13) <= \<const0>\;
  rd_data_count(12) <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(15) <= \<const0>\;
  wr_data_count(14) <= \<const0>\;
  wr_data_count(13) <= \<const0>\;
  wr_data_count(12) <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_7,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(5 downto 0) => wr_pntr_ext(5 downto 0),
      addrb(5 downto 0) => rd_pntr_ext(5 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(83 downto 0) => din(83 downto 0),
      dinb(83 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(83 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(83 downto 0),
      doutb(83 downto 0) => dout(83 downto 0),
      ena => ram_wr_en_i,
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_8,
      Q(5 downto 0) => rd_pntr_ext(5 downto 0),
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_9,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5 downto 0) => wr_pntr_ext(5 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(5 downto 0) => \count_value_i__0\(5 downto 0),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_8,
      Q(5) => rdpp1_inst_n_0,
      Q(4) => rdpp1_inst_n_1,
      Q(3) => rdpp1_inst_n_2,
      Q(2) => rdpp1_inst_n_3,
      Q(1) => rdpp1_inst_n_4,
      Q(0) => rdpp1_inst_n_5,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2\
     port map (
      E(0) => ram_wr_en_i,
      Q(5 downto 0) => wr_pntr_ext(5 downto 0),
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \count_value_i_reg[5]_1\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(5) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(4) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_5,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3\
     port map (
      E(0) => ram_wr_en_i,
      Q(5 downto 0) => \count_value_i__0\(5 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_i,
      Q(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[5]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 15 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 15 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 84;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 84;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 64;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "distributed";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 6;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 61;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 16;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 64;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 64;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 82;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 81;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 80;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 72;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 4013;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 83;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1000";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 64;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 5376;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 64;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 59;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 59;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 59;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 61;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 16;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 7;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 6;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 84;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES_integer : integer;
  attribute USE_ADV_FEATURES_integer of xpm_fifo_base_inst : label is 825241648;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 84;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 16;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 7;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 6;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 7;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  rd_data_count_axis(15) <= \<const0>\;
  rd_data_count_axis(14) <= \<const0>\;
  rd_data_count_axis(13) <= \<const0>\;
  rd_data_count_axis(12) <= \<const0>\;
  rd_data_count_axis(11) <= \<const0>\;
  rd_data_count_axis(10) <= \<const0>\;
  rd_data_count_axis(9) <= \<const0>\;
  rd_data_count_axis(8) <= \<const0>\;
  rd_data_count_axis(7) <= \<const0>\;
  rd_data_count_axis(6) <= \<const0>\;
  rd_data_count_axis(5) <= \<const0>\;
  rd_data_count_axis(4) <= \<const0>\;
  rd_data_count_axis(3) <= \<const0>\;
  rd_data_count_axis(2) <= \<const0>\;
  rd_data_count_axis(1) <= \<const0>\;
  rd_data_count_axis(0) <= \<const0>\;
  sbiterr_axis <= \<const0>\;
  wr_data_count_axis(15) <= \<const0>\;
  wr_data_count_axis(14) <= \<const0>\;
  wr_data_count_axis(13) <= \<const0>\;
  wr_data_count_axis(12) <= \<const0>\;
  wr_data_count_axis(11) <= \<const0>\;
  wr_data_count_axis(10) <= \<const0>\;
  wr_data_count_axis(9) <= \<const0>\;
  wr_data_count_axis(8) <= \<const0>\;
  wr_data_count_axis(7) <= \<const0>\;
  wr_data_count_axis(6) <= \<const0>\;
  wr_data_count_axis(5) <= \<const0>\;
  wr_data_count_axis(4) <= \<const0>\;
  wr_data_count_axis(3) <= \<const0>\;
  wr_data_count_axis(2) <= \<const0>\;
  wr_data_count_axis(1) <= \<const0>\;
  wr_data_count_axis(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(83) => s_axis_tlast,
      din(82) => s_axis_tuser(0),
      din(81) => s_axis_tdest(0),
      din(80) => s_axis_tid(0),
      din(79 downto 72) => s_axis_tkeep(7 downto 0),
      din(71 downto 64) => s_axis_tstrb(7 downto 0),
      din(63 downto 0) => s_axis_tdata(63 downto 0),
      dout(83) => m_axis_tlast,
      dout(82) => m_axis_tuser(0),
      dout(81) => m_axis_tdest(0),
      dout(80) => m_axis_tid(0),
      dout(79 downto 72) => m_axis_tkeep(7 downto 0),
      dout(71 downto 64) => m_axis_tstrb(7 downto 0),
      dout(63 downto 0) => m_axis_tdata(63 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(15 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(15 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(15 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(15 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  port (
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axi_WVALID : out STD_LOGIC;
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    is_zero_r_reg : out STD_LOGIC;
    awvalid_r_reg_0 : out STD_LOGIC;
    req_done : out STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    req_start : in STD_LOGIC;
    req_length : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_WREADY : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  signal \addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr[13]_i_10_n_0\ : STD_LOGIC;
  signal \addr[13]_i_2_n_0\ : STD_LOGIC;
  signal \addr[13]_i_3_n_0\ : STD_LOGIC;
  signal \addr[13]_i_4_n_0\ : STD_LOGIC;
  signal \addr[13]_i_5_n_0\ : STD_LOGIC;
  signal \addr[13]_i_6_n_0\ : STD_LOGIC;
  signal \addr[13]_i_7_n_0\ : STD_LOGIC;
  signal \addr[13]_i_8_n_0\ : STD_LOGIC;
  signal \addr[13]_i_9_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[21]_i_2_n_0\ : STD_LOGIC;
  signal \addr[21]_i_3_n_0\ : STD_LOGIC;
  signal \addr[21]_i_4_n_0\ : STD_LOGIC;
  signal \addr[21]_i_5_n_0\ : STD_LOGIC;
  signal \addr[21]_i_6_n_0\ : STD_LOGIC;
  signal \addr[21]_i_7_n_0\ : STD_LOGIC;
  signal \addr[21]_i_8_n_0\ : STD_LOGIC;
  signal \addr[21]_i_9_n_0\ : STD_LOGIC;
  signal \addr[29]_i_2_n_0\ : STD_LOGIC;
  signal \addr[29]_i_3_n_0\ : STD_LOGIC;
  signal \addr[29]_i_4_n_0\ : STD_LOGIC;
  signal \addr[29]_i_5_n_0\ : STD_LOGIC;
  signal \addr[29]_i_6_n_0\ : STD_LOGIC;
  signal \addr[29]_i_7_n_0\ : STD_LOGIC;
  signal \addr[29]_i_8_n_0\ : STD_LOGIC;
  signal \addr[29]_i_9_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[37]_i_2_n_0\ : STD_LOGIC;
  signal \addr[37]_i_3_n_0\ : STD_LOGIC;
  signal \addr[37]_i_4_n_0\ : STD_LOGIC;
  signal \addr[37]_i_5_n_0\ : STD_LOGIC;
  signal \addr[37]_i_6_n_0\ : STD_LOGIC;
  signal \addr[37]_i_7_n_0\ : STD_LOGIC;
  signal \addr[37]_i_8_n_0\ : STD_LOGIC;
  signal \addr[37]_i_9_n_0\ : STD_LOGIC;
  signal \addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr[45]_i_2_n_0\ : STD_LOGIC;
  signal \addr[45]_i_3_n_0\ : STD_LOGIC;
  signal \addr[45]_i_4_n_0\ : STD_LOGIC;
  signal \addr[45]_i_5_n_0\ : STD_LOGIC;
  signal \addr[45]_i_6_n_0\ : STD_LOGIC;
  signal \addr[45]_i_7_n_0\ : STD_LOGIC;
  signal \addr[45]_i_8_n_0\ : STD_LOGIC;
  signal \addr[45]_i_9_n_0\ : STD_LOGIC;
  signal \addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr[53]_i_2_n_0\ : STD_LOGIC;
  signal \addr[53]_i_3_n_0\ : STD_LOGIC;
  signal \addr[53]_i_4_n_0\ : STD_LOGIC;
  signal \addr[53]_i_5_n_0\ : STD_LOGIC;
  signal \addr[53]_i_6_n_0\ : STD_LOGIC;
  signal \addr[53]_i_7_n_0\ : STD_LOGIC;
  signal \addr[53]_i_8_n_0\ : STD_LOGIC;
  signal \addr[53]_i_9_n_0\ : STD_LOGIC;
  signal \addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr[61]_i_2_n_0\ : STD_LOGIC;
  signal \addr[61]_i_3_n_0\ : STD_LOGIC;
  signal \addr[61]_i_4_n_0\ : STD_LOGIC;
  signal \addr[61]_i_5_n_0\ : STD_LOGIC;
  signal \addr[61]_i_6_n_0\ : STD_LOGIC;
  signal \addr[61]_i_7_n_0\ : STD_LOGIC;
  signal \addr[61]_i_8_n_0\ : STD_LOGIC;
  signal \addr[61]_i_9_n_0\ : STD_LOGIC;
  signal \addr[63]_i_3_n_0\ : STD_LOGIC;
  signal \addr[63]_i_4_n_0\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[13]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[21]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[29]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[37]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[45]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[53]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[61]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_14\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_15\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \^awvalid_r_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal final_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \final_burst_len0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \final_burst_len[1]_i_1_n_0\ : STD_LOGIC;
  signal \final_burst_len[2]_i_1_n_0\ : STD_LOGIC;
  signal \final_burst_len[3]_i_1_n_0\ : STD_LOGIC;
  signal inst_aw_transaction_cntr_n_5 : STD_LOGIC;
  signal inst_burst_cntr_n_1 : STD_LOGIC;
  signal inst_burst_cntr_n_2 : STD_LOGIC;
  signal inst_burst_cntr_n_3 : STD_LOGIC;
  signal inst_burst_cntr_n_4 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_0 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_0 : STD_LOGIC;
  signal load_burst_cntr04_out : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal num_transactions : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal num_transactions0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \num_transactions1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \num_transactions1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \num_transactions1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \num_transactions1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_5\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_6\ : STD_LOGIC;
  signal \num_transactions1_carry__0_n_7\ : STD_LOGIC;
  signal num_transactions1_carry_i_1_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_2_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_3_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_4_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_5_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_6_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_7_n_0 : STD_LOGIC;
  signal num_transactions1_carry_i_8_n_0 : STD_LOGIC;
  signal num_transactions1_carry_n_0 : STD_LOGIC;
  signal num_transactions1_carry_n_1 : STD_LOGIC;
  signal num_transactions1_carry_n_2 : STD_LOGIC;
  signal num_transactions1_carry_n_3 : STD_LOGIC;
  signal num_transactions1_carry_n_4 : STD_LOGIC;
  signal num_transactions1_carry_n_5 : STD_LOGIC;
  signal num_transactions1_carry_n_6 : STD_LOGIC;
  signal num_transactions1_carry_n_7 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal start : STD_LOGIC;
  signal w_almost_final_transaction : STD_LOGIC;
  signal wfirst : STD_LOGIC;
  signal wfirst_d1 : STD_LOGIC;
  signal wfirst_d10 : STD_LOGIC;
  signal wfirst_pulse : STD_LOGIC;
  signal wfirst_pulse0 : STD_LOGIC;
  signal \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_addr_reg[63]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_num_transactions1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_num_transactions1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addr[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \addr[5]_i_1\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_reg[13]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[21]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[29]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[37]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[45]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[53]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[61]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[63]_i_2\ : label is 16;
  attribute SOFT_HLUTNM of final_burst_len0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \final_burst_len[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \final_burst_len[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \final_burst_len[3]_i_1\ : label is "soft_lutpair21";
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of inst_axis_data_fifo : label is 84;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of inst_axis_data_fifo : label is 84;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of inst_axis_data_fifo : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of inst_axis_data_fifo : label is 2;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of inst_axis_data_fifo : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of inst_axis_data_fifo : label is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of inst_axis_data_fifo : label is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of inst_axis_data_fifo : label is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of inst_axis_data_fifo : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of inst_axis_data_fifo : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of inst_axis_data_fifo : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of inst_axis_data_fifo : label is 64;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of inst_axis_data_fifo : label is "distributed";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of inst_axis_data_fifo : label is 6;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of inst_axis_data_fifo : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of inst_axis_data_fifo : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of inst_axis_data_fifo : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of inst_axis_data_fifo : label is 61;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of inst_axis_data_fifo : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of inst_axis_data_fifo : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of inst_axis_data_fifo : label is 1;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of inst_axis_data_fifo : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of inst_axis_data_fifo : label is 16;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of inst_axis_data_fifo : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_axis_data_fifo : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of inst_axis_data_fifo : label is 64;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of inst_axis_data_fifo : label is 64;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of inst_axis_data_fifo : label is 82;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of inst_axis_data_fifo : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of inst_axis_data_fifo : label is 81;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of inst_axis_data_fifo : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of inst_axis_data_fifo : label is 80;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of inst_axis_data_fifo : label is 72;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of inst_axis_data_fifo : label is 4013;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of inst_axis_data_fifo : label is 83;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of inst_axis_data_fifo : label is 1;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of inst_axis_data_fifo : label is "1000";
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of inst_axis_data_fifo : label is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of inst_axis_data_fifo : label is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_axis_data_fifo : label is "TRUE";
  attribute ADDER_THRESHOLD of num_transactions1_carry : label is 35;
  attribute ADDER_THRESHOLD of \num_transactions1_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of wfirst_d1_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of wfirst_pulse_i_1 : label is "soft_lutpair22";
begin
  awvalid_r_reg_0 <= \^awvalid_r_reg_0\;
  m_axi_AWADDR(63 downto 0) <= \^m_axi_awaddr\(63 downto 0);
  m_axi_WVALID <= \^m_axi_wvalid\;
\addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(0),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(0),
      O => \addr[0]_i_1_n_0\
    );
\addr[13]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(6),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(6),
      O => \addr[13]_i_10_n_0\
    );
\addr[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(7),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(7),
      O => \addr[13]_i_2_n_0\
    );
\addr[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(13),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(13),
      O => \addr[13]_i_3_n_0\
    );
\addr[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(12),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(12),
      O => \addr[13]_i_4_n_0\
    );
\addr[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(11),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(11),
      O => \addr[13]_i_5_n_0\
    );
\addr[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(10),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(10),
      O => \addr[13]_i_6_n_0\
    );
\addr[13]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(9),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(9),
      O => \addr[13]_i_7_n_0\
    );
\addr[13]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(8),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(8),
      O => \addr[13]_i_8_n_0\
    );
\addr[13]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_axi_awaddr\(7),
      I1 => baseAddr(7),
      I2 => req_start,
      O => \addr[13]_i_9_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(1),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(1),
      O => \addr[1]_i_1_n_0\
    );
\addr[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(21),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(21),
      O => \addr[21]_i_2_n_0\
    );
\addr[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(20),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(20),
      O => \addr[21]_i_3_n_0\
    );
\addr[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(19),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(19),
      O => \addr[21]_i_4_n_0\
    );
\addr[21]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(18),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(18),
      O => \addr[21]_i_5_n_0\
    );
\addr[21]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(17),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(17),
      O => \addr[21]_i_6_n_0\
    );
\addr[21]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(16),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(16),
      O => \addr[21]_i_7_n_0\
    );
\addr[21]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(15),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(15),
      O => \addr[21]_i_8_n_0\
    );
\addr[21]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(14),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(14),
      O => \addr[21]_i_9_n_0\
    );
\addr[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(29),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(29),
      O => \addr[29]_i_2_n_0\
    );
\addr[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(28),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(28),
      O => \addr[29]_i_3_n_0\
    );
\addr[29]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(27),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(27),
      O => \addr[29]_i_4_n_0\
    );
\addr[29]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(26),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(26),
      O => \addr[29]_i_5_n_0\
    );
\addr[29]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(25),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(25),
      O => \addr[29]_i_6_n_0\
    );
\addr[29]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(24),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(24),
      O => \addr[29]_i_7_n_0\
    );
\addr[29]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(23),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(23),
      O => \addr[29]_i_8_n_0\
    );
\addr[29]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(22),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(22),
      O => \addr[29]_i_9_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(2),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(2),
      O => \addr[2]_i_1_n_0\
    );
\addr[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(37),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(37),
      O => \addr[37]_i_2_n_0\
    );
\addr[37]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(36),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(36),
      O => \addr[37]_i_3_n_0\
    );
\addr[37]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(35),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(35),
      O => \addr[37]_i_4_n_0\
    );
\addr[37]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(34),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(34),
      O => \addr[37]_i_5_n_0\
    );
\addr[37]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(33),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(33),
      O => \addr[37]_i_6_n_0\
    );
\addr[37]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(32),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(32),
      O => \addr[37]_i_7_n_0\
    );
\addr[37]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(31),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(31),
      O => \addr[37]_i_8_n_0\
    );
\addr[37]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(30),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(30),
      O => \addr[37]_i_9_n_0\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(3),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(3),
      O => \addr[3]_i_1_n_0\
    );
\addr[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(45),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(45),
      O => \addr[45]_i_2_n_0\
    );
\addr[45]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(44),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(44),
      O => \addr[45]_i_3_n_0\
    );
\addr[45]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(43),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(43),
      O => \addr[45]_i_4_n_0\
    );
\addr[45]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(42),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(42),
      O => \addr[45]_i_5_n_0\
    );
\addr[45]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(41),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(41),
      O => \addr[45]_i_6_n_0\
    );
\addr[45]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(40),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(40),
      O => \addr[45]_i_7_n_0\
    );
\addr[45]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(39),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(39),
      O => \addr[45]_i_8_n_0\
    );
\addr[45]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(38),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(38),
      O => \addr[45]_i_9_n_0\
    );
\addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(4),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(4),
      O => \addr[4]_i_1_n_0\
    );
\addr[53]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(53),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(53),
      O => \addr[53]_i_2_n_0\
    );
\addr[53]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(52),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(52),
      O => \addr[53]_i_3_n_0\
    );
\addr[53]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(51),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(51),
      O => \addr[53]_i_4_n_0\
    );
\addr[53]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(50),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(50),
      O => \addr[53]_i_5_n_0\
    );
\addr[53]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(49),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(49),
      O => \addr[53]_i_6_n_0\
    );
\addr[53]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(48),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(48),
      O => \addr[53]_i_7_n_0\
    );
\addr[53]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(47),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(47),
      O => \addr[53]_i_8_n_0\
    );
\addr[53]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(46),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(46),
      O => \addr[53]_i_9_n_0\
    );
\addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(5),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(5),
      O => \addr[5]_i_1_n_0\
    );
\addr[61]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(61),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(61),
      O => \addr[61]_i_2_n_0\
    );
\addr[61]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(60),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(60),
      O => \addr[61]_i_3_n_0\
    );
\addr[61]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(59),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(59),
      O => \addr[61]_i_4_n_0\
    );
\addr[61]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(58),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(58),
      O => \addr[61]_i_5_n_0\
    );
\addr[61]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(57),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(57),
      O => \addr[61]_i_6_n_0\
    );
\addr[61]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(56),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(56),
      O => \addr[61]_i_7_n_0\
    );
\addr[61]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(55),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(55),
      O => \addr[61]_i_8_n_0\
    );
\addr[61]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(54),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(54),
      O => \addr[61]_i_9_n_0\
    );
\addr[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => \^awvalid_r_reg_0\,
      I2 => req_start,
      O => sel
    );
\addr[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(63),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(63),
      O => \addr[63]_i_3_n_0\
    );
\addr[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baseAddr(62),
      I1 => req_start,
      I2 => \^m_axi_awaddr\(62),
      O => \addr[63]_i_4_n_0\
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[0]_i_1_n_0\,
      Q => \^m_axi_awaddr\(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_11\,
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_10\,
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_9\,
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_8\,
      Q => \^m_axi_awaddr\(13),
      R => '0'
    );
\addr_reg[13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \addr_reg[13]_i_1_n_0\,
      CO(6) => \addr_reg[13]_i_1_n_1\,
      CO(5) => \addr_reg[13]_i_1_n_2\,
      CO(4) => \addr_reg[13]_i_1_n_3\,
      CO(3) => \addr_reg[13]_i_1_n_4\,
      CO(2) => \addr_reg[13]_i_1_n_5\,
      CO(1) => \addr_reg[13]_i_1_n_6\,
      CO(0) => \addr_reg[13]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \addr[13]_i_2_n_0\,
      DI(0) => '0',
      O(7) => \addr_reg[13]_i_1_n_8\,
      O(6) => \addr_reg[13]_i_1_n_9\,
      O(5) => \addr_reg[13]_i_1_n_10\,
      O(4) => \addr_reg[13]_i_1_n_11\,
      O(3) => \addr_reg[13]_i_1_n_12\,
      O(2) => \addr_reg[13]_i_1_n_13\,
      O(1) => \addr_reg[13]_i_1_n_14\,
      O(0) => \addr_reg[13]_i_1_n_15\,
      S(7) => \addr[13]_i_3_n_0\,
      S(6) => \addr[13]_i_4_n_0\,
      S(5) => \addr[13]_i_5_n_0\,
      S(4) => \addr[13]_i_6_n_0\,
      S(3) => \addr[13]_i_7_n_0\,
      S(2) => \addr[13]_i_8_n_0\,
      S(1) => \addr[13]_i_9_n_0\,
      S(0) => \addr[13]_i_10_n_0\
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_15\,
      Q => \^m_axi_awaddr\(14),
      R => '0'
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_14\,
      Q => \^m_axi_awaddr\(15),
      R => '0'
    );
\addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_13\,
      Q => \^m_axi_awaddr\(16),
      R => '0'
    );
\addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_12\,
      Q => \^m_axi_awaddr\(17),
      R => '0'
    );
\addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_11\,
      Q => \^m_axi_awaddr\(18),
      R => '0'
    );
\addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_10\,
      Q => \^m_axi_awaddr\(19),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[1]_i_1_n_0\,
      Q => \^m_axi_awaddr\(1),
      R => '0'
    );
\addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_9\,
      Q => \^m_axi_awaddr\(20),
      R => '0'
    );
\addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[21]_i_1_n_8\,
      Q => \^m_axi_awaddr\(21),
      R => '0'
    );
\addr_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[13]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[21]_i_1_n_0\,
      CO(6) => \addr_reg[21]_i_1_n_1\,
      CO(5) => \addr_reg[21]_i_1_n_2\,
      CO(4) => \addr_reg[21]_i_1_n_3\,
      CO(3) => \addr_reg[21]_i_1_n_4\,
      CO(2) => \addr_reg[21]_i_1_n_5\,
      CO(1) => \addr_reg[21]_i_1_n_6\,
      CO(0) => \addr_reg[21]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[21]_i_1_n_8\,
      O(6) => \addr_reg[21]_i_1_n_9\,
      O(5) => \addr_reg[21]_i_1_n_10\,
      O(4) => \addr_reg[21]_i_1_n_11\,
      O(3) => \addr_reg[21]_i_1_n_12\,
      O(2) => \addr_reg[21]_i_1_n_13\,
      O(1) => \addr_reg[21]_i_1_n_14\,
      O(0) => \addr_reg[21]_i_1_n_15\,
      S(7) => \addr[21]_i_2_n_0\,
      S(6) => \addr[21]_i_3_n_0\,
      S(5) => \addr[21]_i_4_n_0\,
      S(4) => \addr[21]_i_5_n_0\,
      S(3) => \addr[21]_i_6_n_0\,
      S(2) => \addr[21]_i_7_n_0\,
      S(1) => \addr[21]_i_8_n_0\,
      S(0) => \addr[21]_i_9_n_0\
    );
\addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_15\,
      Q => \^m_axi_awaddr\(22),
      R => '0'
    );
\addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_14\,
      Q => \^m_axi_awaddr\(23),
      R => '0'
    );
\addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_13\,
      Q => \^m_axi_awaddr\(24),
      R => '0'
    );
\addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_12\,
      Q => \^m_axi_awaddr\(25),
      R => '0'
    );
\addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_11\,
      Q => \^m_axi_awaddr\(26),
      R => '0'
    );
\addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_10\,
      Q => \^m_axi_awaddr\(27),
      R => '0'
    );
\addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_9\,
      Q => \^m_axi_awaddr\(28),
      R => '0'
    );
\addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[29]_i_1_n_8\,
      Q => \^m_axi_awaddr\(29),
      R => '0'
    );
\addr_reg[29]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[21]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[29]_i_1_n_0\,
      CO(6) => \addr_reg[29]_i_1_n_1\,
      CO(5) => \addr_reg[29]_i_1_n_2\,
      CO(4) => \addr_reg[29]_i_1_n_3\,
      CO(3) => \addr_reg[29]_i_1_n_4\,
      CO(2) => \addr_reg[29]_i_1_n_5\,
      CO(1) => \addr_reg[29]_i_1_n_6\,
      CO(0) => \addr_reg[29]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[29]_i_1_n_8\,
      O(6) => \addr_reg[29]_i_1_n_9\,
      O(5) => \addr_reg[29]_i_1_n_10\,
      O(4) => \addr_reg[29]_i_1_n_11\,
      O(3) => \addr_reg[29]_i_1_n_12\,
      O(2) => \addr_reg[29]_i_1_n_13\,
      O(1) => \addr_reg[29]_i_1_n_14\,
      O(0) => \addr_reg[29]_i_1_n_15\,
      S(7) => \addr[29]_i_2_n_0\,
      S(6) => \addr[29]_i_3_n_0\,
      S(5) => \addr[29]_i_4_n_0\,
      S(4) => \addr[29]_i_5_n_0\,
      S(3) => \addr[29]_i_6_n_0\,
      S(2) => \addr[29]_i_7_n_0\,
      S(1) => \addr[29]_i_8_n_0\,
      S(0) => \addr[29]_i_9_n_0\
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[2]_i_1_n_0\,
      Q => \^m_axi_awaddr\(2),
      R => '0'
    );
\addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_15\,
      Q => \^m_axi_awaddr\(30),
      R => '0'
    );
\addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_14\,
      Q => \^m_axi_awaddr\(31),
      R => '0'
    );
\addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_13\,
      Q => \^m_axi_awaddr\(32),
      R => '0'
    );
\addr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_12\,
      Q => \^m_axi_awaddr\(33),
      R => '0'
    );
\addr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_11\,
      Q => \^m_axi_awaddr\(34),
      R => '0'
    );
\addr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_10\,
      Q => \^m_axi_awaddr\(35),
      R => '0'
    );
\addr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_9\,
      Q => \^m_axi_awaddr\(36),
      R => '0'
    );
\addr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[37]_i_1_n_8\,
      Q => \^m_axi_awaddr\(37),
      R => '0'
    );
\addr_reg[37]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[29]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[37]_i_1_n_0\,
      CO(6) => \addr_reg[37]_i_1_n_1\,
      CO(5) => \addr_reg[37]_i_1_n_2\,
      CO(4) => \addr_reg[37]_i_1_n_3\,
      CO(3) => \addr_reg[37]_i_1_n_4\,
      CO(2) => \addr_reg[37]_i_1_n_5\,
      CO(1) => \addr_reg[37]_i_1_n_6\,
      CO(0) => \addr_reg[37]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[37]_i_1_n_8\,
      O(6) => \addr_reg[37]_i_1_n_9\,
      O(5) => \addr_reg[37]_i_1_n_10\,
      O(4) => \addr_reg[37]_i_1_n_11\,
      O(3) => \addr_reg[37]_i_1_n_12\,
      O(2) => \addr_reg[37]_i_1_n_13\,
      O(1) => \addr_reg[37]_i_1_n_14\,
      O(0) => \addr_reg[37]_i_1_n_15\,
      S(7) => \addr[37]_i_2_n_0\,
      S(6) => \addr[37]_i_3_n_0\,
      S(5) => \addr[37]_i_4_n_0\,
      S(4) => \addr[37]_i_5_n_0\,
      S(3) => \addr[37]_i_6_n_0\,
      S(2) => \addr[37]_i_7_n_0\,
      S(1) => \addr[37]_i_8_n_0\,
      S(0) => \addr[37]_i_9_n_0\
    );
\addr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_15\,
      Q => \^m_axi_awaddr\(38),
      R => '0'
    );
\addr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_14\,
      Q => \^m_axi_awaddr\(39),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[3]_i_1_n_0\,
      Q => \^m_axi_awaddr\(3),
      R => '0'
    );
\addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_13\,
      Q => \^m_axi_awaddr\(40),
      R => '0'
    );
\addr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_12\,
      Q => \^m_axi_awaddr\(41),
      R => '0'
    );
\addr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_11\,
      Q => \^m_axi_awaddr\(42),
      R => '0'
    );
\addr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_10\,
      Q => \^m_axi_awaddr\(43),
      R => '0'
    );
\addr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_9\,
      Q => \^m_axi_awaddr\(44),
      R => '0'
    );
\addr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[45]_i_1_n_8\,
      Q => \^m_axi_awaddr\(45),
      R => '0'
    );
\addr_reg[45]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[37]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[45]_i_1_n_0\,
      CO(6) => \addr_reg[45]_i_1_n_1\,
      CO(5) => \addr_reg[45]_i_1_n_2\,
      CO(4) => \addr_reg[45]_i_1_n_3\,
      CO(3) => \addr_reg[45]_i_1_n_4\,
      CO(2) => \addr_reg[45]_i_1_n_5\,
      CO(1) => \addr_reg[45]_i_1_n_6\,
      CO(0) => \addr_reg[45]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[45]_i_1_n_8\,
      O(6) => \addr_reg[45]_i_1_n_9\,
      O(5) => \addr_reg[45]_i_1_n_10\,
      O(4) => \addr_reg[45]_i_1_n_11\,
      O(3) => \addr_reg[45]_i_1_n_12\,
      O(2) => \addr_reg[45]_i_1_n_13\,
      O(1) => \addr_reg[45]_i_1_n_14\,
      O(0) => \addr_reg[45]_i_1_n_15\,
      S(7) => \addr[45]_i_2_n_0\,
      S(6) => \addr[45]_i_3_n_0\,
      S(5) => \addr[45]_i_4_n_0\,
      S(4) => \addr[45]_i_5_n_0\,
      S(3) => \addr[45]_i_6_n_0\,
      S(2) => \addr[45]_i_7_n_0\,
      S(1) => \addr[45]_i_8_n_0\,
      S(0) => \addr[45]_i_9_n_0\
    );
\addr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_15\,
      Q => \^m_axi_awaddr\(46),
      R => '0'
    );
\addr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_14\,
      Q => \^m_axi_awaddr\(47),
      R => '0'
    );
\addr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_13\,
      Q => \^m_axi_awaddr\(48),
      R => '0'
    );
\addr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_12\,
      Q => \^m_axi_awaddr\(49),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[4]_i_1_n_0\,
      Q => \^m_axi_awaddr\(4),
      R => '0'
    );
\addr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_11\,
      Q => \^m_axi_awaddr\(50),
      R => '0'
    );
\addr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_10\,
      Q => \^m_axi_awaddr\(51),
      R => '0'
    );
\addr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_9\,
      Q => \^m_axi_awaddr\(52),
      R => '0'
    );
\addr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[53]_i_1_n_8\,
      Q => \^m_axi_awaddr\(53),
      R => '0'
    );
\addr_reg[53]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[45]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[53]_i_1_n_0\,
      CO(6) => \addr_reg[53]_i_1_n_1\,
      CO(5) => \addr_reg[53]_i_1_n_2\,
      CO(4) => \addr_reg[53]_i_1_n_3\,
      CO(3) => \addr_reg[53]_i_1_n_4\,
      CO(2) => \addr_reg[53]_i_1_n_5\,
      CO(1) => \addr_reg[53]_i_1_n_6\,
      CO(0) => \addr_reg[53]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[53]_i_1_n_8\,
      O(6) => \addr_reg[53]_i_1_n_9\,
      O(5) => \addr_reg[53]_i_1_n_10\,
      O(4) => \addr_reg[53]_i_1_n_11\,
      O(3) => \addr_reg[53]_i_1_n_12\,
      O(2) => \addr_reg[53]_i_1_n_13\,
      O(1) => \addr_reg[53]_i_1_n_14\,
      O(0) => \addr_reg[53]_i_1_n_15\,
      S(7) => \addr[53]_i_2_n_0\,
      S(6) => \addr[53]_i_3_n_0\,
      S(5) => \addr[53]_i_4_n_0\,
      S(4) => \addr[53]_i_5_n_0\,
      S(3) => \addr[53]_i_6_n_0\,
      S(2) => \addr[53]_i_7_n_0\,
      S(1) => \addr[53]_i_8_n_0\,
      S(0) => \addr[53]_i_9_n_0\
    );
\addr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_15\,
      Q => \^m_axi_awaddr\(54),
      R => '0'
    );
\addr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_14\,
      Q => \^m_axi_awaddr\(55),
      R => '0'
    );
\addr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_13\,
      Q => \^m_axi_awaddr\(56),
      R => '0'
    );
\addr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_12\,
      Q => \^m_axi_awaddr\(57),
      R => '0'
    );
\addr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_11\,
      Q => \^m_axi_awaddr\(58),
      R => '0'
    );
\addr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_10\,
      Q => \^m_axi_awaddr\(59),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr[5]_i_1_n_0\,
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\addr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_9\,
      Q => \^m_axi_awaddr\(60),
      R => '0'
    );
\addr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[61]_i_1_n_8\,
      Q => \^m_axi_awaddr\(61),
      R => '0'
    );
\addr_reg[61]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[53]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[61]_i_1_n_0\,
      CO(6) => \addr_reg[61]_i_1_n_1\,
      CO(5) => \addr_reg[61]_i_1_n_2\,
      CO(4) => \addr_reg[61]_i_1_n_3\,
      CO(3) => \addr_reg[61]_i_1_n_4\,
      CO(2) => \addr_reg[61]_i_1_n_5\,
      CO(1) => \addr_reg[61]_i_1_n_6\,
      CO(0) => \addr_reg[61]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[61]_i_1_n_8\,
      O(6) => \addr_reg[61]_i_1_n_9\,
      O(5) => \addr_reg[61]_i_1_n_10\,
      O(4) => \addr_reg[61]_i_1_n_11\,
      O(3) => \addr_reg[61]_i_1_n_12\,
      O(2) => \addr_reg[61]_i_1_n_13\,
      O(1) => \addr_reg[61]_i_1_n_14\,
      O(0) => \addr_reg[61]_i_1_n_15\,
      S(7) => \addr[61]_i_2_n_0\,
      S(6) => \addr[61]_i_3_n_0\,
      S(5) => \addr[61]_i_4_n_0\,
      S(4) => \addr[61]_i_5_n_0\,
      S(3) => \addr[61]_i_6_n_0\,
      S(2) => \addr[61]_i_7_n_0\,
      S(1) => \addr[61]_i_8_n_0\,
      S(0) => \addr[61]_i_9_n_0\
    );
\addr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[63]_i_2_n_15\,
      Q => \^m_axi_awaddr\(62),
      R => '0'
    );
\addr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[63]_i_2_n_14\,
      Q => \^m_axi_awaddr\(63),
      R => '0'
    );
\addr_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[61]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \addr_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_addr_reg[63]_i_2_O_UNCONNECTED\(7 downto 2),
      O(1) => \addr_reg[63]_i_2_n_14\,
      O(0) => \addr_reg[63]_i_2_n_15\,
      S(7 downto 2) => B"000000",
      S(1) => \addr[63]_i_3_n_0\,
      S(0) => \addr[63]_i_4_n_0\
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_15\,
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_14\,
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_13\,
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \addr_reg[13]_i_1_n_12\,
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
awvalid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_w_to_aw_cntr_n_0,
      Q => \^awvalid_r_reg_0\,
      R => clear
    );
final_burst_len0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(0),
      O => \final_burst_len0__0\(0)
    );
\final_burst_len[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => req_length(0),
      I1 => req_length(1),
      O => \final_burst_len[1]_i_1_n_0\
    );
\final_burst_len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => req_length(1),
      I1 => req_length(0),
      I2 => req_length(2),
      O => \final_burst_len[2]_i_1_n_0\
    );
\final_burst_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => req_length(2),
      I1 => req_length(0),
      I2 => req_length(1),
      I3 => req_length(3),
      O => \final_burst_len[3]_i_1_n_0\
    );
\final_burst_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \final_burst_len0__0\(0),
      Q => final_burst_len(0),
      R => '0'
    );
\final_burst_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \final_burst_len[1]_i_1_n_0\,
      Q => final_burst_len(1),
      R => '0'
    );
\final_burst_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \final_burst_len[2]_i_1_n_0\,
      Q => final_burst_len(2),
      R => '0'
    );
\final_burst_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \final_burst_len[3]_i_1_n_0\,
      Q => final_burst_len(3),
      R => '0'
    );
inst_aw_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\
     port map (
      Q(3 downto 0) => final_burst_len(3 downto 0),
      SR(0) => clear,
      clk => clk,
      \count_r_reg[0]_0\ => \^awvalid_r_reg_0\,
      \count_r_reg[11]_0\(11 downto 0) => num_transactions(11 downto 0),
      load_burst_cntr04_out => load_burst_cntr04_out,
      m_axi_AWLEN(3 downto 0) => m_axi_AWLEN(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      \num_transactions_reg[2]\ => inst_aw_transaction_cntr_n_5,
      rst_n => rst_n,
      start => start
    );
inst_axis_data_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
     port map (
      almost_empty_axis => NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED,
      almost_full_axis => NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED,
      dbiterr_axis => NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => clk,
      m_axis_tdata(63 downto 0) => m_axi_WDATA(63 downto 0),
      m_axis_tdest(0) => NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(7 downto 0) => NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED(7 downto 0),
      m_axis_tlast => NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axi_WREADY,
      m_axis_tstrb(7 downto 0) => NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED(7 downto 0),
      m_axis_tuser(0) => NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => \^m_axi_wvalid\,
      prog_empty_axis => NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED,
      prog_full_axis => NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED,
      rd_data_count_axis(15 downto 0) => NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED(15 downto 0),
      s_aclk => clk,
      s_aresetn => rst_n,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(7 downto 0) => B"11111111",
      s_axis_tlast => '0',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(7 downto 0) => B"11111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED,
      wr_data_count_axis(15 downto 0) => NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED(15 downto 0)
    );
inst_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\
     port map (
      Q(11 downto 0) => num_transactions(11 downto 0),
      SR(0) => clear,
      clk => clk,
      is_zero_r_reg_0 => inst_aw_transaction_cntr_n_5,
      m_axi_BVALID => m_axi_BVALID,
      req_done => req_done,
      start => start
    );
inst_burst_cntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter
     port map (
      E(0) => inst_burst_cntr_n_3,
      Q(3 downto 0) => final_burst_len(3 downto 0),
      SR(0) => clear,
      clk => clk,
      is_zero_r_reg_0 => is_zero_r_reg,
      is_zero_r_reg_1 => inst_burst_cntr_n_4,
      \m_axi_AWLEN[3]_INST_0_i_1\(11 downto 0) => num_transactions(11 downto 0),
      m_axi_WREADY => m_axi_WREADY,
      m_axi_WVALID => \^m_axi_wvalid\,
      \num_transactions_reg[6]\ => inst_burst_cntr_n_2,
      \num_transactions_reg[7]\ => inst_burst_cntr_n_1,
      start => start,
      w_almost_final_transaction => w_almost_final_transaction,
      wfirst => wfirst
    );
inst_w_to_aw_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\
     port map (
      SR(0) => clear,
      awvalid_r_reg => inst_w_to_aw_cntr_n_0,
      clk => clk,
      \count_r_reg[2]_0\ => \^awvalid_r_reg_0\,
      m_axi_AWREADY => m_axi_AWREADY,
      wfirst_pulse => wfirst_pulse
    );
inst_w_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\
     port map (
      E(0) => inst_burst_cntr_n_3,
      Q(11 downto 0) => num_transactions(11 downto 0),
      SR(0) => clear,
      clk => clk,
      \count_r_reg[11]_0\ => inst_w_transaction_cntr_n_0,
      start => start
    );
\m_axi_AWLEN[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => inst_burst_cntr_n_2,
      I1 => num_transactions(2),
      I2 => num_transactions(1),
      I3 => num_transactions(0),
      I4 => inst_burst_cntr_n_1,
      O => load_burst_cntr04_out
    );
num_transactions1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => num_transactions1_carry_n_0,
      CO(6) => num_transactions1_carry_n_1,
      CO(5) => num_transactions1_carry_n_2,
      CO(4) => num_transactions1_carry_n_3,
      CO(3) => num_transactions1_carry_n_4,
      CO(2) => num_transactions1_carry_n_5,
      CO(1) => num_transactions1_carry_n_6,
      CO(0) => num_transactions1_carry_n_7,
      DI(7 downto 0) => req_length(11 downto 4),
      O(7 downto 0) => num_transactions0(7 downto 0),
      S(7) => num_transactions1_carry_i_1_n_0,
      S(6) => num_transactions1_carry_i_2_n_0,
      S(5) => num_transactions1_carry_i_3_n_0,
      S(4) => num_transactions1_carry_i_4_n_0,
      S(3) => num_transactions1_carry_i_5_n_0,
      S(2) => num_transactions1_carry_i_6_n_0,
      S(1) => num_transactions1_carry_i_7_n_0,
      S(0) => num_transactions1_carry_i_8_n_0
    );
\num_transactions1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => num_transactions1_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_num_transactions1_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \num_transactions1_carry__0_n_5\,
      CO(1) => \num_transactions1_carry__0_n_6\,
      CO(0) => \num_transactions1_carry__0_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => req_length(14 downto 12),
      O(7 downto 4) => \NLW_num_transactions1_carry__0_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => num_transactions0(11 downto 8),
      S(7 downto 4) => B"0000",
      S(3) => \num_transactions1_carry__0_i_1_n_0\,
      S(2) => \num_transactions1_carry__0_i_2_n_0\,
      S(1) => \num_transactions1_carry__0_i_3_n_0\,
      S(0) => \num_transactions1_carry__0_i_4_n_0\
    );
\num_transactions1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(15),
      O => \num_transactions1_carry__0_i_1_n_0\
    );
\num_transactions1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(14),
      O => \num_transactions1_carry__0_i_2_n_0\
    );
\num_transactions1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(13),
      O => \num_transactions1_carry__0_i_3_n_0\
    );
\num_transactions1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(12),
      O => \num_transactions1_carry__0_i_4_n_0\
    );
num_transactions1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(11),
      O => num_transactions1_carry_i_1_n_0
    );
num_transactions1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(10),
      O => num_transactions1_carry_i_2_n_0
    );
num_transactions1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(9),
      O => num_transactions1_carry_i_3_n_0
    );
num_transactions1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(8),
      O => num_transactions1_carry_i_4_n_0
    );
num_transactions1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(7),
      O => num_transactions1_carry_i_5_n_0
    );
num_transactions1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(6),
      O => num_transactions1_carry_i_6_n_0
    );
num_transactions1_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_length(5),
      O => num_transactions1_carry_i_7_n_0
    );
num_transactions1_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => req_length(4),
      I1 => req_length(2),
      I2 => req_length(3),
      I3 => req_length(0),
      I4 => req_length(1),
      O => num_transactions1_carry_i_8_n_0
    );
\num_transactions_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(0),
      Q => num_transactions(0),
      R => '0'
    );
\num_transactions_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(10),
      Q => num_transactions(10),
      R => '0'
    );
\num_transactions_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(11),
      Q => num_transactions(11),
      R => '0'
    );
\num_transactions_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(1),
      Q => num_transactions(1),
      R => '0'
    );
\num_transactions_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(2),
      Q => num_transactions(2),
      R => '0'
    );
\num_transactions_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(3),
      Q => num_transactions(3),
      R => '0'
    );
\num_transactions_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(4),
      Q => num_transactions(4),
      R => '0'
    );
\num_transactions_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(5),
      Q => num_transactions(5),
      R => '0'
    );
\num_transactions_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(6),
      Q => num_transactions(6),
      R => '0'
    );
\num_transactions_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(7),
      Q => num_transactions(7),
      R => '0'
    );
\num_transactions_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(8),
      Q => num_transactions(8),
      R => '0'
    );
\num_transactions_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => num_transactions0(9),
      Q => num_transactions(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => req_start,
      Q => start,
      R => '0'
    );
w_almost_final_transaction_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_w_transaction_cntr_n_0,
      Q => w_almost_final_transaction,
      R => '0'
    );
wfirst_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_wvalid\,
      I1 => wfirst,
      O => wfirst_d10
    );
wfirst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_d10,
      Q => wfirst_d1,
      R => '0'
    );
wfirst_pulse_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_axi_wvalid\,
      I1 => wfirst,
      I2 => wfirst_d1,
      O => wfirst_pulse0
    );
wfirst_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_pulse0,
      Q => wfirst_pulse,
      R => '0'
    );
wfirst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_burst_cntr_n_4,
      Q => wfirst,
      S => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    req_start : in STD_LOGIC;
    req_length : in STD_LOGIC_VECTOR ( 15 downto 0 );
    req_done : out STD_LOGIC;
    m_axi_AWVALID : out STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_AWID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_WLAST : out STD_LOGIC;
    m_axi_WVALID : out STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    m_axi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BVALID : in STD_LOGIC;
    m_axi_BREADY : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "custom_m_axi_128_swr_engine_0_0,swr_engine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "swr_engine,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_AWREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_AWVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_BREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_BREADY : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_BVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_WLAST : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_WREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_WVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axi_AWADDR : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_AWID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_AWLEN : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_BRESP : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_WDATA : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_WSTRB : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  m_axi_AWID(5) <= \<const0>\;
  m_axi_AWID(4) <= \<const0>\;
  m_axi_AWID(3) <= \<const0>\;
  m_axi_AWID(2) <= \<const0>\;
  m_axi_AWID(1) <= \<const0>\;
  m_axi_AWID(0) <= \<const0>\;
  m_axi_AWLEN(7) <= \<const0>\;
  m_axi_AWLEN(6) <= \<const0>\;
  m_axi_AWLEN(5) <= \<const0>\;
  m_axi_AWLEN(4) <= \<const0>\;
  m_axi_AWLEN(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
  m_axi_AWSIZE(2) <= \<const0>\;
  m_axi_AWSIZE(1) <= \<const1>\;
  m_axi_AWSIZE(0) <= \<const1>\;
  m_axi_BREADY <= \<const1>\;
  m_axi_WSTRB(7) <= \<const1>\;
  m_axi_WSTRB(6) <= \<const1>\;
  m_axi_WSTRB(5) <= \<const1>\;
  m_axi_WSTRB(4) <= \<const1>\;
  m_axi_WSTRB(3) <= \<const1>\;
  m_axi_WSTRB(2) <= \<const1>\;
  m_axi_WSTRB(1) <= \<const1>\;
  m_axi_WSTRB(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine
     port map (
      awvalid_r_reg_0 => m_axi_AWVALID,
      baseAddr(63 downto 0) => baseAddr(63 downto 0),
      clk => clk,
      is_zero_r_reg => m_axi_WLAST,
      m_axi_AWADDR(63 downto 0) => m_axi_AWADDR(63 downto 0),
      m_axi_AWLEN(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_BVALID => m_axi_BVALID,
      m_axi_WDATA(63 downto 0) => m_axi_WDATA(63 downto 0),
      m_axi_WREADY => m_axi_WREADY,
      m_axi_WVALID => m_axi_WVALID,
      req_done => req_done,
      req_length(15 downto 0) => req_length(15 downto 0),
      req_start => req_start,
      rst_n => rst_n,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
