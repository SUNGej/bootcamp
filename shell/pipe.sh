#! /usr/bin/bash

#find .sh files in current directory
echo "these are files in current directory"

ls

echo "---------------------"

echo "these are .sh files in current directory"
ls | grep ".sh"
