#!/bin/bash

command1=$(ls /tmp)

if [ $command1 -eq 0 ]
then 
    echo "command executed sucessfully"
else
    echo "command failed to execute"
fi