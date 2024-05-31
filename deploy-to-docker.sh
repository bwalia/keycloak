#!/bin/bash
# Date: 2024 03 05 7:50AM
# Docker dev env setup script
# Usage: ./deploy-to-docker.sh [env]
# Example: ./deploy-to-docker.sh dev
# Note: Do not run this against Kubernetes cluster


docker-compose up down
docker-compose up --remove-orphans --build

DOCKER_CONTAINER_NAME=kc_server

docker cp ./themes ${DOCKER_CONTAINER_NAME}:/opt/keycloak

docker exec -it ${DOCKER_CONTAINER_NAME} bash
