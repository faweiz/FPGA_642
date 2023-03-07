# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Tony\Downloads\RainbowGhost\Code\mircoBlaze_VC707_PCIeV3\VitisV3\helloworld_system\_ide\scripts\debugger_helloworld-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Tony\Downloads\RainbowGhost\Code\mircoBlaze_VC707_PCIeV3\VitisV3\helloworld_system\_ide\scripts\debugger_helloworld-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203AF5A38A" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT1-210203AF5A38A-33687093-0"}
fpga -file D:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV3/VitisV3/helloworld/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV3/VitisV3/mb_preset_wrapper/export/mb_preset_wrapper/hw/mb_preset_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV3/VitisV3/helloworld/Debug/helloworld.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
