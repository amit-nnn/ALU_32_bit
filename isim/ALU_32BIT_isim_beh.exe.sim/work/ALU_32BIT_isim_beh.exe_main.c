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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001095134481_0189650569_init();
    work_m_00000000000021321161_2513369863_init();
    work_m_00000000003912470078_1817558700_init();
    work_m_00000000003912470078_3232891280_init();
    work_m_00000000001470744068_0625844318_init();
    work_m_00000000003655051841_0311644268_init();
    work_m_00000000003860596543_0357417212_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003860596543_0357417212");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
