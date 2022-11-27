#!/bin/bash -x

array=(-2, -1, 3)

add=0
for i in ${array[@]}
do
	let add=$add+$i
done

if (($add==0))
then
	echo "True"
else
	echo "False"
fi
