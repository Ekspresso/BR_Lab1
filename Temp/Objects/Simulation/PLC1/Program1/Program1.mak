UnmarkedObjectFolder := C:/projects/KRBO-02-15/SZV/L1/Lab1/Logical/Program1
MarkedObjectFolder := C:/projects/KRBO-02-15/SZV/L1/Lab1/Logical/Program1

$(AS_CPU_PATH)/Program1.br: \
	$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Cpu.per \
	$(AS_CPU_PATH)/Program1/Program1.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Program1/Program1.ox" -o "$(AS_CPU_PATH)/Program1.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B M4.01 -extConstants -r Cyclic1 -p 2 -s Program1 -L "AsIecCon: V*, astime: V*, MtrCtrl: V*, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Program1/Program1.ox: \
	$(AS_CPU_PATH)/Program1/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Program1/a.out" -o "$(AS_CPU_PATH)/Program1/Program1.ox" -T SG4 -r Cyclic1   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Program1/a.out: \
	$(AS_CPU_PATH)/Program1/Program1.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/Program1/a.out" "$(AS_CPU_PATH)/Program1/Program1.o"  -G V4.1.2  "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libastime.a" "-Wl,$(AS_TEMP_PATH)/Archives/SG4/libMtrCtrl.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libOperator.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libRuntime.a" -specs=I386specs -Wl,-q,-T,SG4.x -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Program1/Program1.o: \
	$(AS_PROJECT_PATH)/Logical/Program1/Program1.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/MtrCtrl.fun \
	$(AS_PROJECT_PATH)/Logical/Program1/Program1.var
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program1/Program1.c" -o "$(AS_CPU_PATH)/Program1/Program1.o"  -T SG4  -B M4.01 -G V4.1.2  -s Program1 -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/Program1" "$(AS_TEMP_PATH)/Includes/Program1" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

