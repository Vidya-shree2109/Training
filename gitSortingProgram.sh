#! /bin/bash-x
        count=0;
        count1=0;
        declare -A dict_compute;
        read -p "Enter first Integer Number: " a
        read -p "Enter first Integer Number: " b
        read -p "Enter first Integer Number: " c

        #exp1= a*b+c
        exp1=$(( $a + $b * $c ))
        #exp2=a+b*c
        exp2=$(($a * $b + $c ))
        #exp3=c+a/b
        exp3=$(( $c + $a / $b ))

        #exp4=a%b+c
        exp4=$(( $a % $b + $c ))
         dict_compute[key1]=$exp1
         dict_compute[key2]=$exp2
         dict_compute[key3]=$exp3
         dict_compute[key4]=$exp4

        echo ${dict_compute[@]}

        len=${#dict_compute[@]}
        echo $len
        computeAr[((count++))]=${dict_compute[key1]}
         computeAr[((count++))]=${dict_compute[key2]}
         computeAr[((count++))]=${dict_compute[key3]}
         computeAr[((count++))]=${dict_compute[key4]}
        echo "Array Elements: ${computeAr[@]}"

        len=${#computeAr[@]}
        temp=0
        for (( i=0; i<=$len; i++ ))
        do
        for (( j=i+1; j<$len; j++ ))
        do

        if [ ${computeAr[((i))]} -gt ${computeAr[((j))]} ]
        then
                temp=${computeAr[((i))]};
                computeAr[((i))]=${computeAr[((j))]}
                computeAr[((j))]=$temp;
        fi
        done
        done
        echo "Ascending Order Array Elements: ${computeAr[@]} "
                len1=${#computeAr[@]}
        echo "Descending Order Array Elements:"
		  for (( i=$len1; i>=0; i-- ))
                do

                echo -n " ${computeAr[((i))]} "
                done
