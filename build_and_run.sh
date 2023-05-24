#!/bin/bash

# Build the Docker image
docker build -t restaurant .

# Run the Docker container
docker run -p 8080:8080 --name restaurant -v ./docs:/usr/share/nginx/html restaurant
