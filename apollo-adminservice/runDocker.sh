#!/bin/sh
docker build -t apollo-adminservice .
docker rm -f apollo-adminservice-dev
docker run -p 8061:8061 -d --name apollo-adminservice-dev -v /data/apollo/apollo-log/100003172:/opt/logs/100003172 apollo-adminservice