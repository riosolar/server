#!/bin/bash

export DOMAIN=riocuartonoticias.online
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add portainer.portainer-data=true $NODE_ID


