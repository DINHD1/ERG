#!/bin/bash
# push LOCAL checkpoints to HF
subapp_dir=$(dirname "$(realpath "$0")")

OPTS=$(getopt -o "" --long hf: -- "$@")
eval set -- "$OPTS"

huggingface-cli login --token $2
# huggingface-cli upload [repo_id] [local_path] [path_in_repo]
huggingface-cli upload Diezu/gemma3-loras E:\erg_v2\app\checkpoints --include "**/*"
