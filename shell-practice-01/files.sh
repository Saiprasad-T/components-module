#!/bin/bash

if [ $# -lt 2 ]
then 
    echo "please pass atleast 2 arguments"
    exit 1
fi

for directory in "$@"
do
    if [ -d "$directory" ]
    then
        echo "$directory exists"
    else
        echo "$directory doesnot exits"
    fi
done
