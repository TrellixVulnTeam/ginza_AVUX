#!/usr/bin/env bash
mkdir models
set -eu
lang_name=ja_ginza
model_name=$1
model_version=$2
model_dir=models/${lang_name}_${model_name}-${model_version}
python -m ja_ginza.train_word2vec -n ${model_name} -v ${model_version} -o models/                 embedding_corpus/          &>> log.$1
