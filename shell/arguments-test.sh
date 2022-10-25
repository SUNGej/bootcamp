#! /usr/bin/bash

number1=$1
number2=$2

echo number1 = $number1
echo number2 = $number2

echo $number1 + $number2 = $(($number1 + $number2))
echo $number1 - $number2 = $(($number1 - $number2))
echo $number1 "*" $number2 = $(($number1 * $number2))
echo $number1 / $number2 = $(($number1 / $number2))
