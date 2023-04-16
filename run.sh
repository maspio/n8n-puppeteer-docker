#!/bin/bash
source ./env.sh
docker stop n8n
docker rm n8n
docker image rm ghcr.io/cajuclc/n8n-puppeteer-docker:main
docker run -d -it \
    --restart always \
    --privileged \
    --shm-size=1gb \
	--name n8n \
	-p 5678:5678 \
	-v ~/.n8n:/home/node/.n8n \
	ghcr.io/cajuclc/n8n-puppeteer-docker:main \
	n8n start --tunnel
