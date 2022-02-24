
# Detecting Seabirds using yolov5
In this demo we will use the [Baltic Seabird Dataset](https://www.ai.se/en/data-factory/datasets/data-factory-datasets/baltic-seabird-dataset) to train a model detecting; adults, chicks and eggs, using [yolov5](https://github.com/ultralytics/yolov5).

## Prerequisites
This demo is using Linux, Ubuntu 20.04.

## Train the model on AiQu
In AiQu, set up a new job:

Job label: seabird \
Number Of GPUs: 1 GPU \
Time: 30 \
Image: eriksaidotse/yolov5_v6.0_env \
Ports: 8888, 22 \
Queue: dgx_a101_ai_sweden (interactive) \
Command: leave this empty \
Project: your project \
Folders to mount: 
| Folder to mount   | Mount location |
| :---        |    :---  | 
| /baltic_seabird	      | baltic_seabird       | 
| /Home Catalog   | home        | 

Press 'QUEUE JOB'. This will start the job. 

Open the a terminal and
````bash
cd /home
````
Note that changes made in '/home' will persist, since the 'Home Catalog' is mounted in the job.

First time you would need to clone the source code, see below :triangular_flag_on_post:.

Start the training with
````bash
python3 main.py
````
The results will be written to 'runs/expX'.

Before launching the main.py script you might also like to adjust the parameters in [main.py](./main.py).

### :triangular_flag_on_post: Clone the source code
Clone the AI Sweden startup kit:
````bash
git clone https://github.com/aidotse/startupkit-DF.git
cd startupkit-DF/aiqu/seabird
````

Clone the yolov5 code:
````bash
git clone https://github.com/ultralytics/yolov5.git
````

## Build the Docker image and push your image
This step is not strictly necessary. A prebuilt model, 'eriksaidotse/yolov5_v6.0_env', is all ready available on Docker Hub, and also downloaded to the DGX.

However a good exercise would be to build and upload your own model.

````bash
cd build
sh build.sh
````
Finally, upload the image to your [Docker Hub](https://hub.docker.com/) account.

## Run the Docker image -locally
:carousel_horse: Note that this step is only if would like to run the demo outside AiQu, for example, locally on your desktop. 

Fist make appropriate adjustments in the [scrips/run.sh](./scripts/run.sh) file, for example, set your path to the data. Also make sure that the paths in [guillemots.yaml](./datadef/guillemots.yaml) make sense.

Finally, perhaps adjust the parameters in [main.py](./main.py).

````bash
cd scripts
sh run.sh
````
