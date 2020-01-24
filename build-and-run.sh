#!/bin/bash

# i usually run these separately, for testing
docker build -t flask:0.8 .
docker run --rm --name=flask -p 3001:3001 flask:0.8
docker run --rm --name=flask -p 127.0.0.1:3001:3001 flask:0.8

# lsof -nP -i4TCP:3001

# docker run -d --rm -it --name=flask -p 3001:3001 flask:0.8

# http://0.0.0.0:3001/handled
# http://127.0.0.1:3001/handled