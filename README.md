dockerfiles
===========
A collection of reusable docker files for everyday systems. Customize them for your needs

####To build the images run
sudo sh < build.sh

###apache2
docker run -d -p 8080:80 -v $(pwd)/www:/var/www/html --name "web10"  my/apache2

###nginx
docker run -d -p 8081:80 -v $(pwd)/www:/sites/example.com/public --name web1 my/nginx
and navigate example.com:8080 (ofcourse you need hosts file mapping to example.com)