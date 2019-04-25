#!/usr/bin/env bash

for f in `ls | grep love`
do
	mv $f `echo ${f%love*}`.sh
done

echo "ok"
