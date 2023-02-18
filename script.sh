#!/bin/bash


sudo snap install docker
sudo chmod 666 /var/run/docker.sock

sudo apt install ansible -y

git clone https://github.com/sukhpreet-41/react-weather-app.git

cd react-weather-app

sudo docker-compose -f docker-compose-dev -f docker-compose-prod up -d --build
