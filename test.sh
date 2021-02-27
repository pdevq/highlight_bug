#!/bin/bash

ifs_old=$IFS
IFS=$'\n'
IFS=$ifs_old

# some comment'

today=$(date --iso-8601)

echo "Today is: $today"
echo "Today is: $(date --iso-8601)"
echo $today

ls -lah
