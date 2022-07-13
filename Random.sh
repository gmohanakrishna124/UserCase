#!/bin/bash -x

l1=0
l2=0
num1=999999
num2=999999
for i in $(seq 1 10) #To generate numbers from first to last in steps of increment
do
        res=$(( $RANDOM % 900 + 100 ))
        echo $res
        if [ $num1 -gt $res ]
        then
                num2=$num1
                num1=$res

        elif [ \( $num2 -gt $res \) -a \( $num1 -ne $res \) ]
        then
                num2=$res
        fi
        if [ $res -gt $l1 ]
        then
                l2=$l1
                l1=$res
        elif [ \( $res -gt $l2 \) -a \( $res -ne $l1 \) ]
        then
                l2=$res
        fi
done
echo
echo "Smallest $num1"
echo "Second smallest $num2"
echo "Largest $l1"
echo "Second largest $l2"
