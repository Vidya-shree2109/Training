#! /bin/bash -x

head=0;
tail=0;

         for (( i=1; i<=40; i++ ))
        do

        check=$((RANDOM%2))

        case $check in
        1)
        head=$((($head) +1 )) ;;
        0)
        tail=$((($tail) +1 )) ;;
        *)
        echo default ;;
        esac
        done
        echo "Number of Head:" $(($head));
        echo "Number of Tail:" $(($tail));
        if [ $head -eq $tail ]
                then
                        echo "Game is tie"
        elif [ $head -gt $tail ]
        then
                echo "Head is Winner"
        else
                echo "Tail is Winner"

        fi
