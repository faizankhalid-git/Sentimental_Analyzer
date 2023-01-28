#!/bin/bash

# update package list
apt-get update

# install python3 and pip
apt-get install -y python3 python3-pip

# install virtualenv
pip3 install virtualenv

# create virtual environment
virtualenv Sentimental_Analyzer/venv

# activate virtual environment
source Sentimental_Analyzer/venv/bin/activate

# install requirements
pip3 install -r Sentimental_Analyzer/requirements.txt
