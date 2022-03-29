#! /bin/bash -x
EMP_SAL_PER_HRS=20;
MAX_WRK_HRS=100;
IS_FuLL_TIME=2;
IS_PART_TIME=1;
total_Wrk_Hrs=0;
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
                 echo "Employeework as Part Time "

                           ;;
              0)
                echo "There is no Employee "
                           ;;
        esac

                total_Wrk_Hrs=$(( $total_Wrk_Hrs + $emp_Wrk_Hrs ))

                echo "Total working Hours of Employee is:$total_Wrk_Hrs "
                if [ $total_Wrk_Hrs -le 100 ]
                   then
                emp_Total_Sal=$(( $EMP_SAL_PER_HRS * $total_Wrk_Hrs ))
                echo "Total Employee Salary is : $emp_Total_Sal rupee"
                else
                        echo "Employee should not do the work more than $total_Wrk_Hrs hrs"
                fi

        done
