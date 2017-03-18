#!/usr/bin/env bash

#  Get script path to ignore the current working directory and execute this script from every where
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# Build script for testing the Docker container
docker-compose build
docker tag oxid_oxid pebra/oxidce:latest

docker rmi oxid_oxid

popd
