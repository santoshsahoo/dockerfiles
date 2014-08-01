sudo docker.io run \
 	-d \
 	-v /var/log:/var/log \
 	-v /webapps:/usr/lib/apache-tomcat-7.0.55/webapps/ \
 	-p 808$1:8080 \
  	--name tomcat$1 \
 	my/tomcat