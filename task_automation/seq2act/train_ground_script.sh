#!/bin/bash -l

python -m seq2act.bin.seq2act_train_eval --exp_mode "train" \
                                 --experiment_dir ${PWD}"/seq2act/ckpt_hparams/ground_ricosca_ua_ut/" \
                                 --hparam_file ${PWD}"/seq2act/ckpt_hparams/grounding/" \
                                 --train_steps 250000 \
                                 --train_file_list ${PWD}"/seq2act/data/rico_sca/ua_ut_tfexample/*.tfrecord" \
                                 --train_batch_sizes "64" \
                                 --train_source_list "rico_sca" \
                                 --reference_checkpoint  ${PWD}"/seq2act/ckpt_hparams/tuple_ua_ut_final"
