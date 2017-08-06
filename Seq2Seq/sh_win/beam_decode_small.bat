set PY=../py_win/run.py
set BLEU=../py_win/multi-bleu.perl
set MODEL_DIR=../model/model_small
set TRAIN_PATH_FROM=../data/small/train.src
set DEV_PATH_FROM=../data/small/valid.src
set TEST_PATH_FROM=../data/small/test.src
set TRAIN_PATH_TO=../data/small/train.tgt
set DEV_PATH_TO=../data/small/valid.tgt
set TEST_PATH_TO=../data/small/test.tgt
set DECODE_OUTPUT=../data/small/test.output

set CUDA_VISIBLE_DEVICES=1


python %PY% --mode BEAM_DECODE --model_dir %MODEL_DIR% ^
    --test_path_from %TEST_PATH_FROM% ^
    --beam_size 10 --from_vocab_size 100 --to_vocab_size 100 --size 100 --num_layers 2 ^
    --attention False --print_beam True --decode_output %DECODE_OUTPUT%
	
	

