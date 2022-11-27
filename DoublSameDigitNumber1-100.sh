#!/bin/bash -x

arr=()
rslt=()
j=0

for ((i=1; i<=100; i++))
do
	arr+=$i
	if (($i%11==0))
	then
		rslt[$j]=$i
		((j++))
	fi
done

echo "The output of repeated twice numbers are: ${rslt[@]}"

