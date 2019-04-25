#!/usr/bin/env bash

name="John"

echo ${name}
echo ${name/J/j}
echo ${name:0:2}
echo ${food:-Cake}

length=2
echo ${name:0:length}

echo ${#name}
