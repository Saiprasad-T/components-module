#!/bin/bash

file="$1"

if [ -f "$file" ]
then 
    echo "$file exists"
else
    echo "$file doesnot exists"
    exit 1
fi

ERROR=$(find "$file" -type f -exec  grep -h "ERROR" {} + | wc -l)

echo "Total number of ERROR lines from the log: $ERROR"

if [ "$ERROR" -gt 10 ]
then
    echo "ERROR count is high"
fi

WARNING=$(find "$file" -type f -exec  grep -h "WARNING" {} + | wc -l)

echo "Total number of WARNING lines from the log: $WARNING"

if [ "$WARNING" -gt 10 ]
then
    echo "WARNING count is high"
fi

INFO=$(find "$file" -type f -exec grep -h "INFO" {} + | wc -l)

echo "Total number of INFO lines from the log: $INFO"

if [ "$INFO" -gt 10 ]
then
    echo "INFO count is high"
fi