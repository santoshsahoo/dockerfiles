dbpath='/var/mysql'
if [ ! -d $dbpath/log ];then sudo mkdir $dbpath/log -p; fi
if [ ! -d $dbpath/data ];then sudo mkdir $dbpath/data -p; fi
sudo docker.io run \
 	-d \
 	-v $dbpath/log:/var/log \
 	-v $dbpath/data:/var/lib/mysql \
 	-p 3306:3306 \
 	--name db01 \
 	my/mysql