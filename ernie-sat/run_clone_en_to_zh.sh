# en --> zh  的 语音合成
# 根据Prompt_003_new对应的语音: This was not the show for me. 来合成:  '今天天气很好'

python inference.py \
--task_name cross-lingual_clone \
--model_name paddle_checkpoint_ench \
--uid Prompt_003_new \
--new_str '今天天气很好' \
--prefix ./prompt/dev/ \
--source_language english \
--target_language chinese \
--output_name pred_zh.wav \
--voc pwgan_aishell3 \
--voc_config download/pwg_aishell3_ckpt_0.5/default.yaml \
--voc_ckpt download/pwg_aishell3_ckpt_0.5/snapshot_iter_1000000.pdz \
--voc_stat download/pwg_aishell3_ckpt_0.5/feats_stats.npy \
--am fastspeech2_csmsc \
--am_config download/fastspeech2_conformer_baker_ckpt_0.5/conformer.yaml \
--am_ckpt download/fastspeech2_conformer_baker_ckpt_0.5/snapshot_iter_76000.pdz \
--am_stat download/fastspeech2_conformer_baker_ckpt_0.5/speech_stats.npy \
--phones_dict download/fastspeech2_conformer_baker_ckpt_0.5/phone_id_map.txt