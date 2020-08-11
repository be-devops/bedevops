# bedevops.edu.vn

## Demo
* [Fox](https://bedevops.edu.vn/bedevops/fox/)
* [Edusite](https://bedevops.edu.vn/bedevops/edusite/)

## Usage
| Install docker |

sudo apt-get install -y git curl wget

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker $USER

docker -v

| Build docker image |

docker build -t html-server-image:v1 .

| DONE |

| Remove container |

docker rm -f $(docker ps -a | grep html-server-image:v1 | awk '{print $1}')

| Run image expose port 80 |

docker run --name=fox -d -p 80:80 html-server-image:v1
