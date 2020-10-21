# FC3
python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc3 --dataset=mnist --prune_percent=10 --prune_iterations=35 --end_iter 20 --gpu 0


# FC5
python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=10 --prune_iterations=35 --end_iter 20 --gpu 1
