--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sat Feb 18 02:09:14 2023
--Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
--Command     : generate_target mb_preset_wrapper.bd
--Design      : mb_preset_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_preset_wrapper is
  port (
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iic_main_scl_io : inout STD_LOGIC;
    iic_main_sda_io : inout STD_LOGIC;
    lcd_7bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    linear_flash_addr : out STD_LOGIC_VECTOR ( 26 downto 1 );
    linear_flash_adv_ldn : out STD_LOGIC;
    linear_flash_ce_n : out STD_LOGIC;
    linear_flash_dq_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    linear_flash_oen : out STD_LOGIC;
    linear_flash_wen : out STD_LOGIC;
    pcie_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_ref_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_ref_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    rotary_switch_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end mb_preset_wrapper;

architecture STRUCTURE of mb_preset_wrapper is
  component mb_preset is
  port (
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    iic_main_scl_i : in STD_LOGIC;
    iic_main_scl_o : out STD_LOGIC;
    iic_main_scl_t : out STD_LOGIC;
    iic_main_sda_i : in STD_LOGIC;
    iic_main_sda_o : out STD_LOGIC;
    iic_main_sda_t : out STD_LOGIC;
    linear_flash_addr : out STD_LOGIC_VECTOR ( 26 downto 1 );
    linear_flash_adv_ldn : out STD_LOGIC;
    linear_flash_ce_n : out STD_LOGIC;
    linear_flash_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    linear_flash_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    linear_flash_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    linear_flash_oen : out STD_LOGIC;
    linear_flash_wen : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lcd_7bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rotary_switch_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcie_ref_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_ref_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mb_preset;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_main_scl_i : STD_LOGIC;
  signal iic_main_scl_o : STD_LOGIC;
  signal iic_main_scl_t : STD_LOGIC;
  signal iic_main_sda_i : STD_LOGIC;
  signal iic_main_sda_o : STD_LOGIC;
  signal iic_main_sda_t : STD_LOGIC;
  signal linear_flash_dq_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal linear_flash_dq_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal linear_flash_dq_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal linear_flash_dq_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal linear_flash_dq_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal linear_flash_dq_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal linear_flash_dq_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal linear_flash_dq_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal linear_flash_dq_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal linear_flash_dq_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal linear_flash_dq_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal linear_flash_dq_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal linear_flash_dq_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal linear_flash_dq_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal linear_flash_dq_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal linear_flash_dq_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal linear_flash_dq_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal linear_flash_dq_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal linear_flash_dq_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal linear_flash_dq_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal linear_flash_dq_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal linear_flash_dq_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal linear_flash_dq_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal linear_flash_dq_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal linear_flash_dq_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal linear_flash_dq_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal linear_flash_dq_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal linear_flash_dq_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal linear_flash_dq_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal linear_flash_dq_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal linear_flash_dq_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal linear_flash_dq_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal linear_flash_dq_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal linear_flash_dq_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal linear_flash_dq_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal linear_flash_dq_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal linear_flash_dq_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal linear_flash_dq_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal linear_flash_dq_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal linear_flash_dq_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal linear_flash_dq_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal linear_flash_dq_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal linear_flash_dq_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal linear_flash_dq_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal linear_flash_dq_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal linear_flash_dq_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal linear_flash_dq_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal linear_flash_dq_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal linear_flash_dq_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal linear_flash_dq_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal linear_flash_dq_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal linear_flash_dq_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal linear_flash_dq_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal linear_flash_dq_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal linear_flash_dq_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal linear_flash_dq_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal linear_flash_dq_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal linear_flash_dq_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal linear_flash_dq_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal linear_flash_dq_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal linear_flash_dq_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal linear_flash_dq_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal linear_flash_dq_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal linear_flash_dq_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin
iic_main_scl_iobuf: component IOBUF
     port map (
      I => iic_main_scl_o,
      IO => iic_main_scl_io,
      O => iic_main_scl_i,
      T => iic_main_scl_t
    );
iic_main_sda_iobuf: component IOBUF
     port map (
      I => iic_main_sda_o,
      IO => iic_main_sda_io,
      O => iic_main_sda_i,
      T => iic_main_sda_t
    );
linear_flash_dq_iobuf_0: component IOBUF
     port map (
      I => linear_flash_dq_o_0(0),
      IO => linear_flash_dq_io(0),
      O => linear_flash_dq_i_0(0),
      T => linear_flash_dq_t_0(0)
    );
linear_flash_dq_iobuf_1: component IOBUF
     port map (
      I => linear_flash_dq_o_1(1),
      IO => linear_flash_dq_io(1),
      O => linear_flash_dq_i_1(1),
      T => linear_flash_dq_t_1(1)
    );
linear_flash_dq_iobuf_10: component IOBUF
     port map (
      I => linear_flash_dq_o_10(10),
      IO => linear_flash_dq_io(10),
      O => linear_flash_dq_i_10(10),
      T => linear_flash_dq_t_10(10)
    );
linear_flash_dq_iobuf_11: component IOBUF
     port map (
      I => linear_flash_dq_o_11(11),
      IO => linear_flash_dq_io(11),
      O => linear_flash_dq_i_11(11),
      T => linear_flash_dq_t_11(11)
    );
linear_flash_dq_iobuf_12: component IOBUF
     port map (
      I => linear_flash_dq_o_12(12),
      IO => linear_flash_dq_io(12),
      O => linear_flash_dq_i_12(12),
      T => linear_flash_dq_t_12(12)
    );
linear_flash_dq_iobuf_13: component IOBUF
     port map (
      I => linear_flash_dq_o_13(13),
      IO => linear_flash_dq_io(13),
      O => linear_flash_dq_i_13(13),
      T => linear_flash_dq_t_13(13)
    );
linear_flash_dq_iobuf_14: component IOBUF
     port map (
      I => linear_flash_dq_o_14(14),
      IO => linear_flash_dq_io(14),
      O => linear_flash_dq_i_14(14),
      T => linear_flash_dq_t_14(14)
    );
linear_flash_dq_iobuf_15: component IOBUF
     port map (
      I => linear_flash_dq_o_15(15),
      IO => linear_flash_dq_io(15),
      O => linear_flash_dq_i_15(15),
      T => linear_flash_dq_t_15(15)
    );
linear_flash_dq_iobuf_2: component IOBUF
     port map (
      I => linear_flash_dq_o_2(2),
      IO => linear_flash_dq_io(2),
      O => linear_flash_dq_i_2(2),
      T => linear_flash_dq_t_2(2)
    );
linear_flash_dq_iobuf_3: component IOBUF
     port map (
      I => linear_flash_dq_o_3(3),
      IO => linear_flash_dq_io(3),
      O => linear_flash_dq_i_3(3),
      T => linear_flash_dq_t_3(3)
    );
linear_flash_dq_iobuf_4: component IOBUF
     port map (
      I => linear_flash_dq_o_4(4),
      IO => linear_flash_dq_io(4),
      O => linear_flash_dq_i_4(4),
      T => linear_flash_dq_t_4(4)
    );
linear_flash_dq_iobuf_5: component IOBUF
     port map (
      I => linear_flash_dq_o_5(5),
      IO => linear_flash_dq_io(5),
      O => linear_flash_dq_i_5(5),
      T => linear_flash_dq_t_5(5)
    );
linear_flash_dq_iobuf_6: component IOBUF
     port map (
      I => linear_flash_dq_o_6(6),
      IO => linear_flash_dq_io(6),
      O => linear_flash_dq_i_6(6),
      T => linear_flash_dq_t_6(6)
    );
linear_flash_dq_iobuf_7: component IOBUF
     port map (
      I => linear_flash_dq_o_7(7),
      IO => linear_flash_dq_io(7),
      O => linear_flash_dq_i_7(7),
      T => linear_flash_dq_t_7(7)
    );
linear_flash_dq_iobuf_8: component IOBUF
     port map (
      I => linear_flash_dq_o_8(8),
      IO => linear_flash_dq_io(8),
      O => linear_flash_dq_i_8(8),
      T => linear_flash_dq_t_8(8)
    );
linear_flash_dq_iobuf_9: component IOBUF
     port map (
      I => linear_flash_dq_o_9(9),
      IO => linear_flash_dq_io(9),
      O => linear_flash_dq_i_9(9),
      T => linear_flash_dq_t_9(9)
    );
mb_preset_i: component mb_preset
     port map (
      dip_switches_8bits_tri_i(7 downto 0) => dip_switches_8bits_tri_i(7 downto 0),
      iic_main_scl_i => iic_main_scl_i,
      iic_main_scl_o => iic_main_scl_o,
      iic_main_scl_t => iic_main_scl_t,
      iic_main_sda_i => iic_main_sda_i,
      iic_main_sda_o => iic_main_sda_o,
      iic_main_sda_t => iic_main_sda_t,
      lcd_7bits_tri_o(6 downto 0) => lcd_7bits_tri_o(6 downto 0),
      led_8bits_tri_o(7 downto 0) => led_8bits_tri_o(7 downto 0),
      linear_flash_addr(26 downto 1) => linear_flash_addr(26 downto 1),
      linear_flash_adv_ldn => linear_flash_adv_ldn,
      linear_flash_ce_n => linear_flash_ce_n,
      linear_flash_dq_i(15) => linear_flash_dq_i_15(15),
      linear_flash_dq_i(14) => linear_flash_dq_i_14(14),
      linear_flash_dq_i(13) => linear_flash_dq_i_13(13),
      linear_flash_dq_i(12) => linear_flash_dq_i_12(12),
      linear_flash_dq_i(11) => linear_flash_dq_i_11(11),
      linear_flash_dq_i(10) => linear_flash_dq_i_10(10),
      linear_flash_dq_i(9) => linear_flash_dq_i_9(9),
      linear_flash_dq_i(8) => linear_flash_dq_i_8(8),
      linear_flash_dq_i(7) => linear_flash_dq_i_7(7),
      linear_flash_dq_i(6) => linear_flash_dq_i_6(6),
      linear_flash_dq_i(5) => linear_flash_dq_i_5(5),
      linear_flash_dq_i(4) => linear_flash_dq_i_4(4),
      linear_flash_dq_i(3) => linear_flash_dq_i_3(3),
      linear_flash_dq_i(2) => linear_flash_dq_i_2(2),
      linear_flash_dq_i(1) => linear_flash_dq_i_1(1),
      linear_flash_dq_i(0) => linear_flash_dq_i_0(0),
      linear_flash_dq_o(15) => linear_flash_dq_o_15(15),
      linear_flash_dq_o(14) => linear_flash_dq_o_14(14),
      linear_flash_dq_o(13) => linear_flash_dq_o_13(13),
      linear_flash_dq_o(12) => linear_flash_dq_o_12(12),
      linear_flash_dq_o(11) => linear_flash_dq_o_11(11),
      linear_flash_dq_o(10) => linear_flash_dq_o_10(10),
      linear_flash_dq_o(9) => linear_flash_dq_o_9(9),
      linear_flash_dq_o(8) => linear_flash_dq_o_8(8),
      linear_flash_dq_o(7) => linear_flash_dq_o_7(7),
      linear_flash_dq_o(6) => linear_flash_dq_o_6(6),
      linear_flash_dq_o(5) => linear_flash_dq_o_5(5),
      linear_flash_dq_o(4) => linear_flash_dq_o_4(4),
      linear_flash_dq_o(3) => linear_flash_dq_o_3(3),
      linear_flash_dq_o(2) => linear_flash_dq_o_2(2),
      linear_flash_dq_o(1) => linear_flash_dq_o_1(1),
      linear_flash_dq_o(0) => linear_flash_dq_o_0(0),
      linear_flash_dq_t(15) => linear_flash_dq_t_15(15),
      linear_flash_dq_t(14) => linear_flash_dq_t_14(14),
      linear_flash_dq_t(13) => linear_flash_dq_t_13(13),
      linear_flash_dq_t(12) => linear_flash_dq_t_12(12),
      linear_flash_dq_t(11) => linear_flash_dq_t_11(11),
      linear_flash_dq_t(10) => linear_flash_dq_t_10(10),
      linear_flash_dq_t(9) => linear_flash_dq_t_9(9),
      linear_flash_dq_t(8) => linear_flash_dq_t_8(8),
      linear_flash_dq_t(7) => linear_flash_dq_t_7(7),
      linear_flash_dq_t(6) => linear_flash_dq_t_6(6),
      linear_flash_dq_t(5) => linear_flash_dq_t_5(5),
      linear_flash_dq_t(4) => linear_flash_dq_t_4(4),
      linear_flash_dq_t(3) => linear_flash_dq_t_3(3),
      linear_flash_dq_t(2) => linear_flash_dq_t_2(2),
      linear_flash_dq_t(1) => linear_flash_dq_t_1(1),
      linear_flash_dq_t(0) => linear_flash_dq_t_0(0),
      linear_flash_oen => linear_flash_oen,
      linear_flash_wen => linear_flash_wen,
      pcie_mgt_rxn(3 downto 0) => pcie_mgt_rxn(3 downto 0),
      pcie_mgt_rxp(3 downto 0) => pcie_mgt_rxp(3 downto 0),
      pcie_mgt_txn(3 downto 0) => pcie_mgt_txn(3 downto 0),
      pcie_mgt_txp(3 downto 0) => pcie_mgt_txp(3 downto 0),
      pcie_ref_clk_n(0) => pcie_ref_clk_n(0),
      pcie_ref_clk_p(0) => pcie_ref_clk_p(0),
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0),
      reset => reset,
      rotary_switch_tri_i(2 downto 0) => rotary_switch_tri_i(2 downto 0),
      rs232_uart_rxd => rs232_uart_rxd,
      rs232_uart_txd => rs232_uart_txd,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
end STRUCTURE;
