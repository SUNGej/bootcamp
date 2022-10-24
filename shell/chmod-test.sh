#! /usr/bin/bash

echo create a new temporary file
touch chmod-test.txt

echo write something in file
echo write abcdefg@#@# >> chmod-test.txt

echo print content of file
tail chmod-test.txt

echo ------------------------------

echo change permission to write only
chmod 222 chmod-test.txt

echo write A in file
echo A >> chmod-test.txt

echo try to read file but denied
tail chmod-test.txt

echo ------------------------------

echo change permission to read only
chmod 444 chmod-test.txt

echo try to write B in file but denied
echo write B >> chmod-test.txt

echo read file
tail chmod-test.txt
