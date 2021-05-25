#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/stack.yml -o stack.yml
sudo docker stack deploy -c stack.yml wordpress

curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
docker stack deploy -c portainer-agent-stack.yml portainer


sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/traefik.yml -o traefik.yml
sudo docker stack deploy -c traefik.yml traefik ;
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/monitor.yml -o monitor.yml
sudo docker stack deploy -c monitor.yml monitor
