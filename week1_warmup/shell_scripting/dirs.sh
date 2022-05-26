#!/bin/bash

if [ -d root ]; then
	echo "'root' directory already exists" >&2
	exit 1
fi

mkdir root

for ((i=1; i<=5; i++)); do
	dir_name="root/dir$i"
	mkdir "$dir_name"

	for ((j=1; j<=4; j++)); do
		for ((k=1; k<=j; k++));do
			echo "$j" >> "$dir_name/file$j"
		done
	done
done
