#!/bin/bash
#docker build --no-cache --build-arg GIT_TIME=`git show -s --format=%cI HEAD` --build-arg GIT_HASH=`git show -s --format=%H HEAD` -t cybertec/pgwatch2-daemon:latest -f docker/Dockerfile-daemon .
docker build --no-cache --build-arg GIT_TIME=`git show -s --format=%cI HEAD` --build-arg GIT_HASH=`git show -s --format=%H HEAD` -t mon_test-daemon:1.1 -f docker/Dockerfile-daemon .

