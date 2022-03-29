#! /bin/bash -x
EMP_SAL_PER_HRS=20;
IS_FuLL_TIME=2;
IS_PART_TIME=1;
        for (( i=1; i<=20; i++ ))
        do
        empCheck=$((RANDOM%3))
        case $empCheck in
        2)
                emp_Wrk_Hrs=8;
                echo "Employeework as Full Time "
                  ;;
        1)
              emp_Wrk_Hrs=4;
                ;;

        0)
                echo "There is now Employee "
                        ;;
        esac

                daily_Emp_Wage=$(( $EMP_SAL_PER_HRS * $emp_Wrk_Hrs ))
                emp_Total_Sal=$(( $emp_Total_Sal + $daily_Emp_Wage ))
        done
                echo "Total Employee Salary is :$emp_Total_Sal rupee"

