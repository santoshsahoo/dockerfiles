FROM ubuntu:14.04

MAINTAINER santoshsahoo

RUN apt-get update -qq
RUN apt-get dist-upgrade -yqq

RUN apt-get install nginx -yqq
ADD ./server-configs-nginx /etc/nginx

RUN adduser www
RUN mkdir /usr/share/nginx/logs/ -p

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN ln -s "/etc/nginx/sites-available/example.com" "/etc/nginx/sites-enabled/example.com"

ENTRYPOINT "/usr/sbin/nginx"
CMD ["-c", "/etc/nginx/nginx.conf"]

EXPOSE 80