#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Deploying app..."
sudo cp -r app/* /var/www/html/

echo "Restarting Nginx..."
sudo systemctl restart nginx

echo "Deployment completed!"

