#!/bin/bash

num="$1"

# check if num is an integer
int_regex='^[0-9]+$'
if ! [[ $num =~ $int_regex ]]; then
	echo "Error: number expected, got: '$num'" >&2
	exit 1
fi

sum=0
digits_array=( $(echo "$num" | fold -w1) )
for digit in "${digits_array[@]}"; do
	sum=$((sum + digit))
done

echo "Sum of digits of $1 = $sum"
