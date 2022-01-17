# trino-docker

git clone https://github.com/tdarkow/trino-docker

cd trino-docker
# Changes
docker build -t darkow/repo:trino . --build-arg TRINO_VERSION=368

# Pull Latest
docker pull darkow/repo:trino

## Detached
docker container run -d --name trino -p 8000:8080 darkow/repo:trino

## attached
docker container run -it --name trino darkow/repo:trino sh



docker swarm join --token SWMTKN-1-5u31m54o1h3jz9gz3s68x6dc2lia65jzlnb3bznf6co9u6b54a-4hss20zx32kafan99waur8mx5 192.168.0.18:2377