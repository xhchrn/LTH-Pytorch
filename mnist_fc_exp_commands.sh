# FC3
python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc3 --dataset=mnist --prune_percent=10 --prune_iterations=35 --end_iter 20 --gpu 0


# FC5
# python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=20 --prune_iterations=20 --end_iter 20 --gpu 0
# python3 main.py --lr 0.1 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=20 --prune_iterations=20 --end_iter 40 --gpu 0
python3 main.py --lr 0.1 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=lenet_300_100 --dataset=mnist --prune_percent=20 --prune_iterations=20 --end_iter 40 --gpu 0




for SEED in {1..10}
do
    python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        --gpu 1 \
        --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_rp_seed${SEED}_untrained.pth.tar" \
        --output_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/saves" \
        --plot_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/plots" \
        --dump_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/dumps"
done

for SEED in {11..20}
do
    python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        --gpu 2 \
        --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_rp_seed${SEED}_untrained.pth.tar" \
        --output_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/saves" \
        --plot_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/plots" \
        --dump_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/dumps"
done

for SEED in {21..30}
do
    python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        --gpu 3 \
        --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_rp_seed${SEED}_untrained.pth.tar" \
        --output_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/saves" \
        --plot_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/plots" \
        --dump_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/dumps"
done

for SEED in {31..40}
do
    python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        --gpu 4 \
        --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_rp_seed${SEED}_untrained.pth.tar" \
        --output_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/saves" \
        --plot_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/plots" \
        --dump_dir "random_pruning_exp_outputs/mlp5_mnist_rp_seed${SEED}_untrained/dumps"
done

alpha=0.0
alpha=0.2
alpha=0.4
for alpha in 0.00 0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00Vjjj
    for SEED in {1..5}
    do
        python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
            --gpu 4 \
            --initial_state_dict "random_pruning_alpha_exp_state_dict_files/mlp5_mnist_rp_alpha${alpha}_seed${SEED}_untrained.pth.tar" \
            --output_dir         "random_pruning_alpha_exp_outputs/mlp5_mnist_rp_alpha${alpha}_seed${SEED}_untrained/saves" \
            --plot_dir           "random_pruning_alpha_exp_outputs/mlp5_mnist_rp_alpha${alpha}_seed${SEED}_untrained/plots" \
            --dump_dir           "random_pruning_alpha_exp_outputs/mlp5_mnist_rp_alpha${alpha}_seed${SEED}_untrained/dumps"
    done
done

python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
    --gpu 5 \
    --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_wt_untrained.pth.tar" \
    --output_dir "random_pruning_exp_outputs/mlp5_mnist_wt_untrained/saves" \
    --plot_dir   "random_pruning_exp_outputs/mlp5_mnist_wt_untrained/plots" \
    --dump_dir   "random_pruning_exp_outputs/mlp5_mnist_wt_untrained/dumps"

python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
    --gpu 6 \
    --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_mag_pai_untrained.pth.tar" \
    --output_dir "random_pruning_exp_outputs/mlp5_mnist_mag_pai_untrained/saves" \
    --plot_dir   "random_pruning_exp_outputs/mlp5_mnist_mag_pai_untrained/plots" \
    --dump_dir   "random_pruning_exp_outputs/mlp5_mnist_mag_pai_untrained/dumps"

python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
    --gpu 6 \
    --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_snip_pai_untrained.pth.tar" \
    --output_dir "random_pruning_exp_outputs/mlp5_mnist_snip_pai_untrained/saves" \
    --plot_dir   "random_pruning_exp_outputs/mlp5_mnist_snip_pai_untrained/plots" \
    --dump_dir   "random_pruning_exp_outputs/mlp5_mnist_snip_pai_untrained/dumps"

python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
    --gpu 6 \
    --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_synflow_pai_untrained.pth.tar" \
    --output_dir "random_pruning_exp_outputs/mlp5_mnist_synflow_pai_untrained/saves" \
    --plot_dir   "random_pruning_exp_outputs/mlp5_mnist_synflow_pai_untrained/plots" \
    --dump_dir   "random_pruning_exp_outputs/mlp5_mnist_synflow_pai_untrained/dumps"

python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
    --gpu 6 \
    --initial_state_dict "random_pruning_exp_state_dict_files/mlp5_mnist_grasp_pai_untrained.pth.tar" \
    --output_dir "random_pruning_exp_outputs/mlp5_mnist_grasp_pai_untrained/saves" \
    --plot_dir   "random_pruning_exp_outputs/mlp5_mnist_grasp_pai_untrained/plots" \
    --dump_dir   "random_pruning_exp_outputs/mlp5_mnist_grasp_pai_untrained/dumps"

for alpha in 0.00 0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00
    for SEED in {1..5}
    do
        # python3 main.py --lr 1e-3 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=fc5 --dataset=mnist --prune_percent=0 --prune_iterations=1 --end_iter 20 \
        python3 main.py --lr 0.1 --weight_decay 0.0 --batch_size 128 --prune_type=lt --arch_type=lenet_300_100 --dataset=mnist --prune_percent=20 --prune_iterations=20 --end_iter 40 \
            --gpu 0 \
            --initial_state_dict "random_pruning_alpha_exp_state_dict_files/lenet_mnist_rp_alpha${alpha}_seed${SEED}_untrained.pth.tar" \
            --output_dir         "random_pruning_alpha_exp_outputs/lenet_mnist_rp_alpha${alpha}_seed${SEED}_untrained/saves" \
            --plot_dir           "random_pruning_alpha_exp_outputs/lenet_mnist_rp_alpha${alpha}_seed${SEED}_untrained/plots" \
            --dump_dir           "random_pruning_alpha_exp_outputs/lenet_mnist_rp_alpha${alpha}_seed${SEED}_untrained/dumps"
    done
done
