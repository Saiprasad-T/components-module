#!/bin/bash

Disk_usage=$( df -h | awk 'NR>1 {print $6}' |  tr -d '%' )

if [ "$Disk_usage" -gt 80 ]
then
    echo "Disk Usage: "$Disk_uasage""
    echo "Warning Disk usage is above 80%"
else
    echo "Disk Usage: "$Disk_usage""
    echo "Disk Usage is normal"
fi 