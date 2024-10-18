#!/bin/bash

echo "Update System"
sudo apt update -y

echo "Installing Utilities"
sudo apt install zip unzip -y

echo "Install Web Server NGINX"
sudo apt install nginx -y

echo "Cleanup Document Root"
sudo rm -rf /var/www/html/*

echo "Deploy Login App"
sudo git clone https://github.com/PragyaSwarnwanshi0804/webappPragya.git /var/www/html/

echo "Application Deployed - Browse the application using public IP"
