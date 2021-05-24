git clone https://github.com/stefanprodan/swarmprom.git
cd swarmprom
export ADMIN_USER=admin
export ADMIN_PASSWORD=changethis
export HASHED_PASSWORD=$(openssl passwd -apr1 $ADMIN_PASSWORD)
export DOMAIN=concienciadesarrollista.com
curl -L dockerswarm.rocks/swarmprom.yml -o swarmprom.yml
docker stack deploy -c swarmprom.yml swarmprom
