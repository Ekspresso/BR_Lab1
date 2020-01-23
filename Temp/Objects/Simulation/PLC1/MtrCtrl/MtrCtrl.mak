UnmarkedObjectFolder := C:/projects/KRBO-02-15/SZV/L1/Lab1/Logical/Libraries/MtrCtrl
MarkedObjectFolder := C:/projects/KRBO-02-15/SZV/L1/Lab1/Logical/Libraries/MtrCtrl

$(AS_CPU_PATH)/MtrCtrl.br: \
	$(AS_PROJECT_PATH)\Logical\Libraries\MtrCtrl\ANSIC.lby \
	$(AS_CPU_PATH)/MtrCtrl/MtrCtrl.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/MtrCtrl/MtrCtrl.ox" -o "$(AS_CPU_PATH)/MtrCtrl.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B M4.01 -extConstants -r Library -R "A new source library"  -s Libraries.MtrCtrl -L "AsIecCon: V*, astime: V*, MtrCtrl: V*, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/MtrCtrl/MtrCtrl.ox: \
	$(AS_CPU_PATH)/MtrCtrl/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/MtrCtrl/a.out" -o "$(AS_CPU_PATH)/MtrCtrl/MtrCtrl.ox" -T SG4 -r Library   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/MtrCtrl/a.out: \
	$(AS_CPU_PATH)/MtrCtrl/FB_Integrator.o \
	$(AS_CPU_PATH)/MtrCtrl/FB_Motor.o \
	$(AS_CPU_PATH)/MtrCtrl/FB_Controller.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/MtrCtrl/a.out" "$(AS_CPU_PATH)/MtrCtrl/FB_Integrator.o" "$(AS_CPU_PATH)/MtrCtrl/FB_Motor.o" "$(AS_CPU_PATH)/MtrCtrl/FB_Controller.o"  -G V4.1.2  "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libastime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libOperator.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/M0401/SG4/libRuntime.a" -specs=I386specs -Wl,-q,-T,SG4.x -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MtrCtrl/FB_Integrator.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Integrator.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/MtrCtrl.fun \
	$(AS_TEMP_PATH)/Includes/MtrCtrl.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Integrator.c" -o "$(AS_CPU_PATH)/MtrCtrl/FB_Integrator.o"  -T SG4  -B M4.01 -G V4.1.2  -s Libraries.MtrCtrl -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h"  -trigraphs -fno-asm -D _MTRCTRL_EXPORT -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MtrCtrl/FB_Motor.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Motor.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/MtrCtrl.fun \
	$(AS_TEMP_PATH)/Includes/MtrCtrl.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Motor.c" -o "$(AS_CPU_PATH)/MtrCtrl/FB_Motor.o"  -T SG4  -B M4.01 -G V4.1.2  -s Libraries.MtrCtrl -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h"  -trigraphs -fno-asm -D _MTRCTRL_EXPORT -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/MtrCtrl/FB_Controller.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Controller.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/MtrCtrl.fun \
	$(AS_TEMP_PATH)/Includes/MtrCtrl.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl/FB_Controller.c" -o "$(AS_CPU_PATH)/MtrCtrl/FB_Controller.o"  -T SG4  -B M4.01 -G V4.1.2  -s Libraries.MtrCtrl -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes/Libraries/MtrCtrl" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h"  -trigraphs -fno-asm -D _MTRCTRL_EXPORT -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

