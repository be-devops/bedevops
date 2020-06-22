#!/bin/bash

commitid=git log -1 --pretty=format:%h
echo "You are running in commit $commitid"
if [ $# -gt 0 ]; then
    port=$1
    docker rm -f $(docker ps -a | grep $port->80 | awk '{print $1}' || true) > /dev/null || true;
    docker run --name bedevops-homepage -d -p $port:80 -v $PWD:/usr/local/apache2/htdocs/ httpd:latest
else
    docker rm -f $(docker ps -a | grep 80->80 | awk '{print $1}' || true) > /dev/null || true;
    docker run --name bedevops-homepage -d -p 80:80 -v $PWD:/usr/local/apache2/htdocs/ httpd:latest
fi


#docker build -t bedevops-homepage:$commitid .
#docker rm -f $(sudo docker ps -a | grep bedevils-homepage | awk '{print $1}')
#docker run -d -p 80:80 bedevops-homepage:$commitid
