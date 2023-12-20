#!/bin/bash

if [ -d "venv" ]
then 
    echo "Virtual Environment Already exists, Skipping this step"
else
    python3 -m venv venv
fi

source ./venv/bin/activate

pip3 install -r requirements.txt 

if [ -d "logs" ]
then 
    echo "Logs directory Already exists, Skipping this step"
else
    mkdir logs 
    touch logs/error.log logs/access.log
fi

chmod -R 777 logs

echo "Environment Setup finished"