#!/usr/bin/env bash

# diskwarn 硬盘大小警告

test=$(df -h | grep sda1 | awk '{print $5}') | cut -d '%' -f 1
echo "$test"

if [ -n "$test" ]; then
	if [ "$test" -ge "2" ]; then
		echo "disk sda1 gt 2"
	fi
fi
