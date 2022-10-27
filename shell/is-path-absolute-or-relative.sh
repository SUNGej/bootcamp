#! /usr/bin/bash

path=$1
echo "path is ${path}"
path_first_character=$(echo $path | cut -c 1)
echo "first character of path is ${path_first_character}"

if [ "$path_first_character" = "/" ]; then
  echo "${path} is absolute path"
else
  echo "${path} is relative path"
fi

