#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo rm /etc/nginx/sites-enabled/fundoo
sudo ln -s /etc/nginx/sites-available/fundoo /etc/nginx/sites-enabled
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
