#!/bin/bash


if [ -z "$1" ]
then
    echo "please provide atleast directory"
fi

if [ -d "$1" ]
then
    echo "$1 directory exists"
else
    echo "$1 directory doesnot exists"
fi

date=$(date +%Y-%m-%d)

dir=$(basename "$1")

backup_name="${dir}_{date}.tar.gz"

tar -czf "$backup_name" "$1"

echo "backup completed $1"