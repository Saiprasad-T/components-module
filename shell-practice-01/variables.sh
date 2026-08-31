#!/bin/bash

read -p "please enter environment: " envi

if [ $envi == "dev" ]
then
    echo "deploying to dev"
elif [ $envi == "qa" ]
then
    echo "deploying to qa"
elif [ $envi == "prod" ]
then
    echo "deploying to prod"
else
    echo "invalid parameter"
fi

