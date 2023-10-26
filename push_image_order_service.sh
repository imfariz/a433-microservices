#! /bin/bash

# Membangun Image sesuai Dockerfile
docker build -t orderservice:latest .

# Mengubah nama image sesuai format GitHub Packages
docker tag orderservice:latest ghcr.io/imfariz/orderservice:latest

# Login ke Github Container Registry
echo $PASSWORD_GH | docker login ghcr.io -u imfariz --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/imfariz/orderservice:latest
