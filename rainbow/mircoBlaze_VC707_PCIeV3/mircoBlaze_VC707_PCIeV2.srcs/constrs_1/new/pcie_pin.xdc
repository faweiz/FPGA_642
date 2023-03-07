#ddr pin xdc

#set_property -dict { PACKAGE_PIN E19  IOSTANDARD LVDS } [get_ports SYSCLK_clk_p]
#set_property -dict { PACKAGE_PIN E18  IOSTANDARD LVDS } [get_ports SYSCLK_clk_n]

# CPU Reset (Switch 8)
#set_property -dict { PACKAGE_PIN AV35  IOSTANDARD LVCMOS18 } [get_ports {reset}]; #need to add a gpio for reset
#set_property -dict {PACKAGE_PIN AV40 IOSTANDARD LVCMOS18} [get_ports {CPU_RESET}]

################################################################################
# PCI Express Edge Connector (x8)
################################################################################
# PCIe X1Y0 Block Location
# TX
set_property PACKAGE_PIN W2  [get_ports {pcie_mgt_txp[0]}];
set_property PACKAGE_PIN W1  [get_ports {pcie_mgt_txn[0]}];
set_property PACKAGE_PIN AA2 [get_ports {pcie_mgt_txp[1]}];
set_property PACKAGE_PIN AA1 [get_ports {pcie_mgt_txn[1]}];
set_property PACKAGE_PIN AC2 [get_ports {pcie_mgt_txp[2]}];
set_property PACKAGE_PIN AC1 [get_ports {pcie_mgt_txn[2]}];
set_property PACKAGE_PIN AE2 [get_ports {pcie_mgt_txp[3]}];
set_property PACKAGE_PIN AE1 [get_ports {pcie_mgt_txn[3]}];
# RX
set_property PACKAGE_PIN Y4  [get_ports {pcie_mgt_rxp[0]}];
set_property PACKAGE_PIN Y3  [get_ports {pcie_mgt_rxn[0]}];
set_property PACKAGE_PIN AA6 [get_ports {pcie_mgt_rxp[1]}];
set_property PACKAGE_PIN AA5 [get_ports {pcie_mgt_rxn[1]}];
set_property PACKAGE_PIN AB4 [get_ports {pcie_mgt_rxp[2]}];
set_property PACKAGE_PIN AB3 [get_ports {pcie_mgt_rxn[2]}];
set_property PACKAGE_PIN AC6 [get_ports {pcie_mgt_rxp[3]}];
set_property PACKAGE_PIN AC5 [get_ports {pcie_mgt_rxn[3]}];
# PCI Express reference clock 100MHz
set_property PACKAGE_PIN AB8  [get_ports {pcie_ref_clk_p}];
set_property PACKAGE_PIN AB7  [get_ports {pcie_ref_clk_n}];

################################################################################
# GPIO
################################################################################
# LEDs
#set_property -dict { PACKAGE_PIN AM39  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[0]}];
#set_property -dict { PACKAGE_PIN AN39  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[1]}];
#set_property -dict { PACKAGE_PIN AR37  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[2]}];
#set_property -dict { PACKAGE_PIN AT37  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[3]}];
#set_property -dict { PACKAGE_PIN AR35  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[4]}];
#set_property -dict { PACKAGE_PIN AP41  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[5]}];
#set_property -dict { PACKAGE_PIN AP42  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[6]}];
#set_property -dict { PACKAGE_PIN AU39  IOSTANDARD LVCMOS18 } [get_ports {led_tri_o[7]}];

## Pushbuttons
#set_property -dict { PACKAGE_PIN AR40  IOSTANDARD LVCMOS18 } [get_ports {btn_tri_i[0]}];
#set_property -dict { PACKAGE_PIN AU38  IOSTANDARD LVCMOS18 } [get_ports {btn_tri_i[1]}];
#set_property -dict { PACKAGE_PIN AP40  IOSTANDARD LVCMOS18 } [get_ports {btn_tri_i[2]}];
#set_property -dict { PACKAGE_PIN AV39  IOSTANDARD LVCMOS18 } [get_ports {btn_tri_i[3]}];
#set_property -dict { PACKAGE_PIN AW40  IOSTANDARD LVCMOS18 } [get_ports {btn_tri_i[4]}];


#bit compress spix4 speed up
#set_property BITSTREAM.GENERAL.COMPRESS true [current_design];

#set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
#set_property CONFIG_MODE BPI16 [current_design]
#set_property CFGBVS GND [current_design]
#set_property CONFIG_VOLTAGE 1.8 [current_design]



