#!/bin/bash -x
array=()

for ((i=0; i<10; i++))
do
	array[i]=$((RANDOM%900+100))
done

echo "The 3digit random Numbers are: ${array[@]}"

first=${array[0]}
second=${array[0]}

for ((i=0; i<10; i++))
do
	if (($first<${array[$i]}))
	then
		second=$first
		first=${array[$i]}
	elif ((${array[$i]}>$second && ${array[$i]}!=$first))
	then
		second=${array[$i]}
	fi
done

last=${array[0]}
slast=${array[0]}
for ((i=0; i<10; i++))
do
        if (($last>${array[$i]}))
        then
                slast=$last
                last=${array[$i]}
        elif ((${array[$i]}<$slast && ${array[$i]}!=$last))
        then
                slast=${array[$i]}
        fi
done

echo ${array[@]}
echo $second
echo $slast
