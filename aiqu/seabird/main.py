#!/usr/bin/python3

#import sys
#from pathlib import Path

#current_path = Path.cwd()
#parent_path = current_path.parent
#sys.path.insert(0, str(parent_path))

from yolov5 import train

train.run(
    imgsz=416,
    epochs=2,
    batch_size=64,
    cfg="models/yolov5n.yaml",
    data="datadef/guillemots.yaml",
    weights="yolov5n.pt",
    project="runs/train",
    device=0,
    workers=2,
)
