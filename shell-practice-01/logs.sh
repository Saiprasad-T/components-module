#!/bin/bash

DIR=$@

if [ -d "$@" ]
then 
    echo "$@ directory exists"
else
    echo "$@ directory doesnot exists"
    exit 1
fi

#if directory exists

find "$DIR" -name "*.log" -type f -mtime -14 | for IFS= read -r file in $@
do
    echo "deleting the $file as this over 14 days"
    rm -f "$file"
done