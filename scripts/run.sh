#!/bin/bash

NAME="dn_dab_deformable_detr"
PROJECT_NAME="chick"
NUM_CLASSES = 3

python -m torch.distributed.launch main.py -m $NAME --output_dir logs/$PROJECT_NAME/$NAME --batch_size 1 --epochs 300 --lr_drop 20 --coco_path ~/detr/datasets/$PROJECT_NAME --use_dn --wandb_name $NAME --finetune_ignore class_embed label_enc --pretrain_model_path models/dn_dab_deformable_detr/checkpoint0049.pth --transformer_activation relu --wandb_project_name $PROJECT_NAME --num_classes $NUM_CLASSES
