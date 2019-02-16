#!/bin/bash

source vars
docker-compose pull node app
docker-compose up -d --remove-orphans
