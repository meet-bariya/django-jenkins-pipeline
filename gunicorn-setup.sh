#!/bin/bash

source venv/bin/activate

cd app 
python3 manage.py makemigrations
python3 manage.py migrate

gunicorn config.wsgi --bind 0.0.0.0:8000 --access-logfile ../logs/access.log --error-logfile ../logs/error.log &
echo "Starting Gunicorn server at: 0.0.0.0:8000"