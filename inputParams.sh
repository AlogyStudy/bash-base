#!/usr/bin/env bash

# $0为程序的路径和名称，$1...$9 ,${10}参数
# $# 参数的个数

echo `basename $0`
if [ $1 != 2 ]; then
	echo '2'
fi
