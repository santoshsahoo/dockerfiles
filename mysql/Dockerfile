FROM ubuntu:14.04

MAINTAINER santoshsahoo

RUN apt-get update -qq
RUN apt-get dist-upgrade -yqq

RUN apt-get install mysql-server -yqq
RUN mkdir /var/run/mysqld/ -p

ADD my.cnf /etc/mysql/
ADD start-dbserver /start-dbserver

ENTRYPOINT "/start-dbserver"