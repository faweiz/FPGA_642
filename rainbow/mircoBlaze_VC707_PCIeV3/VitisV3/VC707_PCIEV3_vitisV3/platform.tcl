# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Tony\Downloads\RainbowGhost\Code\mircoBlaze_VC707_PCIeV3\VitisV3\VC707_PCIEV3_vitisV3\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Tony\Downloads\RainbowGhost\Code\mircoBlaze_VC707_PCIeV3\VitisV3\VC707_PCIEV3_vitisV3\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {VC707_PCIEV3_vitisV3}\
-hw {D:\Tony\Downloads\RainbowGhost\Code\mircoBlaze_VC707_PCIeV3\mb_preset_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {D:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV3/VitisV3}

platform write
platform generate -domains 
platform active {VC707_PCIEV3_vitisV3}
bsp reload
platform generate
platform write
