#!/bin/bash -x

array=()

for ((i=0; i<10; i++))
do
        array[i]=$((RANDOM%900+100))
done

echo "The 3 digit random number generated are: ${array[@]}"

for ((i=0; i<10; i++))
do
	for ((j=$i+1; j<10; j++))
	do
		temp=0
		if ((${array[$i]}>${array[$j]}))
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done

echo "The sorted array is: ${array[@]}"
echo "The second largest number is: ${array[8]}"
echo "The second smallest Number is: ${array[1]}"
