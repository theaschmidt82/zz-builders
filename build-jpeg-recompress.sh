#!/bin/bash

#docker image rm -f zz-build-jpeg-recompress
docker buildx create --name multiarch --driver docker-container --use
docker buildx build --platform linux/amd64,linux/arm64 -t zz-build-jpeg-recompress jpeg-recompress --push
