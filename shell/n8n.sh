#!/bin/bash

docker stop n8n
docker rm n8n
docker rmi docker.n8n.io/n8nio/n8n

docker run -dit --name n8n -p 5678:5678 \
 -v n8n_data:/home/node/.n8n \
 --restart always \
 -e GENERIC_TIMEZONE="Asia/Bangkok" \
 -e TZ="Asia/Bangkok" \
 -e N8N_SECURE_COOKIE=false \
  docker.n8n.io/n8nio/n8n