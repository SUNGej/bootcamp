#! /usr/bin/bash

number=$1

mkdir out

for directory_index in $(seq 1 $number)
do
  mkdir out/dir-$directory_index
  for file_index in $(seq 1 $directory_index)
  do
    touch out/dir-$directory_index/file-$file_index
  done
done
