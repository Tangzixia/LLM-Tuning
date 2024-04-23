# train_ppo.sh

CUDA_VISIBLE_DEVICES=0,1,2,3 python rl_training.py \
    --base_model_name baichuan-inc/baichuan-7B \
    --merged_sft_model_path ../weights/ckps/baichaun-sft-hc3-merged \
    --sft_model_lora_path ../weights/hc3_chatgpt_zh_specific_qa_baichuan-7B/checkpoint-2000 \
    --reward_model_lora_path ../weights/baichuan-7B_beyond_reward_chinese_5000/checkpoint-1000 \
    --adafactor False \
    --save_freq 10 \
    --output_max_length 256 \
    --batch_size 16 \
    --gradient_accumulation_steps 16 \
    --batched_gen True \
    --ppo_epochs 4 \
    --seed 0 \
    --learning_rate 1e-5 \
    --early_stopping True \
    --output_dir weights/baichaun_rlhf_beyond_chinese_test \
    --log_with wandb