#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/stack.yml -o stack.yml
sudo docker stack deploy -c stack.yml wordpress
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/portainer.yml -o portainer.yml
sudo docker stack deploy -c portainer.yml portainer
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/traefik.yml -o traefik.yml
sudo docker stack deploy -c traefik.yml traefik
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/monitor.yml -o monitor.yml
sudo docker stack deploy -c monitor.yml monitor
