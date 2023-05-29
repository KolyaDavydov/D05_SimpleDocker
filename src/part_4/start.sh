#!/bin/bash

echo "Current images:"
docker images
echo
echo "Build new image..."
docker build . -t new:1.0
echo
echo "Current images:"
docker images
echo
echo "running container..."
docker run -d  -p 80:81 --name new_con new:1.0
echo
echo "Curren container:"
docker ps
echo
echo "Checking result: curl localhost:81:"
curl localhost:80
echo
echo "Checking serverstatus:"
curl localhost:81/status