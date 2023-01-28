#!/bin/bash

# activate virtual environment
source /opt/Sentimental_Analyzer/venv/bin/activate

# change directory to the location of manage.py
cd /opt/Sentimental_Analyzer

# run database migrations
python manage.py makemigrations

python manage.py migrate
