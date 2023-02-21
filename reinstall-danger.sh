#!/bin/bash
sudo yum update
sudo yum upgrade -y

docker-compose stop
docker-compose down -v
docker-compose rm -f
docker system prune -a -f

docker-compose pull
docker-compose build
docker-compose up -d
