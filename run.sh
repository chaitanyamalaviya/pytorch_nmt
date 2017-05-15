#!/usr/bin/env bash
python train_nmt.py \
    --train_src ./en-de/train.en-de.low.filt.de \
    --train_tgt ./en-de/train.en-de.low.filt.en \
    --dev_src ./en-de/valid.en-de.low.de \
    --dev_tgt ./en-de/valid.en-de.low.en \
    --test_src ./en-de/test.en-de.low.de \
    --test_tgt ./en-de/test.en-de.low.en \
    --vocab ./vocab.bin \
    --valid_niter 5000 \
    --save_to mle_en_de \
    --decode_max_time_step 100 \
    --batch_size 64 \
    --log_every 10
