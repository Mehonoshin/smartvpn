#!/bin/bash
# This script assumes that we already have prepared `vars` file, that contains all
# required environment variables.
# It is used as a part of initial installation process, but also can be used to re-run
# docker containers with billing and openvpn server.

source vars
docker-compose pull node app
docker-compose up -d --remove-orphans
