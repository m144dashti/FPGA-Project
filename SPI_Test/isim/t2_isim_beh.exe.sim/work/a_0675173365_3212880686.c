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



static void work_a_0675173365_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(27, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4568);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675173365_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(28, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4744);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4584);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675173365_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t15 = (t4 == (unsigned char)2);
    if (t15 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    t1 = (t0 + 4600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 + 1);
    t1 = (t0 + 4808);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 7);
    t12 = (t7 * -1);
    t13 = (1 * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4872);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t1, t14, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 7);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4808);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t6 = *((int *)t8);
    t7 = (t6 + 1);
    t1 = (t0 + 4936);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t18 = *((char **)t11);
    *((int *)t18) = t7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 7);
    t12 = (t7 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t6);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t8 = (t0 + 5000);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t18 = *((char **)t11);
    *((unsigned char *)t18) = t3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t3 = (t6 == 7);
    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB9;

LAB11:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t3 = t17;
    goto LAB13;

LAB14:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4936);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

}


extern void work_a_0675173365_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0675173365_3212880686_p_0,(void *)work_a_0675173365_3212880686_p_1,(void *)work_a_0675173365_3212880686_p_2};
	xsi_register_didat("work_a_0675173365_3212880686", "isim/t2_isim_beh.exe.sim/work/a_0675173365_3212880686.didat");
	xsi_register_executes(pe);
}
