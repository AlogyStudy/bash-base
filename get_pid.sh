#!/bin/bash

# 获取进程pid

echo "请输入要查询的端口号："

read port
content=`netstat -anp | grep $port | awk '{print $7}'`
pid=${content%/java}

if [ -z $pid ]; then
    echo "该进程没有启动"
else
    echo "进程pid:$pid"
fi
