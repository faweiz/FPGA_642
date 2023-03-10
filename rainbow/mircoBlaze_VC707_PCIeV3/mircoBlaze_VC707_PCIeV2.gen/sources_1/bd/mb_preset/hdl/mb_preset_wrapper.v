//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Feb 18 01:46:15 2023
//Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
//Command     : generate_target mb_preset_wrapper.bd
//Design      : mb_preset_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_preset_wrapper
   (dip_switches_8bits_tri_i,
    iic_main_scl_io,
    iic_main_sda_io,
    lcd_7bits_tri_o,
    led_8bits_tri_o,
    linear_flash_addr,
    linear_flash_adv_ldn,
    linear_flash_ce_n,
    linear_flash_dq_io,
    linear_flash_oen,
    linear_flash_wen,
    push_buttons_5bits_tri_i,
    reset,
    rotary_switch_tri_i,
    rs232_uart_rxd,
    rs232_uart_txd,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input [7:0]dip_switches_8bits_tri_i;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  output [6:0]lcd_7bits_tri_o;
  output [7:0]led_8bits_tri_o;
  output [26:1]linear_flash_addr;
  output linear_flash_adv_ldn;
  output linear_flash_ce_n;
  inout [15:0]linear_flash_dq_io;
  output linear_flash_oen;
  output linear_flash_wen;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  input [2:0]rotary_switch_tri_i;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire [7:0]dip_switches_8bits_tri_i;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire [6:0]lcd_7bits_tri_o;
  wire [7:0]led_8bits_tri_o;
  wire [26:1]linear_flash_addr;
  wire linear_flash_adv_ldn;
  wire linear_flash_ce_n;
  wire [0:0]linear_flash_dq_i_0;
  wire [1:1]linear_flash_dq_i_1;
  wire [10:10]linear_flash_dq_i_10;
  wire [11:11]linear_flash_dq_i_11;
  wire [12:12]linear_flash_dq_i_12;
  wire [13:13]linear_flash_dq_i_13;
  wire [14:14]linear_flash_dq_i_14;
  wire [15:15]linear_flash_dq_i_15;
  wire [2:2]linear_flash_dq_i_2;
  wire [3:3]linear_flash_dq_i_3;
  wire [4:4]linear_flash_dq_i_4;
  wire [5:5]linear_flash_dq_i_5;
  wire [6:6]linear_flash_dq_i_6;
  wire [7:7]linear_flash_dq_i_7;
  wire [8:8]linear_flash_dq_i_8;
  wire [9:9]linear_flash_dq_i_9;
  wire [0:0]linear_flash_dq_io_0;
  wire [1:1]linear_flash_dq_io_1;
  wire [10:10]linear_flash_dq_io_10;
  wire [11:11]linear_flash_dq_io_11;
  wire [12:12]linear_flash_dq_io_12;
  wire [13:13]linear_flash_dq_io_13;
  wire [14:14]linear_flash_dq_io_14;
  wire [15:15]linear_flash_dq_io_15;
  wire [2:2]linear_flash_dq_io_2;
  wire [3:3]linear_flash_dq_io_3;
  wire [4:4]linear_flash_dq_io_4;
  wire [5:5]linear_flash_dq_io_5;
  wire [6:6]linear_flash_dq_io_6;
  wire [7:7]linear_flash_dq_io_7;
  wire [8:8]linear_flash_dq_io_8;
  wire [9:9]linear_flash_dq_io_9;
  wire [0:0]linear_flash_dq_o_0;
  wire [1:1]linear_flash_dq_o_1;
  wire [10:10]linear_flash_dq_o_10;
  wire [11:11]linear_flash_dq_o_11;
  wire [12:12]linear_flash_dq_o_12;
  wire [13:13]linear_flash_dq_o_13;
  wire [14:14]linear_flash_dq_o_14;
  wire [15:15]linear_flash_dq_o_15;
  wire [2:2]linear_flash_dq_o_2;
  wire [3:3]linear_flash_dq_o_3;
  wire [4:4]linear_flash_dq_o_4;
  wire [5:5]linear_flash_dq_o_5;
  wire [6:6]linear_flash_dq_o_6;
  wire [7:7]linear_flash_dq_o_7;
  wire [8:8]linear_flash_dq_o_8;
  wire [9:9]linear_flash_dq_o_9;
  wire [0:0]linear_flash_dq_t_0;
  wire [1:1]linear_flash_dq_t_1;
  wire [10:10]linear_flash_dq_t_10;
  wire [11:11]linear_flash_dq_t_11;
  wire [12:12]linear_flash_dq_t_12;
  wire [13:13]linear_flash_dq_t_13;
  wire [14:14]linear_flash_dq_t_14;
  wire [15:15]linear_flash_dq_t_15;
  wire [2:2]linear_flash_dq_t_2;
  wire [3:3]linear_flash_dq_t_3;
  wire [4:4]linear_flash_dq_t_4;
  wire [5:5]linear_flash_dq_t_5;
  wire [6:6]linear_flash_dq_t_6;
  wire [7:7]linear_flash_dq_t_7;
  wire [8:8]linear_flash_dq_t_8;
  wire [9:9]linear_flash_dq_t_9;
  wire linear_flash_oen;
  wire linear_flash_wen;
  wire [4:0]push_buttons_5bits_tri_i;
  wire reset;
  wire [2:0]rotary_switch_tri_i;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF linear_flash_dq_iobuf_0
       (.I(linear_flash_dq_o_0),
        .IO(linear_flash_dq_io[0]),
        .O(linear_flash_dq_i_0),
        .T(linear_flash_dq_t_0));
  IOBUF linear_flash_dq_iobuf_1
       (.I(linear_flash_dq_o_1),
        .IO(linear_flash_dq_io[1]),
        .O(linear_flash_dq_i_1),
        .T(linear_flash_dq_t_1));
  IOBUF linear_flash_dq_iobuf_10
       (.I(linear_flash_dq_o_10),
        .IO(linear_flash_dq_io[10]),
        .O(linear_flash_dq_i_10),
        .T(linear_flash_dq_t_10));
  IOBUF linear_flash_dq_iobuf_11
       (.I(linear_flash_dq_o_11),
        .IO(linear_flash_dq_io[11]),
        .O(linear_flash_dq_i_11),
        .T(linear_flash_dq_t_11));
  IOBUF linear_flash_dq_iobuf_12
       (.I(linear_flash_dq_o_12),
        .IO(linear_flash_dq_io[12]),
        .O(linear_flash_dq_i_12),
        .T(linear_flash_dq_t_12));
  IOBUF linear_flash_dq_iobuf_13
       (.I(linear_flash_dq_o_13),
        .IO(linear_flash_dq_io[13]),
        .O(linear_flash_dq_i_13),
        .T(linear_flash_dq_t_13));
  IOBUF linear_flash_dq_iobuf_14
       (.I(linear_flash_dq_o_14),
        .IO(linear_flash_dq_io[14]),
        .O(linear_flash_dq_i_14),
        .T(linear_flash_dq_t_14));
  IOBUF linear_flash_dq_iobuf_15
       (.I(linear_flash_dq_o_15),
        .IO(linear_flash_dq_io[15]),
        .O(linear_flash_dq_i_15),
        .T(linear_flash_dq_t_15));
  IOBUF linear_flash_dq_iobuf_2
       (.I(linear_flash_dq_o_2),
        .IO(linear_flash_dq_io[2]),
        .O(linear_flash_dq_i_2),
        .T(linear_flash_dq_t_2));
  IOBUF linear_flash_dq_iobuf_3
       (.I(linear_flash_dq_o_3),
        .IO(linear_flash_dq_io[3]),
        .O(linear_flash_dq_i_3),
        .T(linear_flash_dq_t_3));
  IOBUF linear_flash_dq_iobuf_4
       (.I(linear_flash_dq_o_4),
        .IO(linear_flash_dq_io[4]),
        .O(linear_flash_dq_i_4),
        .T(linear_flash_dq_t_4));
  IOBUF linear_flash_dq_iobuf_5
       (.I(linear_flash_dq_o_5),
        .IO(linear_flash_dq_io[5]),
        .O(linear_flash_dq_i_5),
        .T(linear_flash_dq_t_5));
  IOBUF linear_flash_dq_iobuf_6
       (.I(linear_flash_dq_o_6),
        .IO(linear_flash_dq_io[6]),
        .O(linear_flash_dq_i_6),
        .T(linear_flash_dq_t_6));
  IOBUF linear_flash_dq_iobuf_7
       (.I(linear_flash_dq_o_7),
        .IO(linear_flash_dq_io[7]),
        .O(linear_flash_dq_i_7),
        .T(linear_flash_dq_t_7));
  IOBUF linear_flash_dq_iobuf_8
       (.I(linear_flash_dq_o_8),
        .IO(linear_flash_dq_io[8]),
        .O(linear_flash_dq_i_8),
        .T(linear_flash_dq_t_8));
  IOBUF linear_flash_dq_iobuf_9
       (.I(linear_flash_dq_o_9),
        .IO(linear_flash_dq_io[9]),
        .O(linear_flash_dq_i_9),
        .T(linear_flash_dq_t_9));
  mb_preset mb_preset_i
       (.dip_switches_8bits_tri_i(dip_switches_8bits_tri_i),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .lcd_7bits_tri_o(lcd_7bits_tri_o),
        .led_8bits_tri_o(led_8bits_tri_o),
        .linear_flash_addr(linear_flash_addr),
        .linear_flash_adv_ldn(linear_flash_adv_ldn),
        .linear_flash_ce_n(linear_flash_ce_n),
        .linear_flash_dq_i({linear_flash_dq_i_15,linear_flash_dq_i_14,linear_flash_dq_i_13,linear_flash_dq_i_12,linear_flash_dq_i_11,linear_flash_dq_i_10,linear_flash_dq_i_9,linear_flash_dq_i_8,linear_flash_dq_i_7,linear_flash_dq_i_6,linear_flash_dq_i_5,linear_flash_dq_i_4,linear_flash_dq_i_3,linear_flash_dq_i_2,linear_flash_dq_i_1,linear_flash_dq_i_0}),
        .linear_flash_dq_o({linear_flash_dq_o_15,linear_flash_dq_o_14,linear_flash_dq_o_13,linear_flash_dq_o_12,linear_flash_dq_o_11,linear_flash_dq_o_10,linear_flash_dq_o_9,linear_flash_dq_o_8,linear_flash_dq_o_7,linear_flash_dq_o_6,linear_flash_dq_o_5,linear_flash_dq_o_4,linear_flash_dq_o_3,linear_flash_dq_o_2,linear_flash_dq_o_1,linear_flash_dq_o_0}),
        .linear_flash_dq_t({linear_flash_dq_t_15,linear_flash_dq_t_14,linear_flash_dq_t_13,linear_flash_dq_t_12,linear_flash_dq_t_11,linear_flash_dq_t_10,linear_flash_dq_t_9,linear_flash_dq_t_8,linear_flash_dq_t_7,linear_flash_dq_t_6,linear_flash_dq_t_5,linear_flash_dq_t_4,linear_flash_dq_t_3,linear_flash_dq_t_2,linear_flash_dq_t_1,linear_flash_dq_t_0}),
        .linear_flash_oen(linear_flash_oen),
        .linear_flash_wen(linear_flash_wen),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(reset),
        .rotary_switch_tri_i(rotary_switch_tri_i),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
