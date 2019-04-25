#!/usr/bin/env bash

# 判断年纪

read -e -p "please input your age: " AGE

echo "age: $AGE"

if [[ $AGE =~ [^0-9] ]]; then
	echo "plese input int"
	exit 1
elif [ $AGE -gt 150 ]; then
	echo "you are too old"
	exit 2
elif [ $AGE -lt 15 ]; then
	echo "child, good good study day day up"
else
	echo "ok"
fi
