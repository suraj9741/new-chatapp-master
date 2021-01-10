#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
#sudo rm /etc/nginx/sites-available/fundoo.conf
sudo ln -s /etc/nginx/sites-available/fundo /etc/nginx/sites-enabled
sudo rm /etc/nginx/sites-available/default
sudo nginx -t
