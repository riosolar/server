#!/bin/bash

sudo apt-get update -Y
sudo apt-get upgrade -Y
sudo apt-get install docker.io
sudo apt-get install docker-compose
sudo docker swarm init
sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
sudo docker stack deploy -c portainer-agent-stack.yml portainer
