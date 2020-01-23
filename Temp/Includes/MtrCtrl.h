/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _MTRCTRL_
#define _MTRCTRL_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct FB_Integrator
{
	/* VAR_INPUT (analog) */
	float In;
	/* VAR_OUTPUT (analog) */
	float Out;
	/* VAR (analog) */
	float Dt;
} FB_Integrator_typ;

typedef struct FB_Motor
{
	/* VAR_INPUT (analog) */
	float U;
	/* VAR_OUTPUT (analog) */
	float W;
	float Phi;
	/* VAR (analog) */
	float Tm;
	float Ke;
	float Dt;
	struct FB_Integrator Integrator;
} FB_Motor_typ;

typedef struct FB_Controller
{
	/* VAR_INPUT (analog) */
	float E;
	/* VAR_OUTPUT (analog) */
	float U;
	/* VAR (analog) */
	float k_p;
	float k_i;
	struct FB_Integrator Integrator;
	float iyOld;
	float max_abs_value;
	float Dt;
	float abs_in_1;
	float abs_out_1;
	float abs_in_2;
} FB_Controller_typ;



/* Prototyping of functions and function blocks */
void FB_Motor(struct FB_Motor* inst);
void FB_Integrator(struct FB_Integrator* inst);
void FB_Controller(struct FB_Controller* inst);


#ifdef __cplusplus
};
#endif
#endif /* _MTRCTRL_ */

