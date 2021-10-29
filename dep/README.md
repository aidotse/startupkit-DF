
These instruction and scripts have been deprecated. Consider the [examples](../examples/README.md) instead.  

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

#### Building/Creating a docker image

> cd Docker  
> sh build.sh 

This will create a docker image called custom\_docker\_image. You can change the name of the docker image in build.sh. It has been already installed with the packages you mentioned in the dockerfile and misc/requirements.txt.

#### Starting a container from the docker image

> cd Docker  
> sh run.sh

This will start an instance of the docker image(which means a docker container)

## Important

Code changes will be persistent if you follow the above procedure but any changes to the packages inside the docker container wont be persistent unless you commit the changes to your docker image. See https://docs.docker.com/engine/reference/commandline/commit/
 
Exit the docker container and run 
 
> docker commit  <container_id> <your_docker_image_name> 


