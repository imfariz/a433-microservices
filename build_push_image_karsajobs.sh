#! /bin/bash

# Membangun Image sesuai Dockerfile
docker build -t karsajobs:latest .

# Mengubah nama image sesuai format GitHub Packages
docker tag karsajobs:latest ghcr.io/imfariz/karsajobs:latest

# Login ke Github Container Registry
echo $PASSWORD_GH | docker login ghcr.io -u imfariz --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/imfariz/karsajobs:latest
