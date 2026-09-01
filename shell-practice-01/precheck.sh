#!/bin/bash

Server=$(hostname)
read -p "enter the environment: " envi

if [[ $envi == prod || $envi == dev || $envi == qa ]]
then 
 echo "valid environment"
else
  echo "invalid environment"
  exit 1
fi   

echo " server: $Server"


if [ -d "/tmp" ]
then
    echo "/tmp directory exists"
else
    echo "/tmp directory doesnot exist"
    exit 1
fi

whoami
status=$?

if [ $status -eq 0 ]
then
    echo "command sucessfully executed"
else
    echo "command unacesible"
    exit 1
fi

if [ $envi == dev ]
then
    echo "deploying to development"
elif [ $envi == qa ]
then 
    echo "deploying to qa"
elif [ $envi == prod ]
then
    echo "deploying to prod"
else
    echo "invalid parameter"
fi

echo "Pre-check completed successfully"
echo "Ready for deployment"

