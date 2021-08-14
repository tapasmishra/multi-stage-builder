#!/bin/bash
#set -euo pipefail
#IFS=$'\n\t'
LPINE_VERSION="3.14.1"
IMAGE_TAG="2021-14-08"
docker build --build-arg ALPINE_VERSION=$LPINE_VERSION -t linuxfunda/multistage-builder:$IMAGE_TAG .
docker login
docker push linuxfunda/multistage-builder:$IMAGE_TAG
docker tag linuxfunda/multistage-builder:$IMAGE_TAG linuxfunda/multistage-builder:latest
docker push linuxfunda/multistage-builder:latest