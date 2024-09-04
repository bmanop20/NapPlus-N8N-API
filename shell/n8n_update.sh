#!/bin/bash

export $(cat .env | xargs)


docker stop n8n
docker rm n8n
docker rmi docker.n8n.io/n8nio/n8n

docker run -dit --name n8n -p $N8N_PORT:5678 \
 -e DB_TYPE=postgresdb \
 -e DB_POSTGRESDB_DATABASE=$N8N_DB \
 -e DB_POSTGRESDB_HOST=$PGHOSTNAME \
 -e DB_POSTGRESDB_PORT=5432 \
 -e DB_POSTGRESDB_USER=postgres \
 -e DB_POSTGRESDB_SCHEMA=$N8N_DB \
 -e DB_POSTGRESDB_PASSWORD=$PGPASSWORD \
 -v n8n_data:/home/node/.n8n \
 --restart always \
 -e GENERIC_TIMEZONE="Asia/Bangkok" \
 -e TZ="Asia/Bangkok" \
 -e N8N_SECURE_COOKIE=false \
  docker.n8n.io/n8nio/n8n