#! /usr/bin/bash

array=(1 2 3)
echo ${array[@]}

array+=("add")
echo ${array[@]}
echo ${array[-1]}

element="new element"
array+=($element)
echo ${array[@]}
