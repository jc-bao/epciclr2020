#!/bin/sh

CUDA_VISIBLE_DEVICES="" python -m maddpg_o.experiments.train_epc \
    --scenario=hd \
    --sight=100.0 \
    --cooperative \
    --initial-population=6 \
    --num-selection=3 \
    --num-stages=4 \
    --test-num-episodes=2000 \
    --stage-num-episodes 50000 20000 20000 20000 \
    --num-good=3 \
    --num-adversaries=0 \
    --num-food=3 \
    --num-units=32 \
    --checkpoint-rate=0 \
    --good-policy=att-maddpg \
    --adv-policy=att-maddpg \
    --good-share-weights \
    --adv-share-weights \
    --save-dir="./result/hd_3" \
    --load-dir="./result/hd_3/stage-0/seed-0" \
    --restore \
    --save-rate=100 \
    --train-rate=100 \
    --n-cpu-per-agent=40 \
    --stage-n-envs=25 \
    --timeout=0.03 \
    --save-gif-data \
    --render-gif