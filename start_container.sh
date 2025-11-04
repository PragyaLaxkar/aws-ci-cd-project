#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
sudo docker pull pragya2902/shopping-website

# Run the Docker image as a container
sudo docker run -d -p 80:80 pragya2902/shopping-website
