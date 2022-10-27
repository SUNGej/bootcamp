#! /bin/bash
string1="bin"
string2="bin"
if [ "$string1" = "$string2" ]; then
  echo "string1 is same to string2"
  echo "string1 = string2 = ${string1}"
else
  echo "string1 is not same to string2"
  echo "string1 = ${string1}"
  echo "string2 = ${string2}"
fi
