#!/bin/bash

echo "clean up docker"
#echo "docker system prune -f ; docker network prune -f ; docker volume prune -f ; docker rm -f -v $(docker ps -q -a)"
#docker system prune -f ; docker network prune -f ; docker volume prune -f ; docker rm -f -v $(docker ps -q -a)
docker-compose down

echo "create keys"
#./create-keys.sh

echo "docker up"
docker-compose up fluent-bit
