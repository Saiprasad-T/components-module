#!/bin/bash


check_file(){
    if [ -f "$1" ]
    then
        echo "$1 file exits"
        return 0
    else
        echo "$1 file doesnot exits"
        return 1
    fi
}

check_file "/etc/profile"
echo "$?"
check_file "/etc/passwd"
echo "$?"