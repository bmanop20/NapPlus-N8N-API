#!/bin/bash
export $(cat .env | xargs)

docker run -dit --name $PGHOSTNAME --hostname $PGHOSTNAME  -e POSTGRES_PASSWORD=$PGPASSWORD -p $PGPORT:5432 -v postgres_data:/var/lib/postgresql/data --restart always  postgres