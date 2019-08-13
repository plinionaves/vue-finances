#!/bin/bash

echo "Running docker-compose $1..."

yes | cp $2 .env

docker-compose -f docker-compose.yml -f docker-compose.prod.yml $1