# FC3
python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc3 --dataset=mnist --prune_percent=10 --prune_iterations=35 --end_iter 20 --gpu 0


# FC5
python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=20 --prune_iterations=10 --end_iter 20 --gpu 1




for SEED in 1 2 3   ... 10
do
    python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        --gpu 1 \
        --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_rp_seed{$SEED}_untrained.pth.tar" \
        --output_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed{$SEED}_untrained/saves" \
        --plot_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed{$SEED}_untrained/plots" \
        --dump_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed{$SEED}_untrained/dumps"
done
