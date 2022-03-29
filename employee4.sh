#! /bin/bash -x

EMP_SAL_PER_HRS=20;
IS_FuLL_TIME=1;
IS_PART_TIME=0;
        empCheck=$((RANDOM%2))
        case $empCheck in
        1)
                emp_Wrk_Hrs=8;
                  ;;
        0)
              emp_Wrk_Hrs=4;
                ;;

        *)
                echo "There is now Employee"
        esac

                daily_Emp_Wage=$(( $EMP_SAL_PER_HRS * $emp_Wrk_Hrs ))
                 echo "Daily Employee Wage $daily_Emp_Wage rupee"
