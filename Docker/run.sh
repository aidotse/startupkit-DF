#!/bin/bash
# File              : run.sh
# Author            : Sheetal Reddy <sheetal.reddy@ai.se>
# Date              : 23.10.2020
# Last Modified Date: 23.10.2020
# Last Modified By  : Sheetal Reddy <sheetal.reddy@ai.se>

ROOT_DIR=$PWD/..
DATA_DIR=$ROOT_DIR/data
CODE_DIR=$ROOT_DIR/src

export UID=$(id -u)
export GID=$(id -g)

username=$(whoami)


grep "^${username}:" /etc/passwd > .passwd.$$
grep "^${username}:" /etc/group > .group.$$

nvidia-docker  run   \
	--name mycontainer \
	--user $UID:$GID \
	--volume="$(pwd)/.group.$$:/etc/group:ro" \
	--volume="$(pwd)/.passwd.$$:/etc/passwd:ro" \
	-v $DATA_DIR:/home/$username/data \
	-v $CODE_DIR:/home/$username/src \
	-it custom_docker_image \
	bash




rm .passwd.$$
rm .group.$$
