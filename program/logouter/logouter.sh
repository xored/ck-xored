#! /bin/bash

cp "$CK_ENV_MODEL_CAFFE_LABELMAP" "labelmap_voc.prototxt"

"./logouter" test --model=../test.prototxt --weights="$CK_ENV_MODEL_CAFFE_WEIGHTS" --gpu 0 | while read line; do
    if [ "$line" -eq "0" ]; then
        gnome-screensaver-command -l
    fi
done;
