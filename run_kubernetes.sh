#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=zhengbill/app


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myapp --image=docker.io/$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#docker run -p 8000:80 app
kubectl port-forward deployment/myapp 8000:80