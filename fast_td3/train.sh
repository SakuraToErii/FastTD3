for seed in {1..5}
do
    python fast_td3/train_mixed_policy.py \
        --env_name G1JoystickFlatTerrain \
        --exp_name FastTD3_std_0.001_0.4_pnoise_0.001 \
        --render_interval 5000 \
        --seed $seed \
        --agent fasttd3 \
        --std_min 0.001 \
        --std_max 0.4  \
        --policy_noise 0.001
done

for seed in {1..5}
do
    python fast_td3/train_mixed_policy.py \
        --env_name G1JoystickFlatTerrain \
        --exp_name FastTD3_std_0.05_0.8_pnoise_0.1 \
        --render_interval 5000 \
        --seed $seed \
        --agent fasttd3 \
        --std_min 0.05 \
        --std_max 0.8  \
        --policy_noise 0.1
done



# 这个脚本不能用simbav2，必定会报错