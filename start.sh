#!/bin/sh
sh scripts/build.sh
cd apollo-portal/
sh apollo-portal/runDocker.sh
cd -
cd apollo-configservice/
sh apollo-configservice/runDocker.sh
cd -
cd apollo-adminservice/
sh apollo-adminservice/runDocker.sh