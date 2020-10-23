
ROOT_DIR=$PWD/..
DATA_DIR=$ROOT_DIR/data
CODE_DIR=$ROOT_DIR/src

nvidia-docker  run   \
	-v $DATA_DIR:/data \
	-v $CODE_DIR:/src \
	-it custom_docker_image \
	bash 



