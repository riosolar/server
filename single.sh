#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/stack.yml -o stack.yml
sudo docker stack deploy -c stack.yml wordpress
export DOMAIN=panel2.concienciadesarrollista.com
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add portainer.portainer-data=true $NODE_ID
curl -L dockerswarm.rocks/portainer.yml -o portainer.yml
docker stack deploy -c portainer.yml portainer
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/traefik.yml -o traefik.yml
sudo docker stack deploy -c traefik.yml traefik ;
sudo curl -L https://raw.githubusercontent.com/riosolar/server/main/monitor.yml -o monitor.yml
sudo docker stack deploy -c monitor.yml monitor
