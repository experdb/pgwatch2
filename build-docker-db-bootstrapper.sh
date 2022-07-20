#!/bin/bash
#docker build --no-cache -t cybertec/pgwatch2-db-bootstrapper:latest -f docker/Dockerfile-db-bootstrapper .
docker build --no-cache -t mon_test-db-bootstrapper:1.1 -f docker/Dockerfile-db-bootstrapper .
