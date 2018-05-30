#!/bin/sh
docker build -t apollo-adminservice .
docker rm -f apollo-adminservice
docker run -p 8061:8061 -d --name apollo-adminservice apollo-adminservice