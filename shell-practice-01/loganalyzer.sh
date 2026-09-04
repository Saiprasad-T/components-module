#!/bin/bash

file=/d/sakee/DevOps-All/Repos/shell-practice-01/application.log

if [ -f "$file" ]
then 
    echo "$file exists"
else
    echo "$file doesnot exists"
    exit 1
fi

ERROR=$(find "$file" -type f -exec -h grep "ERROR" {} + | wc -l)

echo "Total number of ERROR lines from the log: $ERROR"

if [ "$ERROR" -ge 10 ]
then
    echo "ERROR count is high"
fi

WARNING=$(find "$file" -type f -exec -h grep "WARNING" {} + | wc -l)

echo "Total number of WARNING lines from the log: $WARNING"

if [ "$WARNING" -ge 10 ]
then
    echo "WARNING count is high"
fi

INFO=$(find "$file" -type f -exec grep -h "INFO" {} + | wc -l)

echo "Total number of INFO lines from the log: $INFO"

if [ "$INFO" -ge 10 ]
then
    echo "INFO count is high"
fi