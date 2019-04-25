#!/usr/bin/env bash

SUM=0
read -p "Please input positive integer: " NUM

if [[ $NUM =~ [^0-9] ]]; then
    echo 'input error1'
elif [[ $NUM -eq 0 ]]; then
    echo 'input error'
else
    for i in $(seq 1 $NUM); do
        let SUM+=$i 
    done
    echo $SUM
fi

unset NUM SUM
