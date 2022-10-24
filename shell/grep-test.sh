#! /usr/bin/bash

printf "this is .sh file to print line which has echo in this file"

echo 1
echo 2
echo 3
temporary_variable="echo"

grep -n echo $0
