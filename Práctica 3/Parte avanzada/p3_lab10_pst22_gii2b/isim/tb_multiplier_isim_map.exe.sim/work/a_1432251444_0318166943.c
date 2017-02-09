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
static const char *ng0 = "F:/p3_lab10_pst22_gii2b/tb_multiplier_new.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1432251444_0318166943_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (5 * 1000LL);
    t8 = (t0 + 4192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(63, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3120);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_1432251444_0318166943_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t7 = (250 * 1000LL);
    t2 = (t0 + 3368);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t7 = (1500 * 1000LL);
    t2 = (t0 + 3368);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1432251444_0318166943_p_2(char *t0)
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

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t3 = xsi_vhdl_pow(2, 5);
    t4 = (t3 - 1);
    t2 = (t0 + 6716);
    *((int *)t2) = 0;
    t5 = (t0 + 6720);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB4:    if (t6 <= t7)
        goto LAB5;

LAB7:    xsi_set_current_line(93, ng0);

LAB32:    *((char **)t1) = &&LAB33;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng0);
    t8 = xsi_vhdl_pow(2, 5);
    t9 = (t8 - 1);
    t10 = (t0 + 6724);
    *((int *)t10) = 0;
    t11 = (t0 + 6728);
    *((int *)t11) = t9;
    t12 = 0;
    t13 = t9;

LAB8:    if (t12 <= t13)
        goto LAB9;

LAB11:
LAB6:    t2 = (t0 + 6716);
    t6 = *((int *)t2);
    t5 = (t0 + 6720);
    t7 = *((int *)t5);
    if (t6 == t7)
        goto LAB7;

LAB29:    t3 = (t6 + 1);
    t6 = t3;
    t10 = (t0 + 6716);
    *((int *)t10) = t6;
    goto LAB4;

LAB9:    xsi_set_current_line(84, ng0);
    t15 = (t0 + 6716);
    t16 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t15), 5);
    t17 = (t0 + 4320);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 5U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6724);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, *((int *)t2), 5);
    t10 = (t0 + 4384);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 5U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6716);
    t5 = (t0 + 6724);
    t3 = *((int *)t2);
    t4 = *((int *)t5);
    t8 = (t3 * t4);
    t9 = (2 * 5);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t14, t8, t9);
    t11 = (t0 + 2088U);
    t15 = *((char **)t11);
    t11 = (t15 + 0);
    t16 = (t14 + 12U);
    t22 = *((unsigned int *)t16);
    t22 = (t22 * 1U);
    memcpy(t11, t10, t22);
    xsi_set_current_line(87, ng0);
    t23 = (100 * 1000LL);
    t2 = (t0 + 3616);
    xsi_process_wait(t2, t23);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 6724);
    t12 = *((int *)t2);
    t5 = (t0 + 6728);
    t13 = *((int *)t5);
    if (t12 == t13)
        goto LAB11;

LAB28:    t3 = (t12 + 1);
    t12 = t3;
    t10 = (t0 + 6724);
    *((int *)t10) = t12;
    goto LAB8;

LAB12:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2088U);
    t5 = *((char **)t2);
    t2 = (t0 + 1672U);
    t10 = *((char **)t2);
    t24 = 1;
    if (10U == 10U)
        goto LAB18;

LAB19:    t24 = 0;

LAB20:    if (t24 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(90, ng0);
    t23 = (1 * 1000LL);
    t2 = (t0 + 3616);
    xsi_process_wait(t2, t23);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t15 = (t0 + 6732);
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
	static char *pe[] = {(void *)work_a_1432251444_0318166943_p_0,(void *)work_a_1432251444_0318166943_p_1,(void *)work_a_1432251444_0318166943_p_2};
	xsi_register_didat("work_a_1432251444_0318166943", "isim/tb_multiplier_isim_map.exe.sim/work/a_1432251444_0318166943.didat");
	xsi_register_executes(pe);
}
