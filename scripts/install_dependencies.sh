#!/bin/bash

sudo apt-get update
sudo apt-get -y install python3-pip python-dev nginx git
sudo apt-get update
sudo pip3 install virtualenv
virtualenv venv
source venv/bin/activate
cd new_chatapp																
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
