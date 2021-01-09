#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo rm /etc/nginx/sites-available/fundoo
sudo ln -s /etc/nginx/sites-available/fundoo.conf /etc/nginx/sites-enabled
sudo nginx -t
sudo rm /etc/nginx/sites-available/default
