#!/bin/bash
pushd . > /dev/null
cd $(dirname $0)

data_dir=$(awk -F "=" '/DATA_DIR/ {print $2}' .env)
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
service=$(basename $dir)
pushd $data_dir/zammad > /dev/null
bash
popd > /dev/null
popd > /dev/null
