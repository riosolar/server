#!/bin/bash

export DOMAIN=riocuartonoticias.online
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add portainer.portainer-data=true $NODE_ID
wget https://raw.githubusercontent.com/riosolar/server/main/wp.yml
mv wp.yml docker-compose.yml
docker stack deploy -c docker-compose.yml wordpress


