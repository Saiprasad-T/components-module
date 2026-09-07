#!/bin/bash


#argument validation


if [ -z "$1" ]
then
    echo "please provide log file path"
    
fi

if [ -f "$1" ]
then
    echo "log file exists"
else
    echo "log file doesnot exists"
fi

