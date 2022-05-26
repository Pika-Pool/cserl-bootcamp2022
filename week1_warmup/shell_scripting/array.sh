#!/bin/bash

str_array=( man bear pig dog cat sheep )

for str in "${str_array[@]}"; do
	echo $str
done

echo "${str_array[@]}"
echo "${!str_array[@]}"
echo "${str_array}"
