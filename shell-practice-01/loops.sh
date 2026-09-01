#!/bin/bash

check_directory() {
    if [ -d "$1" ]
    then 
        echo "$1 exists"
    else
        echo "$1 doesnot exists"
    fi
}

for dir in $@
do
    check_directory "$dir"
done