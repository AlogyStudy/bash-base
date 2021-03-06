#!/usr/bin/env bash

# 输入ipv4地址，探测该地址段内有哪些主机在线

# 输入一个IP地址192.168.37.234，如果格式不是0.0.0.0则报错退出.
# 正确则进入循环，IP变量值为192.168.37.i, i的范围为1-254, 并行ping 192.168.37.1-154, ping通就输出IP为UP.　直到循环结束．

read -p "Please input network (eg:192.168.0.0): " net
echo $net | egrep -o "\<(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\>"

[ $? -eq 0 ] || ( echo "input error"; exit 1 )
IP=`echo $net | egrep -o "^([0-9]{1,3}\.){3}"`

for i in {1..254}; do
    {
        ping -c 1 -w 1 $IP$i &> /dev/null && echo "$IP$i is up" 
    }&
done
wait

echo "well done"
