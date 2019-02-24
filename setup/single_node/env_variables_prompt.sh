#!/bin/bash

filename="var_names"
IFS=$'\n'

echo "We need some configuration information about your system"

touch vars
echo "" > vars

for next in `cat $filename`; do
  echo "'$next':"
  read value
  echo "export $next=$value" >> vars
done
