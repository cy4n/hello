#!/usr/bin/env bash

# break on error
set -e

# create
./mvnw verify -P buildDockerContainer

# get version
export POM_VERSION=$(mvn clean -o org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep -v 'INFO\|Download')

# release image on dockerhub
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker push "cy4n/hello:$POM_VERSION"
