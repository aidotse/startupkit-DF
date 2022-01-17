
# Startup kit for Data Factory training environment
Startup kit for the [AI Sweden](https://www.ai.se/en), [Data Factory](https://www.ai.se/en/data-factory), training environment, the DGXA100.

## Routines and way of working
No explicit root privileges are given to users. Instead case studies and projects are implemented within Docker images which are build and run on the server. Running Docker is however a privileges equivalent to root, and thus users must adhere to special care and responsibility. 

### Clean-up
The training environment is multi tenant and in order to not overflow the system with docker images, system administrators will regularly prune images by
````bash
docker system prune -a --volumes
````
This is a quite harsh clean-up; removing all unused images not just dangling ones; unused networks and volumes.

Also, run your docker images with **--rm** flag, which automatically clean up your work, for example
````bash
docker run -it --ipc=host --rm --runtime nvidia image_name
````

### Save and Load
It is a good practice to save your images, for example
````bash
docker save myimage:latest | gzip > myimage_latest.tar.gz
````
The image is easily loaded with
````bash
docker load < myimage_latest.tar.gz
````

### Assign a GPU
Assign a GPU using the environmental variable **CUDA_VISIBLE_DEVICES**, for example
````bash
docker run -it --ipc=host --rm --runtime nvidia \
-e CUDA_VISIBLE_DEVICES=0 \
image_name
````

### Local volumes
Finally, keep your work local and only mount volumes in your home catalog, for example 
````bash
docker run -it --ipc=host --rm --runtime nvidia \
-v /home/username/some_path:/app \
image_name
````
