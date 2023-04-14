#!/bin/bash
source ./env.sh
docker build --build-arg N8N_VERSION=$N8N_VERSION -t n8n-puppeteer:$N8N_VERSION .