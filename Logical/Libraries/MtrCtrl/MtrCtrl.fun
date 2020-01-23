(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: MtrCtrl
 * File: MtrCtrl.fun
 * Author: admin
 * Created: October 16, 2018
 ********************************************************************
 * Functions and function blocks of library MtrCtrl
 ********************************************************************)

FUNCTION_BLOCK FB_Motor (*TODO: Add your comment here*)
	VAR_INPUT
		U : REAL;
	END_VAR
	VAR_OUTPUT
		W : REAL;
		Phi : REAL;
	END_VAR
	VAR
		Tm : REAL;
		Ke : REAL;
		Dt : REAL;
		Integrator : FB_Integrator;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator (*TODO: Add your comment here*)
	VAR_INPUT
		In : REAL;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
	END_VAR
	VAR
		Dt : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Controller (*TODO: Add your comment here*)
	VAR_INPUT
		E : REAL;
	END_VAR
	VAR_OUTPUT
		U : REAL;
	END_VAR
	VAR
		k_p : REAL;
		k_i : REAL;
		Integrator : FB_Integrator;
		iyOld : REAL;
		max_abs_value : REAL;
		Dt : REAL;
		abs_in_1 : REAL;
		abs_out_1 : REAL;
		abs_in_2 : REAL;
	END_VAR
END_FUNCTION_BLOCK
