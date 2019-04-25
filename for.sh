#!/usr/bin/env bash

# for i in /etc/rc.*; do
# 	echo $i
# done

# while true; do
# 	...
# done

for i in {1..5}; do
	echo "Welcome $i"
done

for i in {5..50..5}; do
	echo "Welcome $i"
done

cat 1.sh | while read line; do
	echo $line
done

sum=0
count=1

for i in {1..100}; do
	sum=$[$sum+$count]
	count=$[$count+1]
done
echo $sum
