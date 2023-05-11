
# Photo_RS
#Small
CUDA_VISIBLE_DEVICES=0 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=100 --per_device_bsz=50 --grad_steps=2 --lr=5e-05 --model=Electra --warmup_epochs=1 --gpus=0 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/Electra/Small/
CUDA_VISIBLE_DEVICES=1 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=100 --per_device_bsz=50 --grad_steps=2 --lr=5e-05 --model=Distilbert --warmup_epochs=1 --gpus=1 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/Distilbert/
CUDA_VISIBLE_DEVICES=2 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=100 --per_device_bsz=100 --grad_steps=1 --lr=5e-05 --model=TinyBert --warmup_epochs=1 --gpus=2 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/TinyBert/

# Base
CUDA_VISIBLE_DEVICES=2,3 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=60 --per_device_bsz=15 --grad_steps=2 --lr=5e-05 --model=Deberta --warmup_epochs=1 --gpus=2,3 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/Deberta/Base/
CUDA_VISIBLE_DEVICES=6,7/usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=60 --per_device_bsz=15 --grad_steps=2 --lr=5e-05 --model=RoBerta --warmup_epochs=1 --gpus=6,7 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/RoBerta/Base/
CUDA_VISIBLE_DEVICES=6,7 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=60 --per_device_bsz=15 --grad_steps=2 --lr=5e-05 --model=Bert --warmup_epochs=1 --gpus=4,5 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/Bert/Base/
CUDA_VISIBLE_DEVICES=0,1 /usr/bin/env python sweep/dist_runner.py LMs/Train_Command/train_CL.py --PrtMode=TCL --att_dropout=0.1 --cla_dropout=0.1 --dataset=Photo_RS --dropout=0.1 --epochs=5 --eq_batch_size=60 --per_device_bsz=15 --grad_steps=2 --lr=5e-05 --model=Electra-base --warmup_epochs=1 --gpus=0,1 --cache_dir=/mnt/v-wzhuang/TAG/Prt/TCL/Amazon/Photo/Electra/Base/
