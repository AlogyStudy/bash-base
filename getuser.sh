#!/usr/bin/env bash

test=$(env | grep USER | cut -d "=" -f 2)

# echo "$test"

if [ "$test"==root ]; then
	echo "current user is root"
else
	echo "$(who)"
fi
