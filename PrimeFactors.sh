#!/bin/bash -x
array=()
echo "Enter a Number to find prime Factors: "
read num
temp=$num

for (( a=2; a<=num; a++))
do
        if (($num%a==0))
        then
                count=0
                for (( b=1; b<=$a; b++))
                do
                        if (($a%b==0))
                        then
                                ((count++))
                        fi
                done
                if (($count==2))
                then
			array+=($a)
                        num=$(($num/$a))
                fi
        fi
done

echo "All the prime factors of $temp is ${array[@]}"
