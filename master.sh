export USE_HOSTNAME=master3.concienciadesarrollista.com
echo $USE_HOSTNAME > /etc/hostname
hostname -F /etc/hostname
apt-get update -y
apt-get upgrade -y
apt-get install docker.io docker-compose -y
docker swarm join --token SWMTKN-1-3i8f6own3s2e4d4yd48ksg9edvowiivfgmt5e1sp0qioj0u5zs-3zr1shqnshuv06mkbkf1lwwu1 172.31.37.46:2377

