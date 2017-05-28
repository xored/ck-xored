#! /bin/bash

P=$PWD
cd "$CK_ENV_LIB_CAFFE/../src"

"$P/logouter" test --model=models/VGGNet/VOC0712/SSD_300x300_webcam/test.prototxt --weights=models/VGGNet/VOC0712/SSD_300x300/VGG_VOC0712_SSD_300x300_iter_120000.caffemodel --iterations=500000 --gpu 0 | while read line; do
    if [ "$line" -eq "0" ]; then
        gnome-screensaver-command -l
    fi
done;
