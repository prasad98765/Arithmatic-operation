#!/bin/bash

echo "Take 3 Input"
read a
read b
read c

result=$(( $a + $b * $c ))
echo $result
