#!/bin/bash

# activate virtual environment
source Sentimental_Analyzer/venv/bin/activate

# change directory to the location of manage.py
#cd Sentimental_Analyzer
#cd ..
# run database migrations
python3 manage.py makemigrations

python3 manage.py migrate
