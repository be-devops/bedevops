# echo '=================='
# echo '| Install docker |'
# echo '=================='
# sudo apt-get install -y git curl wget
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker your-user
# docker -v

echo '======================'
echo '| Build docker image |'
echo '======================'
docker build -t html-server-image:v1 .

echo '========'
echo '| DONE |'
echo '========'

echo '===================='
echo '| Remove container |'
echo '===================='
docker rm -f $(docker ps -a | grep html-server-image:v1 | awk '{print $1}')

echo '============================'
echo '| Run image expose port 80 |'
echo '============================'
docker run --name=fox -d -p 80:80 html-server-image:v1
