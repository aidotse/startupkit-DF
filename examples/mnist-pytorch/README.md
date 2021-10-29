# Basic MNIST Example

This example builds a Docker image that that sets up the [PyTorch MNIST](https://github.com/pytorch/examples/tree/master/mnist) example.

## Building/Creating a docker image

> sh build.sh 

## Starting a container from the docker image

> sh run.sh

This will start an instance of the docker image. 

Note that you probably would need to change the CUDA_VISIBLE_DEVICES parameter to appropriate value.
