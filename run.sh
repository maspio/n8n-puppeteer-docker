#!/bin/bash
source ./env.sh
docker stop n8n
docker rm n8n
docker images rm n8n-puppeteer:$N8N_VERSION
docker run -d -it \
    --restart always \
    --privileged \
    --shm-size=1gb \
	--env NODE_FUNCTION_ALLOW_BUILTIN="*" \
	--env NODE_FUNCTION_ALLOW_EXTERNAL="*" \
	--name n8n \
	-p 5678:5678 \
	-v ~/.n8n:/home/node/.n8n \
	n8n-puppeteer:$N8N_VERSION \
	n8n start --tunnel
