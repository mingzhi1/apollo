#!/bin/sh
docker build -t apollo-configservice .
docker run -p 8051:8080 -d --name apollo-configservice apollo-configservice