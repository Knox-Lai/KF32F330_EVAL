################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Driver/delay.c \
../Driver/error_code.c \
../Driver/flash_eeprom.c \
../Driver/md5.c \
../Driver/ota_app.c \
../Driver/ota_boot.c 

OBJS += \
./Driver/delay.o \
./Driver/error_code.o \
./Driver/flash_eeprom.o \
./Driver/md5.o \
./Driver/ota_app.o \
./Driver/ota_boot.o 

C_DEPS += \
./Driver/delay.d \
./Driver/error_code.d \
./Driver/flash_eeprom.d \
./Driver/md5.d \
./Driver/ota_app.d \
./Driver/ota_boot.d 


# Each subdirectory must supply rules for building sources it contributes
Driver/%.o: ../Driver/%.c Driver/subdir.mk
	@echo 'Building file: $<'
#	@echo 'Invoking: C Compiler'
	-@mkdir -p "_static_code_analysis"
	@kf32-gcc  -MMD -MP -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Driver" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Peripherals" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\BSP" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Middle" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL\Peripherals\inc" -I"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys" -save-temps=obj -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -ffunction-sections -fdata-sections -D"KF32F330KQT" -D"__RELEASE__" -Wreturn-type -Wno-packed-bitfield-compat -std=gnu99 -gdwarf-3 -O2 "$<" -o "$@"
	@echo 'Finished building: $<'
#	@echo ' '


clean: clean-Driver

clean-Driver:
	-$(RM) ./Driver/delay.o ./Driver/error_code.o ./Driver/flash_eeprom.o ./Driver/md5.o ./Driver/ota_app.o ./Driver/ota_boot.o ./Driver/delay.d ./Driver/error_code.d ./Driver/flash_eeprom.d ./Driver/md5.d ./Driver/ota_app.d ./Driver/ota_boot.d

.PHONY: clean-Driver

