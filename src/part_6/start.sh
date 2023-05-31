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
docker run -it -p 80:81 --name new_con -d new:1.0
echo
echo "Curren container:"
docker ps
echo
echo "Checking result: curl localhost:80:"
sleep 1
curl localhost:80
echo
echo "Checking serverstatus:"
curl localhost:80/status