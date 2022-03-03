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

LAB0:    xsi_set_current_line(28, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4576);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4480);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675173365_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1632U);
    t1 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB17;

LAB18:    t1 = (unsigned char)0;

LAB19:    if (t1 != 0)
        goto LAB14;

LAB16:
LAB15:    t2 = (t0 + 4496);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2312U);
    t9 = *((char **)t2);
    t10 = *((int *)t9);
    t11 = (t10 + 1);
    t2 = (t0 + 4640);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = t11;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 7);
    t16 = (t11 * -1);
    t17 = (1 * t16);
    t18 = (0U + t17);
    t2 = (t0 + 4704);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t1;
    xsi_driver_first_trans_delta(t2, t18, 1, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t10 = *((int *)t3);
    t1 = (t10 == 7);
    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4640);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2632U);
    t6 = *((char **)t3);
    t3 = (t0 + 4768);
    t9 = (t3 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB14:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2152U);
    t9 = *((char **)t2);
    t10 = *((int *)t9);
    t11 = (t10 + 1);
    t2 = (t0 + 4832);
    t12 = (t2 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t15) = t11;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 - 7);
    t16 = (t11 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t10);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t1 = *((unsigned char *)t2);
    t9 = (t0 + 4896);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t1;
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t10 = *((int *)t3);
    t1 = (t10 == 7);
    if (t1 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB15;

LAB17:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB19;

LAB20:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4832);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB21;

}


extern void work_a_0675173365_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0675173365_3212880686_p_0,(void *)work_a_0675173365_3212880686_p_1};
	xsi_register_didat("work_a_0675173365_3212880686", "isim/t3_isim_beh.exe.sim/work/a_0675173365_3212880686.didat");
	xsi_register_executes(pe);
}
