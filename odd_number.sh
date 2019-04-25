#!/usr/bin/env bash

# 求出1到100内奇数的总和

function odd_num () {
    for ((i=1, sum=0; i<=100; i++)); do
        [ $[i%2] -eq 1 ] && let sum+=$i
    done
    echo sum=$sum
}

odd_num
