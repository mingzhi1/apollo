#!/bin/sh
docker build -t apollo-portal .
docker rm -f apollo-portal
docker run -p 9090:8080 -d --name apollo-portal -v /data/temp/apollo-log/100003173:/opt/logs/100003173 apollo-portal