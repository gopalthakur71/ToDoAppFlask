#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull gopal71/my-flask-app:v1

# Run the Docker image as a container
docker run -d  -p 5000:5000 gopal71/my-flask-app:v1