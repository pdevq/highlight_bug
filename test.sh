#!/bin/bash

ifs_old=$IFS
IFS=$'\n'
IFS=$ifs_old

# some comment'

function help() { cat; }<<EOF_HERE
Some text and $variable
This doesn't seem right.
Everything is now considered a string due to the unmatched single quote.
Even $variables.
EOF_HERE

today=$(date --iso-8601)

echo "Today is: $today" # we can again fix this with another fake closing quote '
echo "Today is: $(date --iso-8601)"

cat <<'SOME_TOKEN'
This $variable should be displayed as string
SOME_TOKEN

echo $today

ls -lah
