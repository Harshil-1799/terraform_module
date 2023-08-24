#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo echo  "<html><body><h1>Hello this is module-1 </h1></body></html>" > /var/www/html/index.html
sudo systeamctl restart apache2
