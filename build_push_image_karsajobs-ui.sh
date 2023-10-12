#! /bin/bash

# Membangun Image sesuai Dockerfile
docker build -t karsajobs-ui .

# Mengubah nama image sesuai format GitHub Packages
docker tag karsajobs-ui ghcr.io/imfariz/karsajobs-ui

# Login ke Github Container Registry
echo $PASSWORD_GH | docker login ghcr.io -u imfariz --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/imfariz/karsajobs-ui
