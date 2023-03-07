// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 18 02:13:25 2023
// Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_preset_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : mb_preset_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_preset_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59856)
`pragma protect data_block
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
cd+6Pueg
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
