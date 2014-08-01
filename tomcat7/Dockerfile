FROM ubuntu:14.04

MAINTAINER santoshsahoo

RUN apt-get update -qq
RUN apt-get dist-upgrade -yqq

RUN apt-get install openjdk-7-jdk wget -yqq --no-install-recommends
RUN wget http://www.motorlogy.com/apache/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar -xf apache-tomcat-7.0.55.tar.gz -C /usr/lib/

RUN rm -rf /usr/lib/apache-tomcat-7.0.55/webapps/
ADD server.xml /usr/lib/apache-tomcat-7.0.55/conf/
ADD start /

ENTRYPOINT /start

EXPOSE 8080