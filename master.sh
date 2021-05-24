export USE_HOSTNAME=master1.concienciadesarrollista.com
echo $USE_HOSTNAME > /etc/hostname
hostname -F /etc/hostname
apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm init
#sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
#sudo docker stack deploy -c portainer-agent-stack.yml portainer
© 2021 GitHub, Inc.
