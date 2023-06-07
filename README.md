## Training

Command to train CIFAR-10 LT dataset with CE+None.

`python cifar_train.py --imb_type exp --imb_factor 0.01 --loss_type CE --train_rule None --dataset cifar10 --gpu 0 --epochs 5`

Command to run hessian analysis on it. 

`python hessian_analysis.py --exp_str sample --resume checkpoint/cifar10_resnet32_CE_None_exp_0.01_seed_None_0/ckpt.best.pth.tar --loss_type CE --dataloader_hess train  --train_rule None --gpu 0`

All the commands to reproduce the experiments are available in `run.sh` 

Use hessian_plot.ipynb for the hessian plot
Use tsne.ipynb for the tsne plot


