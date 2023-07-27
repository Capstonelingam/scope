PYTHONPATH=. python examples/pytorch/text_classification/finetune_text_classification.py \
    --task 'text-classification' \
    --model 'damo/nlp_structbert_backbone_base_std' \
    --train_dataset_name 'clue' \
    --val_dataset_name 'clue' \
    --train_subset_name 'tnews' \
    --val_subset_name 'tnews' \
    --train_split 'train' \
    --val_split 'validation' \
    --first_sequence 'sentence' \
    --label label \
    --num_labels 15 \
    --labels '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14' \
    --preprocessor 'sen-cls-tokenizer' \
    --use_model_config True \
    --max_epochs 1 \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 16 \
    --eval_interval 100 \
    --eval_strategy by_step \
    --work_dir './tmp' \
    --train_data_worker 0 \
    --eval_data_worker 0 \
    --lr 1e-5 \
    --eval_metrics 'seq-cls-metric' \