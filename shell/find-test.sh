#! /usr/bin/bash

echo this is .sh file to print all .sh files in current directory
echo "similar to ls | grep .sh"

find . -name "*.sh"
