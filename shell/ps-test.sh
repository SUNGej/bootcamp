#! /usr/bin/bash

echo this is .sh file to check bash process running
echo -----------
process_check_bash=`ps -ef | grep bash | grep -v grep`

echo $process_check_bash
echo -----------

if [[ $process_check_bash == *"bash"* ]]; then
  echo bash process is running
else
  echo there is not bash process
fi
