#!/usr/bin/env bash

docker rm -f $(docker ps -a | grep bedevops-homepage | awk '{print $1}')
docker rmi -f $(docker images | grep bedevops-homepage | awk '{print $1}')
