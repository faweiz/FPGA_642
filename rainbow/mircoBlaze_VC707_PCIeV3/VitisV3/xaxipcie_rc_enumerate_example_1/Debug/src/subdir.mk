################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/xaxipcie_rc_enumerate_example.c 

OBJS += \
./src/xaxipcie_rc_enumerate_example.o 

C_DEPS += \
./src/xaxipcie_rc_enumerate_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -ID:/Tony/Downloads/RainbowGhost/Code/mircoBlaze_VC707_PCIeV3/VitisV3/VC707_PCIEV3_vitisV3/export/VC707_PCIEV3_vitisV3/sw/VC707_PCIEV3_vitisV3/standalone_domain/bspinclude/include -mno-xl-reorder -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v11.0 -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


