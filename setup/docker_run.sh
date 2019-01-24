#!/bin/bash

docker-compose pull node app
docker-compose up -d --remove-orphans --no-recreate
