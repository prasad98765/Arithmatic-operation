#!/bin/bash

echo "Take 3 Input"
read a
read b
read c

result=$(( $a + $b * $c ))
echo $result
 
result1=$(( $a * $b + $c ))
echo $result1

result2=$(( $c + $a / $b ))
echo $result2

result3=$(( $a % $b + $c ))
echo $result3
