#! /bin/sh

docker.io build --rm -t my/apache2 apache2
docker.io build --rm -t my/mysql mysql
docker.io build --rm -t my/nginx-php nginx-php
docker.io build --rm -t my/php5 php5
docker.io build --rm -t my/redis redis
docker.io build --rm -t my/tomcat tomcat7