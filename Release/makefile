################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include config/subdir.mk
-include Peripherals/src/subdir.mk
-include Peripherals/subdir.mk
-include Middle/subdir.mk
-include Driver/subdir.mk
-include BSP/subdir.mk
-include subdir.mk
-include objects.mk

-include $(C_DEPS)

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := KF32F330_EVAL
BUILD_ARTIFACT_EXTENSION := hex
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
OBJCOPY_TARGET += \
KF32F330_EVAL.s19 \

OBJDUMP_LIST += \
KF32F330_EVAL.lst \


LD_SRCS = D:/ResearchSoftware/KungFu32/ChipONCC32/ccr1_issue/scripting/KF32F330KQT.ld

EXECUTABLES = KF32F330_EVAL.hex

# All Target
all: main-build

# Main-build Target
main-build: KF32F330_EVAL.hex secondary-outputs

# Tool invocations
KF32F330_EVAL.hex: $(OBJS) $(USER_RELS) $(LD_SRCS) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
#	@echo 'Invoking: C Project Linker Release'
	@kf32-ld @"objects.list" $(USER_RELS) $(LIBS) -L"D:/ResearchSoftware/KungFu32/ChipONCC32/ccr1_issue/lib" -L"E:\KF_Workspace\Project_WorkSpace\KF32F330_EVAL" -lIQmath-R1 -lSeriesDIServices -lmath -lio -lstring -lstdlib -lctype -lcrtv1 -T"D:/ResearchSoftware/KungFu32/ChipONCC32/ccr1_issue/scripting/KF32F330KQT.ld" --gc-sections --kf32-autoihex --kf32-arch=kf32r --kf32-nodisassemble --with-checksum-fill=0xFF -o  "KF32F330_EVAL.elf" -Map "KF32F330_EVAL.map"
	@echo 'Finished building target: $@'
#	@echo ' '

KF32F330_EVAL.s19: $(EXECUTABLES) $(USER_RELS) $(LD_SRCS) makefile objects.list $(OPTIONAL_TOOL_DEPS)
#	@echo 'Invoking: ChipON ObjCopy'
	@kf32-objcopy -O srec --srec-len 16 --srec-forceS3 "KF32F330_EVAL.elf"   "KF32F330_EVAL.s19"
	@echo 'Finished building: $@'
#	@echo ' '

KF32F330_EVAL.lst: $(EXECUTABLES) $(USER_RELS) $(LD_SRCS) makefile objects.list $(OPTIONAL_TOOL_DEPS)
#	@echo 'Invoking: ChipON ObjDump'
	@kf32-objdump -S -l --section=.text --section=.data --section=.bss --kf32-arch=kf32r "KF32F330_EVAL.elf"  > "KF32F330_EVAL.lst"
	@echo 'Finished building: $@'
#	@echo ' '

# Other Targets
clean:
	-$(RM) KF32F330_EVAL.hex '$(basename $(OBJDUMP_LIST)).lst' '$(basename $(OBJCOPY_TARGET)).hex'  '$(basename $(OBJCOPY_TARGET)).bin'  '$(basename $(OBJCOPY_TARGET)).s19' '$(basename $(OBJCOPY_TARGET)).map'
#	-@echo ' '

secondary-outputs: $(OBJDUMP_LIST) $(OBJCOPY_TARGET)

.PHONY: all clean dependents
.SECONDARY: main-build

-include ../makefile.targets
