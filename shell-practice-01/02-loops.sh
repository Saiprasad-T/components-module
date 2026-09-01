#/bin/bash

check_directory() {
    if [ -d "$1" ]
    then
        echo "$1 directory exists"
        return 0
    else
        echo "$1 directory doesnot exists"
        return 1
    fi
}

for dir in "$@"
do
    check_directory "$dir"
done

if [ check_directory "$dir" -ne 0 ]
then
    echo "check successfull"
else
    echo "WARNING: check failed"
fi