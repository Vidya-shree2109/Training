#! /bin/bash -x
EMP_SAL_PER_HRS=20;
EPM_WRK_HRS=8;
        daily_Emp_Wage=$(( $EMP_SAL_PER_HRS * $EPM_WRK_HRS ))
        echo "Daily Employee Wage $daily_Emp_Wage"
