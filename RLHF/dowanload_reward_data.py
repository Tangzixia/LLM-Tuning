from collections import defaultdict
from datasets import load_dataset,load_from_disk
import json

# 采用 HC3(Human-ChatGPT Comparison Corpus) 数据集（https://github.com/Hello-SimpleAI/chatgpt-comparison-detection）
# https://huggingface.co/Hello-SimpleAI
dataset = load_dataset('beyond/rlhf-reward-single-round-trans_chinese')
dataset.save_to_disk(f'../data/rlhf-reward-single-round-trans_chinese')