#!/bin/bash

echo 'start'

cd docker-compose-nginx-ui-web/
pwd
docker-compose up -d

cd ../
cd ui-for-docker/ 
pwd
docker run -d -p 9000:9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker
