#!/usr/bin/env bash

read -e -p "Please input yes or no: " ANW

case $ANW in
[Yy][Ee][Ss]|[Yy])
    echo "yes"
    ;;
[Nn][Oo]|[Nn])
    echo "no"
    ;;
*)
    echo "error"
    ;;
esac
