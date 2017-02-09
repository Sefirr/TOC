/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/hlocal/TOC/p3_lab10_pst22_gii2b/tb_multiplier.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1432251444_0318166943_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int64 t23;
    unsigned char t24;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t3 = xsi_vhdl_pow(2, 5);
    t4 = (t3 - 1);
    t2 = (t0 + 5524);
    *((int *)t2) = 0;
    t5 = (t0 + 5528);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB4:    if (t6 <= t7)
        goto LAB5;

LAB7:    xsi_set_current_line(72, ng0);

LAB32:    *((char **)t1) = &&LAB33;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t8 = xsi_vhdl_pow(2, 5);
    t9 = (t8 - 1);
    t10 = (t0 + 5532);
    *((int *)t10) = 0;
    t11 = (t0 + 5536);
    *((int *)t11) = t9;
    t12 = 0;
    t13 = t9;

LAB8:    if (t12 <= t13)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 5524);
    t6 = *((int *)t2);
    t5 = (t0 + 5528);
    t7 = *((int *)t5);
    if (t6 == t7)
        goto LAB7;

LAB29:    t3 = (t6 + 1);
    t6 = t3;
    t10 = (t0 + 5524);
    *((int *)t10) = t6;
    goto LAB4;

LAB9:    xsi_set_current_line(63, ng0);
    t15 = (t0 + 5524);
    t16 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t15), 5);
    t17 = (t0 + 3376);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 5U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5532);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t2), 5);
    t10 = (t0 + 3440);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5524);
    t5 = (t0 + 5532);
    t3 = *((int *)t2);
    t4 = *((int *)t5);
    t8 = (t3 * t4);
    t9 = (2 * 5);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t8, t9);
    t11 = (t0 + 1768U);
    t15 = *((char **)t11);
    t11 = (t15 + 0);
    t16 = (t14 + 12U);
    t22 = *((unsigned int *)t16);
    t22 = (t22 * 1U);
    memcpy(t11, t10, t22);
    xsi_set_current_line(66, ng0);
    t23 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t23);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 5532);
    t12 = *((int *)t2);
    t5 = (t0 + 5536);
    t13 = *((int *)t5);
    if (t12 == t13)
        goto LAB11;

LAB28:    t3 = (t12 + 1);
    t12 = t3;
    t10 = (t0 + 5532);
    *((int *)t10) = t12;
    goto LAB8;

LAB12:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1768U);
    t5 = *((char **)t2);
    t2 = (t0 + 1352U);
    t10 = *((char **)t2);
    t24 = 1;
    if (10U == 10U)
        goto LAB18;

LAB19:    t24 = 0;

LAB20:    if (t24 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(69, ng0);
    t23 = (1 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t23);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t15 = (t0 + 5540);
    xsi_report(t15, 48U, (unsigned char)2);
    goto LAB17;

LAB18:    t22 = 0;

LAB21:    if (t22 < 10U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t2 = (t5 + t22);
    t11 = (t10 + t22);
    if (*((unsigned char *)t2) != *((unsigned char *)t11))
        goto LAB19;

LAB23:    t22 = (t22 + 1);
    goto LAB21;

LAB24:    goto LAB10;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB30:    goto LAB2;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

}


extern void work_a_1432251444_0318166943_init()
{
	static char *pe[] = {(void *)work_a_1432251444_0318166943_p_0};
	xsi_register_didat("work_a_1432251444_0318166943", "isim/tb_multiplier_isim_beh.exe.sim/work/a_1432251444_0318166943.didat");
	xsi_register_executes(pe);
}
