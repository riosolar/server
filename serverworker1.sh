export USE_HOSTNAME=worker3.concienciadesarrollista.com
echo $USE_HOSTNAME > /etc/hostname
hostname -F /etc/hostname
apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm join --token SWMTKN-1-2e12ybkzxnb8qtlvbptjlqza50qvttuzdk843utk8b4wv8ze1o-chi2sz8rikiesl0w1590l8qoh 172.31.91.73:2377
#sudo curl -L https://downloads.portainer.io/portainer-agent-stack.yml -o portainer-agent-stack.yml
#sudo docker stack deploy -c portainer-agent-stack.yml portainer
