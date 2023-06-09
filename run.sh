#CIFAR-10 LT (SGD)
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule None --dataset cifar10
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule DRW --dataset cifar10
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type LDAM --train_rule DRW --dataset cifar10

# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_CE_None_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataloader_hess train
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_CE_DRW_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataloader_hess train
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_LDAM_DRW_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type LDAM --dataloader_hess train

#CIFAR10-LT (SAM)
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule None --rho 0.1 --rho_schedule none --dataset cifar10
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule DRW --rho 0.5 --rho_schedule none --dataset cifar10
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type LDAM --train_rule DRW --rho 0.8 --rho_schedule none --dataset cifar10

# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_CE_None_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataloader_hess train
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_CE_DRW_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataloader_hess train
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_LDAM_DRW_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type LDAM --dataloader_hess train

#CIFAR100-LT (SGD)
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule None --dataset cifar100
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule DRW --dataset cifar10
# python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type LDAM --train_rule DRW --dataset cifar10 

# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_CE_None_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataset cifar100 --dataloader_hess val
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_CE_DRW_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataset cifar100 --dataloader_hess val
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_LDAM_DRW_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type LDAM --dataset cifar100 --dataloader_hess val

# #CIFAR100-LT (SAM)
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule None --rho 0.8 --rho_schedule none --dataset cifar100
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule DRW --rho 0.8 --rho_schedule none --dataset cifar100
# python cifar_train_sam.py --imb_type exp --imb_factor 0.01 --loss_type LDAM --train_rule DRW --rho 0.8 --rho_schedule none --dataset cifar100

# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_CE_None_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataset cifar100 --dataloader_hess val
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_CE_DRW_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataset cifar100 --dataloader_hess val
# python hessian_analysis.py --exp_str sample --resume checkpoint/cifar100_resnet32_LDAM_DRW_exp_0.01_sam_0.8_sched_none_seed_None_0/ckpt.best.pth.tar --loss_type LDAM --dataset cifar100 --dataloader_hess val

# #iNaturalist18 (SGD)
# python inat_train.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type CE --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --lr 0.1 --cos_lr
# python inat_train.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type LDAM --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --lr 0.1 --cos_lr --margin 0.3 --wd 0.0001
# python inat_train.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type CE --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --lr 0.1 --cos_lr
# python inat_train.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type LDAM --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --lr 0.1 --cos_lr --margin 0.3 --wd 0.0001

# #iNaturalist18 (SAM)
# python inat_train_sam.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type CE --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.1 --exp_str 0 --seed 1 --rho_steps 0.05 0.1 0.1 0.2
# python inat_train_sam.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type LDAM --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.1 --rho_steps 0.05 0.1 0.5 0.5 --margin 0.3 --wd 0.0001
# python inat_train_sam.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type CE --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.1 --exp_str 0 --seed 1 --rho_steps 0.05 0.1 0.1 0.2
# python inat_train_sam.py --imb_type exp --imb_factor 0.01 --data_path inat_18 --loss_type LDAM --train_rule DRW --dataset inat_18 -b 256 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.1 --rho_steps 0.05 0.1 0.5 0.5 --margin 0.3 --wd 0.0001

# #ImageNet-LT (SGD)
# python3 imnet_train.py --imb_type exp --imb_factor 0.01 --data_path /mnt/disks/persist/imagenet --loss_type CE --train_rule None --dataset imagenet -b 512 --epochs 90 --arch resnet50 --cos_lr --lr 0.2 --distributed
# python3 imnet_train.py --imb_type exp --imb_factor 0.01 --data_path ImageNet --loss_type LDAM --train_rule DRW --dataset imagenet -b 256 --epochs 90 --arch resnet50 --wd 2e-4 --lr 0.2 --cos_lr --margin 0.3 

# #ImageNet-LT (SAM)
python3 imnet_train_sam.py --imb_type exp --imb_factor 0.01 --data_path /mnt/disks/persist/imagenet --loss_type CE --train_rule DRW --dataset imagenet -b 512 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.2 --rho_steps 0.05 0.1 0.5 0.5
# python3 imnet_train_sam.py --imb_type exp --imb_factor 0.01 --data_path ImageNet --loss_type LDAM --train_rule DRW --dataset imagenet -b 256 --epochs 90 --arch resnet50 --cos_lr --rho_schedule step --lr 0.2 --rho_steps 0.05 0.1 0.5 0.5 --wd 2e-4 --margin 0.3
