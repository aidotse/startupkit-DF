#!/bin/bash
set -e

IMAGE_NAME="speedtest-cli"

docker run -it --rm --runtime nvidia \
$IMAGE_NAME \
speedtest-cli 
