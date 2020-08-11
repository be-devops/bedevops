echo 'Build docker image'
docker build -t html-server-image:v1 .

echo 'DONE'

echo 'Remove container'
docker rm -f fox

echo 'Run image expose port 80'
docker run --name=fox -d -p 80:80 html-server-image:v1
