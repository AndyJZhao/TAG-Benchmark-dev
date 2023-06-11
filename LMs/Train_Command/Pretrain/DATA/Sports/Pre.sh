#! TDK
Base
CUDA_VISIBLE_DEVICES=0 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Bert --warmup_epochs=1 --gpus=0 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Bert/Base/

CUDA_VISIBLE_DEVICES=1 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Deberta --warmup_epochs=1 --gpus=1 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Deberta/Base/

CUDA_VISIBLE_DEVICES=2 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=RoBerta --warmup_epochs=1 --gpus=2 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/RoBerta/Base/

CUDA_VISIBLE_DEVICES=3 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Electra-base --warmup_epochs=1 --gpus=3 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Electra/Base/

#! TCL
Base
CUDA_VISIBLE_DEVICES=0 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=2 --lr=5e-05 --model=Bert --warmup_epochs=1 --gpus=0 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Bert/Base/

CUDA_VISIBLE_DEVICES=1 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=2 --lr=5e-05 --model=Deberta --warmup_epochs=1 --gpus=1 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Deberta/Base/

CUDA_VISIBLE_DEVICES=2 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=2 --lr=5e-05 --model=RoBerta --warmup_epochs=1 --gpus=2 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/RoBerta/Base/

CUDA_VISIBLE_DEVICES=3 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=2 --lr=5e-05 --model=Electra-base --warmup_epochs=1 --gpus=3 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Electra/Base/

#!TCL+TDK
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TTT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Bert --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Bert/Base/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Deberta --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Deberta/Base/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=RoBerta --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/RoBerta/Base/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Electra-base --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Electra/Base/

CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Bert --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Bert/Base/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Bert/Base/
CUDA_VISIBLE_DEVICES=0,1,2,3 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Deberta --warmup_epochs=1 --gpus=0,1,2,3 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Deberta/Base/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Deberta/Base/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=RoBerta --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/RoBerta/Base/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/RoBerta/Base/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Electra-base --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Electra/Base/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Electra/Base/

Large
CUDA_VISIBLE_DEVICES=4 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Bert-large --warmup_epochs=1 --gpus=4 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Bert/Large/
CUDA_VISIBLE_DEVICES=5 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Deberta-large --warmup_epochs=1 --gpus=5 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Deberta/Large/

CUDA_VISIBLE_DEVICES=6 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Roberta-large --warmup_epochs=1 --gpus=6 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/RoBerta/Large/

CUDA_VISIBLE_DEVICES=7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_DPK.py --PrtMode=Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Electra-large --warmup_epochs=1 --gpus=7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/DeepWalk/Amazon/Fit/Electra/Large/

CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Bert-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Bert/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Deberta-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Deberta/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Roberta-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/RoBerta/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Electra-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL_Deepwalk/Amazon/Fit/Electra/Large/

CUDA_VISIBLE_DEVICES=4 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Bert-large --warmup_epochs=1 --gpus=4 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Bert/Large/

CUDA_VISIBLE_DEVICES=5 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Deberta-large --warmup_epochs=1 --gpus=5 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Deberta/Large/

CUDA_VISIBLE_DEVICES=6 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Roberta-large --warmup_epochs=1 --gpus=6 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/RoBerta/Large/

CUDA_VISIBLE_DEVICES=7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=400 --grad_steps=1 --lr=5e-05 --model=Electra-large --warmup_epochs=1 --gpus=7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Fit/Electra/Large/

CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Bert-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Bert/Large/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Bert/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Deberta-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Deberta/Large/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Deberta/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Roberta-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/RoBerta/Large/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/RoBerta/Large/
CUDA_VISIBLE_DEVICES=4,5,6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL_DK.py --PrtMode=TMLM_TCL_Deepwalk  --att_dropout=0.1 --cla_dropout=0.1 --dataset=Fitness_TT --dropout=0.1 --epochs=5 --freeze=4 --eq_batch_size=400 --per_device_bsz=200 --grad_steps=1 --lr=5e-05 --model=Electra-large --warmup_epochs=1 --gpus=4,5,6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TMLM_TCL_Deepwalk/Amazon/Fit/Electra/Large/ --pretrain_path=/mnt/v-wzhuang/TAG/Prt/TMLM/Amazon/Fit/Electra/Large/
