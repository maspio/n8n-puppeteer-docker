#!/bin/bash
source ./env.sh
docker run -it --rm \
    --privileged \
    --shm-size=1gb \
	--name n8n \
	-p 5678:5678 \
	-v ~/.n8n:/home/node/.n8n \
	n8n-puppeteer:$N8N_VERSION