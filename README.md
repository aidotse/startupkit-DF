
# Startupkit-DF

Startup kit for the data factory. We are providing a simplified cookbook to get you started as soon as possible.

## Getting started 

To get started with running jobs on the data factory,  you just need to know 

1. What is a docker image 
2. What is a docker container
3. How do we mount the folders from your workspace to your docker conatiner
4. What are NGC docker images


Let's dive into the details then ! 

### What is a docker image?

If we have to grossly simplyfy what a docker image is, It's  like a lightweigt Virtual machine.

You can create a docker image in one of the two ways

1. Interactive method : By running a container from an existing Docker image, manually changing that container environment through a series of live steps and saving the resulting state as a new image.
2. Dockerfile method : By constructing a plain-text file, known as a Dockerfile, which provides the specifications for creating a Docker image.


### What is a docker container?

A docker container is merely a snapshot of the virtual environment.  


## Creating a docker image and it's docker container

### Dockerfile Method:

> cd Docker  
> sh build.sh 

This will create a docker image called custom\_docker\_image. You can change the name of the docker image in build.sh. It has been already installed with the packages you mentioned in the dockerfile and misc/requirements.txt.

#### Creating a container from the docker image

> cd Docker  
> sh run.sh

This will start an instance of the docker image(which means a docker container)

### Interactive method:

In the interactive method, we work with already existing docker images so we don't have to build a docker image on the data factory. The run scripts given below pull the docker image from a public docker registry (here its nvidia ngc https://ngc.nvidia.com/catalog/containers/) and start a conatiner

> cd Docker 

tensorflow:
> sh run\_interactive\_tensorflow2.0.sh

pytorch
> sh run\_interactive\_pytorch.sh 


Any chnages to the packages inside the docker container wont be persistent unless you commit the changes to your docker image. See https://docs.docker.com/engine/reference/commandline/commit/

> docker ps
> docker commit  <instance_name> <your_docker_image_name>
