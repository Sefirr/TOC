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
static const char *ng0 = "C:/hlocal/TOC/p5_lab10_pst22_gii2b/tb_sort.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1386156483_0318166943_p_0(char *t0)
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

LAB0:    t1 = (t0 + 3552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (5 * 1000LL);
    t8 = (t0 + 4544);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(68, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3360);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_1386156483_0318166943_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t7 = (250 * 1000LL);
    t2 = (t0 + 3608);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1386156483_0318166943_p_2(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    unsigned char t13;
    int t14;
    unsigned char t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4672);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4736);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 7252);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 7257);
    t4 = (t0 + 4864);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(87, ng0);
    t9 = (250 * 1000LL);
    t2 = (t0 + 3856);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 7261);
    *((int *)t2) = 0;
    t3 = (t0 + 7265);
    *((int *)t3) = 31;
    t10 = 0;
    t11 = 31;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4736);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);

LAB19:    t2 = (t0 + 4384);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(89, ng0);
    t4 = (t0 + 4736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 7261);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t12, *((int *)t2), 5);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 5U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 7261);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t12, *((int *)t2), 4);
    t4 = (t0 + 4864);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(92, ng0);

LAB14:    t2 = (t0 + 4368);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7261);
    t10 = *((int *)t2);
    t3 = (t0 + 7265);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB16:    t14 = (t10 + 1);
    t10 = t14;
    t4 = (t0 + 7261);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    t4 = (t0 + 4368);
    *((int *)t4) = 0;
    goto LAB10;

LAB13:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB17:    t4 = (t0 + 4384);
    *((int *)t4) = 0;
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4672);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);

LAB23:    t2 = (t0 + 4400);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB17;
    else
        goto LAB19;

LAB20:    goto LAB18;

LAB21:    t4 = (t0 + 4400);
    *((int *)t4) = 0;
    xsi_set_current_line(98, ng0);

LAB27:    t2 = (t0 + 4416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB21;
    else
        goto LAB23;

LAB24:    goto LAB22;

LAB25:    t4 = (t0 + 4416);
    *((int *)t4) = 0;
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4672);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);

LAB31:    t2 = (t0 + 4432);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB26:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB25;
    else
        goto LAB27;

LAB28:    goto LAB26;

LAB29:    t3 = (t0 + 4432);
    *((int *)t3) = 0;
    xsi_set_current_line(101, ng0);

LAB35:    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB30:    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t13 = *((unsigned char *)t4);
    t15 = (t13 == (unsigned char)3);
    if (t15 == 1)
        goto LAB29;
    else
        goto LAB31;

LAB32:    goto LAB30;

LAB33:    t4 = (t0 + 4448);
    *((int *)t4) = 0;
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 7269);
    *((int *)t2) = 0;
    t3 = (t0 + 7273);
    *((int *)t3) = 31;
    t10 = 0;
    t11 = 31;

LAB37:    if (t10 <= t11)
        goto LAB38;

LAB40:    xsi_set_current_line(106, ng0);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB34:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB33;
    else
        goto LAB35;

LAB36:    goto LAB34;

LAB38:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 7269);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t12, *((int *)t4), 5);
    t6 = (t0 + 4800);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t16 = (t8 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(104, ng0);

LAB43:    t2 = (t0 + 4464);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB39:    t2 = (t0 + 7269);
    t10 = *((int *)t2);
    t3 = (t0 + 7273);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB40;

LAB45:    t14 = (t10 + 1);
    t10 = t14;
    t4 = (t0 + 7269);
    *((int *)t4) = t10;
    goto LAB37;

LAB41:    t4 = (t0 + 4464);
    *((int *)t4) = 0;
    goto LAB39;

LAB42:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB41;
    else
        goto LAB43;

LAB44:    goto LAB42;

LAB46:    goto LAB2;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

}


extern void work_a_1386156483_0318166943_init()
{
	static char *pe[] = {(void *)work_a_1386156483_0318166943_p_0,(void *)work_a_1386156483_0318166943_p_1,(void *)work_a_1386156483_0318166943_p_2};
	xsi_register_didat("work_a_1386156483_0318166943", "isim/tb_sort_isim_beh.exe.sim/work/a_1386156483_0318166943.didat");
	xsi_register_executes(pe);
}
