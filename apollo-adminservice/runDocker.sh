#!/bin/sh
docker build -t apollo-adminservice .
docker run -p 8061:8090 -d --name apollo-adminservice apollo-adminservice