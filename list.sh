#!/usr/bin/env bash

fruits=('Apple', 'Banana', 'Orange')

echo ${fruits[0]}

for i in "${fruits[@]}"; do
	echo $i
done
