#! /usr/bin/bash

echo "ABCDEFGHIJKLMNOPQRSTUVWXYZ" > alphabet.txt

echo "tail alphabet.txt"
tail alphabet.txt

echo "tail -v alphabet.txt"
tail -v alphabet.txt

echo "tail -vc24 alphabet.txt"
tail -vc24 alphabet.txt
echo "tail -vc25 alphabet.txt"
tail -vc25 alphabet.txt
echo "tail -vc26 alphabet.txt"
tail -vc26 alphabet.txt
