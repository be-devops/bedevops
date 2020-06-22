#!/usr/bin/env bash
commitid=git log -1 --pretty=format:%h

echo "You are running in commit $commitid"

if [ $# -gt 0 ]; then
  username=$1
else
  echo "Please input your username in hub.docker"
  read -p "Please input your username in hub.docker [googlesky]: " name
  username=${name:-googlesky}
fi

if [ -z "$username" ]; then
  echo "Username is empty!"
  exit
fi

docker tag bedevops-homepage:$commitid $username/bedevops-homepage:$commitid
docker tag bedevops-homepage:$commitid $username/bedevops-homepage:latest
docker push $username/bedevops-homepage:$commitid
docker push $username/bedevops-homepage:latest
