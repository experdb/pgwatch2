#!/bin/bash
#docker build --no-cache --build-arg GIT_TIME=`git show -s --format=%cI HEAD` --build-arg GIT_HASH=`git show -s --format=%H HEAD` -t cybertec/pgwatch2-nonroot:latest -f docker/Dockerfile-nonroot .

docker build --no-cache --build-arg GIT_TIME=`git show -s --format=%cI HEAD` --build-arg GIT_HASH=`git show -s --format=%H HEAD` -t mon_test-nonroot:1.1 -f docker/Dockerfile-nonroot .
