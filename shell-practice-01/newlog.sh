#!/bin/bash


#argument validation


if [ -z "$@" ]
then
    echo "please provide log file path"
fi

if [ -f "$@" ]
then
    echo "log file exists"
else
    echo "log file doesnot exists"
fi

