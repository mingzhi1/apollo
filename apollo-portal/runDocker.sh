#!/bin/sh
docker build -t apollo-portal .
docker rm -f apollo-portal
docker run -p 9090:8080 -d --name apollo-portal apollo-portal