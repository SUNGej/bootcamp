#! /usr/bin/bash

argument_string=$1

if [ "$argument_string" = "ok" ]; then
  echo OK > ok.txt
elif [ "$argument_string" = "ng" ]; then
  no-command 2> ng.txt
fi
