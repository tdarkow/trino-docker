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



