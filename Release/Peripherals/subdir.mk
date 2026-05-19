################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Peripherals/system_init.c 

OBJS += \
./Peripherals/system_init.o 

C_DEPS += \
./Peripherals/system_init.d 


# Each subdirectory must supply rules for building sources it contributes
Peripherals/%.o: ../Peripherals/%.c Peripherals/subdir.mk
	@echo 'Building file: $<'
#	@echo 'Invoking: C Compiler'
	-@mkdir -p "_static_code_analysis"
	@kf32-gcc  -MMD -MP -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Driver" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Peripherals" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\BSP" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Middle" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Peripherals\inc" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys" -save-temps=obj -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -ffunction-sections -fdata-sections -D"KF32F330KQT" -D"__RELEASE__" -Wreturn-type -Wno-packed-bitfield-compat -std=gnu99 -gdwarf-3 -O2 "$<" -o "$@"
	@echo 'Finished building: $<'
#	@echo ' '


clean: clean-Peripherals

clean-Peripherals:
	-$(RM) ./Peripherals/system_init.o ./Peripherals/system_init.d

.PHONY: clean-Peripherals

