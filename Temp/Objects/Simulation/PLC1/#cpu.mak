export AS_PLC := PLC1
export AS_CPU_PATH := $(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)
export AS_CPU_PATH_2 := C:/projects/KRBO-02-15/Shelchkov/Lab1/Temp//Objects/$(AS_CONFIGURATION)/$(AS_PLC)
export AS_ACTIVE_CONFIG_PATH := $(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)
export AS_STATIC_ARCHIVES_PATH := C:/projects/KRBO-02-15/Shelchkov/Lab1/Temp//Archives/$(AS_CONFIGURATION)/$(AS_PLC)
export WIN32_AS_CPU_PATH := $(WIN32_AS_TEMP_PATH)\Objects\$(AS_CONFIGURATION)\$(AS_PLC)
export WIN32_AS_ACTIVE_CONFIG_PATH := $(WIN32_AS_PROJECT_PATH)\Physical\$(AS_CONFIGURATION)\$(AS_PLC)


CpuMakeFile: \
$(AS_CPU_PATH)/ashwd.br \
$(AS_CPU_PATH)/asfw.br \
$(AS_CPU_PATH)/sysconf.br \
$(AS_CPU_PATH)/arconfig.br \
$(AS_CPU_PATH)/MtrCtrl.br \
$(AS_CPU_PATH)/Program1.br \
$(AS_CPU_PATH)/iomap.br \
$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst


$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst: \
	$(AS_CPU_PATH)/ashwd.br \
	$(AS_CPU_PATH)/asfw.br \
	$(AS_CPU_PATH)/sysconf.br \
	$(AS_CPU_PATH)/arconfig.br \
	$(AS_CPU_PATH)/MtrCtrl.br \
	$(AS_CPU_PATH)/Program1.br \
	$(AS_CPU_PATH)/iomap.br \
	$(AS_PROJECT_PATH)/Physical/Simulation/PLC1/Cpu.sw
	@"$(AS_BIN_PATH)/BR.AS.FinalizeBuild.exe" "$(AS_PROJECT_PATH)/Lab1.apj" -t "$(AS_TEMP_PATH)" -o "$(AS_BINARIES_PATH)" -c "$(AS_CONFIGURATION)" -i "C:/BrAutomation/AS30090" -S PLC1  -pil   -C "/RT=1000 /DAIP=10.0.1.10 /REPO=11159 /ANSL=1" -D "/IF=tcpip /LOPO=11159 /SA=23"

#nothing to do (just call module make files)

include $(AS_CPU_PATH)/iomap/iomap.mak
include $(AS_CPU_PATH)/Program1/Program1.mak
include $(AS_CPU_PATH)/MtrCtrl/MtrCtrl.mak
include $(AS_CPU_PATH)/arconfig/arconfig.mak
include $(AS_CPU_PATH)/sysconf/sysconf.mak
include $(AS_CPU_PATH)/AsFw/AsFw.mak
include $(AS_CPU_PATH)/AsHwd/AsHwd.mak

.DEFAULT:
#nothing to do (need this target for prerequisite files that don't exit)

FORCE:
