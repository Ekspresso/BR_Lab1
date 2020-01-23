CYGWIN=nontsec
export PATH := C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_COMPANY_NAME :=  
export AS_USER_NAME := admin
export AS_PATH := C:/BrAutomation/AS30090
export AS_BIN_PATH := C:/BrAutomation/AS30090/Bin-en
export AS_PROJECT_PATH := C:/projects/KRBO-02-15/Shelchkov/Lab1
export AS_PROJECT_NAME := Lab1
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS30090/AS/VC
export AS_TEMP_PATH := C:/projects/KRBO-02-15/Shelchkov/Lab1/Temp
export AS_CONFIGURATION := Simulation
export AS_BINARIES_PATH := C:/projects/KRBO-02-15/Shelchkov/Lab1/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS30090/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS30090/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS30090
export WIN32_AS_PATH := C:\\BrAutomation\\AS30090
export WIN32_AS_BIN_PATH := C:\\BrAutomation\\AS30090\\Bin-en
export WIN32_AS_PROJECT_PATH := C:\\projects\\KRBO-02-15\\Shelchkov\\Lab1
export WIN32_AS_SYSTEM_PATH := C:\\BrAutomation\\AS\\System
export WIN32_AS_VC_PATH := C:\\BrAutomation\\AS30090\\AS\\VC
export WIN32_AS_TEMP_PATH := C:\\projects\\KRBO-02-15\\Shelchkov\\Lab1\\Temp
export WIN32_AS_BINARIES_PATH := C:\\projects\\KRBO-02-15\\Shelchkov\\Lab1\\Binaries
export WIN32_AS_GNU_INST_PATH := C:\\BrAutomation\\AS30090\\AS\\GnuInst\\V4.1.2
export WIN32_AS_GNU_BIN_PATH := $(WIN32_AS_GNU_INST_PATH)\\bin
export WIN32_AS_INSTALL_PATH := C:\\BrAutomation\\AS30090

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/Lab1.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "BuildAndTransfer"

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/projects/KRBO-02-15/Shelchkov/Lab1/Temp/Objects/$(AS_CONFIGURATION)/PLC1/#cpu.mak' -k

