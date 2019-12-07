#!/bin/bash

echo "Take 3 Input"
read a
read b
read c

declare -A allresult
result=$(( $a + $b * $c ))
echo $result
 
result1=$(( $a * $b + $c ))
echo $result1

result2=$(( $c + $a / $b ))
echo $result2

result3=$(( $a % $b + $c ))
echo $result3

allresult["result1"]=$result
allresult["result2"]=$result1
allresult["result3"]=$result2
allresult["result4"]=$result3

for (( i=0; i<=4; i++ ))
do
	resultArray[$i]="${allresult[result$i]}"
done

#for (( i=0; i<4; i++ ))
#do
	#for (( j=0; j<4; j++ ))
	#do
       		#if [[ ${resultArray[$i]} -lt ${resultArray[$j]} ]]
		#then
			#temp="${resultArray[$i]}"
			#resultArray[$i]="${resultArray[$j]}"
			#resultArray[$j]=$temp
		#fi
	#done
#done

for value in ${!resultArray[@]}
do
	echo ${resultArray[$value]}
done | sort -nr 

#echo "${resultArray[@]}"
