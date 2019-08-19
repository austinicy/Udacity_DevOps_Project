## Step 1:
# Download the base image
FROM nginx:alpine


## Step 2:
# Copy source code to working directory
COPY . /usr/share/nginx/html/


## Step 3:
# Expose port 80
EXPOSE 80


