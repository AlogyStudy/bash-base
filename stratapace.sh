#!/usr/bin/env bash

test=$(ps aux | grep httpd | grep -v grep)

if [ -n "$test" ]; then
	echo "httpd is ok"
else
	echo "httpd in not start"
	/etc/rc.d/init.d/httpd start
fi
