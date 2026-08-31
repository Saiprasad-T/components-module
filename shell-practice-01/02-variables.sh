#!/bin/bash

ls /this_directory_doesnot_exist
status=$?

if [ "status" == 0 ]
then
    echo "Directory exists"
else
    echo "Directory doesnot exists"
fi