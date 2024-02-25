#!/bin/bash
rm -f time.txt
max=$2
for i in $(seq 1 $max)
do
	'time' -f "%e" ../hotrace < $1 > log.txt 2>>time.txt
done

awk '{ total += $1; count++ } END { avg = total / count; printf "Average Time: %.2f\n", avg }' time.txt
