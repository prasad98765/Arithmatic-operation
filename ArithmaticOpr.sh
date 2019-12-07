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

allresult[result1]=$result
allresult[result2]=$result1
allresult[result3]=$result2
allresult[result4]=$result3


