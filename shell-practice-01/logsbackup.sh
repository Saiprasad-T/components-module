#!/bin/bash

Dir=/d/sakee/DevOps-All/Repos/shell-practice-01
dir2=/d/sakee/DevOps-All/Repos/shell-practice-01

if [ -n "$1" ]
then
    "$Dir=$1"
fi

if [ -n "$2" ]
then
    "$Dir2=$1"
fi

date=$(date +%Y-%m-%d)


tar -czvf "backup-${date}.tar.gz" "$2"


