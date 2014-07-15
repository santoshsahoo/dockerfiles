FROM ubuntu:14.04

MAINTAINER santoshsahoo

RUN apt-get update -qq
RUN apt-get dist-upgrade -yqq

RUN apt-get install apache2 -yqq
RUN apt-get install php5 php5-fpm php5-curl php5-mysql php5-pgsql -yqq

ENV APACHE_SERVERADMIN admin@localhost
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERALIAS localhost
ENV APACHE_DOCUMENTROOT /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN mkdir /var/lock/apache2 -p

ADD php5/php.ini /etc/php5/fpm/php.ini
ADD php5/php-fpm.conf /etc/php5/fpm/php-fpm.conf

ADD "startserver" "/startserver"

VOLUME ["/var/log"]
VOLUME ["/var/www"]

ENTRYPOINT ["/startserver"]

EXPOSE 80