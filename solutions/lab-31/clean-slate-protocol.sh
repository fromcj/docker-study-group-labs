#!/usr/bin/env bash

docker stop $(docker ps --quiet)
docker rm --volumes --force $(docker ps --all --quiet)
docker rmi --force $(docker images --quiet)

docker-machine ssh bravo docker service rm hello-global
docker-machine ssh bravo docker service rm hello-constrained
docker-machine ssh bravo docker service rm hello-replicated
docker-machine ssh bravo docker service rm nginx
docker-machine ssh bravo docker service rm redis
docker-machine ssh bravo docker service ls
