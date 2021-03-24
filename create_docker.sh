#!/usr/bin/env bash

docker rm simplestorage || true
docker create --name simplestorage -p 5000:5000 -v ${PWD}:/code/ simplestorage
