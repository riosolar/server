#!/bin/bash

sudo apt-get update -y
sudo apt-get install docker.io docker-compose
sudo docker swarm init
sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
sudo docker stack deploy -c portainer-agent-stack.yml portainer
