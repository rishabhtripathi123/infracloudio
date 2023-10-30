#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2

for i in $(seq $start $end)
do
    echo "$i, $((RANDOM % 100 + 1))" >> inputFile
done

