#! /usr/bin/bash

echo "create a new temporary file."
touch chown-test.txt

sudo chown root chown-test.txt

ls -l
