#!/bin/sh
docker build -t apollo-configservice .
docker rm -f apollo-configservice
docker run -p 8051:8051 -d --name apollo-configservice apollo-configservice