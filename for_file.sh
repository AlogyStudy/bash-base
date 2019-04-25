#!/usr/bin/env bash

echo "$# file(s) to list"

for file in $@
do
	ls -l $file
done

for file in `ls`
do
	echo $file
done

echo `ls`
