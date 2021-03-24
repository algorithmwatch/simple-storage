#!/usr/bin/env bash

docker rm simplestorage || true
docker run -it --rm --name simplestorage -p 5000:5000 -v ${PWD}:/code/ simplestorage
