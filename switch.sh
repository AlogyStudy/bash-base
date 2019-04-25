#!/usr/bin/env bash

echo "$1"
case "$1" in
	start)
	echo start;;
	stop)
	echo stop;;
	*)
	echo hello;;
esac


