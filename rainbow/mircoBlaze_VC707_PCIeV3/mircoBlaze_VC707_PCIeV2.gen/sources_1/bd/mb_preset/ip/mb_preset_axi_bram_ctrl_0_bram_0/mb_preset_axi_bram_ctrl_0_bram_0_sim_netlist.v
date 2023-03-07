// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 18 02:13:27 2023
// Host        : Tony-VPI4CJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV2/mircoBlaze_VC707_PCIeV2.gen/sources_1/bd/mb_preset/ip/mb_preset_axi_bram_ctrl_0_bram_0/mb_preset_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : mb_preset_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_preset_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mb_preset_axi_bram_ctrl_0_bram_0
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
  mb_preset_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 60016)
`pragma protect data_block
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
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
