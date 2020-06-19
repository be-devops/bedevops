sudo docker build -t html-server-image:v1 .
sudo docker rm -f $(sudo docker ps -a | grep fox | awk '{print $1}')
sudo docker run --name=fox -d -p 80:80 html-server-image:v1