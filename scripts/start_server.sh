#!/bin/bash

# activate virtual environment
source Sentimental_Analyzer/venv/bin/activate

# change directory to the location of manage.py
cd Sentimental_Analyzer

# run the Django development server
python manage.py runserver 0.0.0.0:8000 &
