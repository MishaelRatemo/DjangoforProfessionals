#!/bin/bash

echo "******************* $(date): Starting script **************" >> /home/mishael/coding/python/DJANGODevOps/bookstore/build.log 2>&1

echo 

# Navigate to the directory where your Docker Compose file is located
cd /home/mishael/coding/python/DJANGODevOps/bookstore/

# Build your Docker images andch
# docker-compose build

# Start your containers
docker compose up -d --build

# Monitor your containers
docker compose ps

echo "##############  $(date): Script completed Succcessfully  #############" >> /home/mishael/coding/python/DJANGODevOps/bookstore/build.log 2>&1

echo