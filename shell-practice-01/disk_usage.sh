#!/bin/bash

Disk_uasage=$(cd / | df -h | awk 'NR>1 {print $6}')

if [ $Disk_uasage -gt 80 ]
then
    echo "Disk Usage: "$Disk_uasage""
    echo "Warning Disk usage is above 80%"
else
    echo "Disk Usage: "$Disk_usage""
    echo "Disk Usage is normal"
fi 