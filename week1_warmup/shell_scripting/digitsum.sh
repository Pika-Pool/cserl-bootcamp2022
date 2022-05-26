#!/bin/bash

num="$1"
sum=0

# check if num is an integer
int_regex='^[0-9]+$'
if ! [[ $num =~ $int_regex ]]; then
	echo "Error: number expected, got: '$num'" >&2
	exit 1
fi

while [ "$num" -gt 0 ]; do
	mod=$((num % 10))
	sum=$((sum + mod))
	num=$((num / 10))
done

echo "Sum of digits of $1 = $sum"
