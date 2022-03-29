#! /bin/bash -x

EMP_SAL_PER_HRS=20;
MAX_WRK_HRS=100;
IS_FuLL_TIME=2;
IS_PART_TIME=1;
day=1;
total_Wrk_Hrs=0;
emp_Total_sal=0;
emp_Daily_Wage=0;

                function calculateWorkingHours()
                {
                        case $1 in
                2)
                emp_Wrk_Hrs=8;
                #echo "Employeework as Full Time "
                            ;;
               1)
                      emp_Wrk_Hrs=4;
                 #echo "Employeework as Part Time "

                           ;;
              0)
                         emp_Wrk_Hrs=0;
                #echo " There is no Employee "
                           ;;
        esac
                        echo $emp_Wrk_Hrs;
                }
        while [[ $day -le 20 && $total_Wrk_Hrs -lt 100 ]]
                do
                emp_Wrk_Hrs=$(calculateWorkingHours $((RANDOM%3)));
                total_Wrk_Hrs=$(( $total_Wrk_Hrs + $emp_Wrk_Hrs ))

                echo "Total working Hours of Employee is: $total_Wrk_Hrs "
                if [ $emp_Wrk_Hrs -le 8 ]
                        then
                        emp_Daily_Wage=$(( $EMP_SAL_PER_HRS * $emp_Wrk_Hrs ))
                fi
								if [ $total_Wrk_Hrs -gt 100 ]
                   then
                        total_Wrk_Hrs=$(( $total_Wrk_Hrs -$emp_Wrk_Hrs ))
                                break;
                        fi
                salary=$(( $EMP_SAL_PER_HRS * $total_Wrk_Hrs ))
                emp_Total_sal=$(( $emp_Total_sal + $salary ))
                        ((day++));
done
                echo "Employee earn total Salary in a month :  $emp_Total_sal"
                echo " Total Employee Working in a month : $total_Wrk_Hrs"
                echo "Employe daily salary is : $emp_Daily_Wage"
