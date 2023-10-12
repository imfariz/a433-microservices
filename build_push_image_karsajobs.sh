#! /bin/bash

# Membangun Image sesuai Dockerfile
docker build -t karsajobs .

# Mengubah nama image sesuai format GitHub Packages
docker tag karsajobs ghcr.io/imfariz/karsajobs

# Login ke Github Container Registry
echo $PASSWORD_GH | docker login ghcr.io -u imfariz --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/imfariz/karsajobs