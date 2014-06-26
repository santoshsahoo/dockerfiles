FROM my/ubuntu14base
MAINTAINER santoshsahoo

RUN apt-get install mysql-server -yqq
RUN mkdir /var/run/mysqld/ -p

ENTRYPOINT "/usr/sbin/mysqld"
CMD ["/etc/mysql/my.cnf"]