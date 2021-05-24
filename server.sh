#!/bin/bash

sudo apt-get update -yes
sudo apt-get upgrade -yes
sudo apt-get install docker.io -yes
sudo apt-get install docker-compose -yes
sudo docker swarm init
sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
sudo docker stack deploy -c portainer-agent-stack.yml portainer
