#!/bin/bash

sudo apt-get update -y
sudo apt-get install docker.io docker-compose
sudo docker swarm join --token SWMTKN-1-6c47f8zm77b878dqjvc05c5ihrvkmujedeivwqx2b2djkmvhlu-3tfj3hmzauj05xs009gc61hla 18.190.161.252:2377	
#sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
#sudo docker stack deploy -c portainer-agent-stack.yml portainer