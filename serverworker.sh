export USE_HOSTNAME=worker1.concienciadesarrollista.com
echo $USE_HOSTNAME > /etc/hostname
hostname -F /etc/hostname
apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm join --token SWMTKN-1-3i8f6own3s2e4d4yd48ksg9edvowiivfgmt5e1sp0qioj0u5zs-910esw3v4724oetj3im1tsyho 172.31.37.46:2377
#sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
#sudo docker stack deploy -c portainer-agent-stack.yml portainer
