#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
dockerswarm init


