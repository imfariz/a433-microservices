#! /bin/bash

# Membangun Image sesuai Dockerfile
docker build -t item-app:v1 .

# Melihat daftar local image
docker images

# Mengubah nama image sesuai format Docker Hub
# docker tag item-app:v1 imfariz/item-app:v1

# Mengubah nama image sesuai format GitHub Packages
docker tag item-app:v1 ghcr.io/imfariz/item-app:v1

# Login ke Docker Hub
# echo $PASSWORD_DOCKER_HUB | docker login -u imfariz --password-stdin

# Login ke Github Container Registry
echo $PASSWORD_GH | docker login ghcr.io -u imfariz --password-stdin

# Mengunggah image ke Docker Hub
# docker push imfariz/item-app:v1

# Mengunggah image ke GitHub Packages
docker push ghcr.io/imfariz/item-app:v1