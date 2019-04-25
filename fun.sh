#!/usr/bin/env bash

myfunc () {
	echo "hello $1"
}

function myfunc () {
	echo "hello world - $*"
}

myfunc "John"

myfunc () {
	local myresult="some value"
	echo $myresult
}

# result=$(myfunc)

myfunc
# result

myfunc () {
	return 1
}

if myfunc; then
	echo 'success'
else
	echo "failure"
fi
