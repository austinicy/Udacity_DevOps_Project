#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t html-website:v1 .

# Step 2: 
# Run the html page
docker run -d -p 80:80 html-website:v1
