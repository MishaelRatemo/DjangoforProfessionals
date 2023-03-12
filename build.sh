#!/bin/bash

echo "\n******************* $(date): Starting script **************\n\n" >> /home/mishael/coding/python/DJANGODevOps/bookstore/build.log 2>&1

# Navigate to the directory where your Docker Compose file is located
cd /home/mishael/coding/python/DJANGODevOps/bookstore/

# Build your Docker images andch
# docker-compose build

# Start your containers
docker compose up -d --build

# Monitor your containers
docker compose ps

echo "\n\n##############  $(date): Script completed Succcessfully  #############\n\n" >> /home/mishael/coding/python/DJANGODevOps/bookstore/build.log 2>&1