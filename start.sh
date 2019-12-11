#/bin/bash

## start containers
docker-compose up -d

BASEPATH=$(dirname $(readlink -f $0))
echo $BASEPATH
sudo $BASEPATH/manage-etc-hosts.sh addhost alpine.docker.localhost
sudo $BASEPATH/manage-etc-hosts.sh addhost portainer.docker.localhost
sudo $BASEPATH/manage-etc-hosts.sh addhost phpmyadmin.docker.localhost