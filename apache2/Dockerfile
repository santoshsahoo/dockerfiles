FROM ubuntu14base
MAINTAINER santoshsahoo

RUN apt-get install apache2 -yqq

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN service apache2 restart

EXPOSE 80