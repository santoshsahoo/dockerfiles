#! /bin/sh

docker.io build -t my/ubuntu14base ubuntubase
docker.io build --rm -t my/apache2 apache2
docker.io build --rm -t my/mysql mysql
docker.io build --rm -t my/nginx nginx
docker.io build --rm -t my/php5 php5
docker.io build --rm -t my/redis redis