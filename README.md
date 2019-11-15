Dockerfile that contains all python packages required to build scipy from scratch. 

docker build . -t mrathor_docker_image

docker run -it mrathor_docker_image /bin/bash
