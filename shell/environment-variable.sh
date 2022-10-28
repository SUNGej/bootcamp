#! /usr/bin/bash

MY_SHELL_VARIABLE="this variable is created by SUNGej"
export MY_SHELL_VARIABLE

echo "all environment variables are named in upper case"
echo "this is a new environment variable created by user."
echo "MY_SHELL_VARIABLE=${MY_SHELL_VARIABLE}"
