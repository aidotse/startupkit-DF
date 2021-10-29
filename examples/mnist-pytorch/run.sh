#!/bin/bash
set -e

IMAGE_NAME="pytorch_mninst"

ROOT_DIR=$PWD

username=$(whoami)

docker run -it --rm --runtime nvidia \
-e CUDA_VISIBLE_DEVICES=0 \
-v $ROOT_DIR:/home/$username \
$IMAGE_NAME \
python3 main.py
