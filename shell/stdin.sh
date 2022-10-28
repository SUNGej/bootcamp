#! /usr/bin/bash

echo -n "type name of file to find : "
read filename

echo "find ${filename} in current directory"

if [ -e $filename ]; then
  echo "${filename} is found"
else
  echo "${filename} is not found"
fi
