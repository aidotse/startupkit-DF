 File              : README.md
 Author            : Sheetal Reddy <sheetal.reddy@ai.se>
 Date              : 23.10.2020
 Last Modified Date: 23.10.2020
 Last Modified By  : Sheetal Reddy <sheetal.reddy@ai.se>
# startupkit-DF

Startup kit for the data factory


##Getting started 

To get started with running jobs on the data factory,  you just need to know 

1. what is a docker image 
2. what is a docker container
3. How do we mount the folders from your workspace to your docker conatiner


Let's dive into the details then ! 

### what is a docker image?

####Building a docker image 

You can create a docker image in one of the two ways

1. Interactive method : By running a container from an existing Docker image, manually changing that container environment through a series of live steps and saving the resulting state as a new image.
2. Dockerfile method : By constructing a plain-text file, known as a Dockerfile, which provides the specifications for creating a Docker image.

Interactive method:

sh run\_interactive.sh

Dockerfile Method:

cd Docker 
sh build.sh 

This is going to build a docker image called custom\_docker\_image. The custom\_docker\_image is like a lighter VM. It has been already installed with the packages you mentioned in the dockerfile.



### what is a docker container?

A docker container is merely a snapshot of the virtual environment.   
