#!/bin/bash

sleep 3s

echo "deb https://nginx.org/packages/ubuntu/ jammy nginx" | sudo tee /etc/apt/sources.list.d/nginx.list
echo "deb-src https://nginx.org/packages/ubuntu/ jammy nginx" | sudo tee -a /etc/apt/sources.list.d/nginx.list

key="ABF5BD827BD9BF62"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key

sudo apt update && sudo apt install -y nginx

sleep 3s

echo "starting Nginx..."

sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

echo "Nginx installation finished!"