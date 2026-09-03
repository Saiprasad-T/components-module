#/bin/bash

check_directory() { #Validation logic
    if [ -d "$1" ]
    then
        echo "$1 directory exists"
        return 0
    else
        echo "$1 directory doesnot exists"
        return 1
    fi
}

check_directory "$dir" 

for dir in "$@" #Processes all arguments
do
    if check_directory "$dir" 
    then
        echo "check successfull"
    else
        echo "WARNING: check failed"
    fi
done