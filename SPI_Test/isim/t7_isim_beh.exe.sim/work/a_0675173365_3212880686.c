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
static const char *ng0 = "E:/FileProject/ISE Project/SPI_Test/SPI_one.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0675173365_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(30, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5368);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675173365_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5544);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5384);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675173365_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 5608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 1)
        goto LAB8;

LAB9:    t6 = (unsigned char)0;

LAB10:    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3232U);
    t6 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t6 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 1)
        goto LAB23;

LAB24:    t6 = (unsigned char)0;

LAB25:    if (t6 != 0)
        goto LAB20;

LAB22:
LAB21:    t1 = (t0 + 5400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5672);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t1 = (t0 + 5608);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 + 1);
    t1 = (t0 + 5736);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t16 = (t15 - 7);
    t17 = (t16 * -1);
    t18 = (1 * t17);
    t19 = (0U + t18);
    t1 = (t0 + 5800);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t6;
    xsi_driver_first_trans_delta(t1, t19, 1, 0LL);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t6 = (t15 == 7);
    if (t6 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB6;

LAB8:    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB10;

LAB11:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 5736);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 5672);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = (t0 + 5864);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t13 = *((char **)t8);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB15;

LAB17:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5928);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t1 = (t0 + 5608);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 + 1);
    t1 = (t0 + 5992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t16 = (t15 - 7);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t6 = *((unsigned char *)t1);
    t4 = (t0 + 6056);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t13 = (t8 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t6;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t6 = (t15 == 7);
    if (t6 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB21;

LAB23:    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB25;

LAB26:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5928);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB27;

}


extern void work_a_0675173365_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0675173365_3212880686_p_0,(void *)work_a_0675173365_3212880686_p_1,(void *)work_a_0675173365_3212880686_p_2};
	xsi_register_didat("work_a_0675173365_3212880686", "isim/t7_isim_beh.exe.sim/work/a_0675173365_3212880686.didat");
	xsi_register_executes(pe);
}
