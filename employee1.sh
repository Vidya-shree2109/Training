#! /bin/bash -x
IS_PRESENT=1;
IS_ABSENT=0;
 empCheck=$((RANDOM%2))
        if [ $empCheck -eq 1 ]
        then
                echo "Employee Present"
        else
                echo "Employee Absent"
        fi
