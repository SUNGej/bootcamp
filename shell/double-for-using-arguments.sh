#! /usr/bin/bash

number=$1

mkdir out

for directory_index in $(seq 1 $number)
do
  mkdir dir-$directory_index
  cd dir-$directory_index
  for file_index in $(seq 1 $directory_index)
  do
    touch file-$file_index
  done
cd ../
done
