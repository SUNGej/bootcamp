#! /usr/bin/bash

echo this is search on google.com using arguments

search_argument=$1

curl https://google.com/search?q=$search_argument
