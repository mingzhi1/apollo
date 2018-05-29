#!/bin/sh
sh scripts/build.sh
sh apollo-portal/runDocker.sh
sh apollo-configservice/runDocker.sh
sh apollo-adminservice/runDocker.sh