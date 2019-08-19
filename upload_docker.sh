#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=zhengbill/app

# Step 2:  
# Authenticate & tag
DOCKER_USER=zhengbill
DOCKER_PASS=************
docker login --username=$DOCKER_USER --password=$DOCKER_PASS --password-stdin
docker tag app $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath