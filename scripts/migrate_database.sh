#!/bin/bash

# activate virtual environment
source Sentimental_Analyzer/venv/bin/activate

# change directory to the location of manage.py
cd Sentimental_Analyzer

# run database migrations
python manage.py makemigrations

python manage.py migrate
