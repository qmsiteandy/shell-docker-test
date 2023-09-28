#!/bin/bash

# Program :
# 	Build image and push to gitlab container registry

# Usage command :
#   sh ./scripts/build_push.sh <image_name> <username> <password>

TEAM_NAME="myteam2255939"
PROJECT_NAME="test"

IMAGE_NAME=$1
USERNAME=$2
PASSWORD=$3

# Building image
echo "Building image..."
docker build -t registry.gitlab.com/$TEAM_NAME/$PROJECT_NAME/$IMAGE_NAME .

# Login gitlab container registry
echo "Login gitlab container registry..."
docker login registry.gitlab.com -u $USERNAME -p $PASSWORD

# Pushing image to gitlab container registry
echo "Pushing image..."
docker push registry.gitlab.com/$TEAM_NAME/$PROJECT_NAME/$IMAGE_NAME