#! /usr/bin/bash

string=$1

if [ -n "$string" ]; then
  mkdir -p output && cd output
  echo $string > string_original.txt
  string_in_file=`cat string_original.txt`
  string_in_file_upper=${string_in_file^^}
  string_in_file_lower=${string_in_file,,}
  echo $string_in_file_upper > string_changed_to_upper_case.txt
  echo $string_in_file_lower > string_changed_to_lower_case.txt
  echo check new directory and files
else
  echo How to use this file
  echo run this file with a string argument
  echo a new directory \(output\) will be created
  echo in output directory, .txt files of your string, changed to upper case and lower case will be created
fi
