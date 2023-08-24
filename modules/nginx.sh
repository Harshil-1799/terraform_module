#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo echo  "<html><body><h1>Hello this is nginx </h1></body></html>" > /var/www/html/index.html
sudo systeamctl restart nginx
