#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
curl -L https://raw.githubusercontent.com/riosolar/server/main/stack.yml -o stack.yml
docker stack deploy -c stack.yml wordpress

