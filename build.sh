#!/bin/bash

commitid=git log -1 --pretty=format:%h
echo "You are running in commit $commitid"

docker rmi -f $(docker images | grep bedevops-homepage | awk '{print $1}')
docker build -t bedevops-homepage:$commitid .


echo "Do you wish to push this image to hub.docker?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) bash $PWD/push.sh; break;;
        No ) exit;;
    esac
done
