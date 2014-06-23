#! /bin/sh

docker.io build --rm -t ubuntu14base ubuntubase
docker.io build --rm -t apache2 apache2
docker.io build --rm -t mysql5 mysql
docker.io build --rm -t nginx nginx
docker.io build --rm -t php5 php5
docker.io build --rm -t redis redis