#!/bin/bash

set -e

IMAGE_NAME="yolov5_v6.0_env"

docker build -f Dockerfile -t $IMAGE_NAME .
