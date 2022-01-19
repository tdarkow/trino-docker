# trino-docker

git clone https://github.com/tdarkow/trino-docker

cd trino-docker
# Changes
docker build -t darkow/repo:trino . --build-arg TRINO_VERSION=368

# Pull Latest
docker pull darkow/repo:trino

## Detached
docker container run -d --name trino -p 8080:8080 darkow/repo:trino

## attached
docker container run -it --name trino darkow/repo:trino /bin/bash

buildah from ubi8
buildah run ubi8-working-container yum install less -y
buildah run ubi8-working-container yum install java-1.8.0-openjdk -y
buildah run ubi8-working-container yum module install python39/build -y
buildah run ubi8-working-container alternatives --set python /usr/bin/python3
buildah run ubi8-working-container groupadd trino --gid 1000
buildah run ubi8-working-container useradd trino --uid 1000 --gid 1000
buildah run ubi8-working-container mkdir -p /usr/lib/trino /data/trino /opt/trino
buildah run ubi8-working-container chown -R "trino:trino" /usr/lib/trino /data/trino /opt/trino
buildah commit ubi8-working-container trino
podman login docker.io
podman push trino darkow/trino:edt
