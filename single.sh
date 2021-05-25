#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
sudo docker stack deploy -c portainer-agent-stack.yml portainer
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/stack.yml -o stack.yml
sudo docker stack deploy -c stack.yml wordpress
