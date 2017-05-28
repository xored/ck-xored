#! /bin/bash


export PATH=/home/dsavenko/CK/ck-env/platform.init/generic-linux:$PATH


. /home/dsavenko/CK/local/env/5c422387377e3fb0/env.sh
. /home/dsavenko/CK/local/env/3d0a15bc1a34309a/env.sh
. /home/dsavenko/CK/local/env/da6b8d55442d7a10/env.sh
. /home/dsavenko/CK/local/env/46d7a4310c4f5cbf/env.sh
. /home/dsavenko/CK/local/env/5352e356da4571a5/env.sh
. /home/dsavenko/CK/local/env/94bc49cdf3190880/env.sh
. /home/dsavenko/CK/local/env/3b994db285249a47/env.sh
. /home/dsavenko/CK/local/env/c611f44bcbb3eca5/env.sh
. /home/dsavenko/CK/local/env/e182140048c1841c/env.sh
. /home/dsavenko/CK/local/env/e182140048c1841c/env.sh
. /home/dsavenko/CK/local/env/e54801b707016494/env.sh

. /home/dsavenko/CK/local/env/5c422387377e3fb0/env.sh 1

export CK_CAFFE_BATCH_SIZE=1

export CK_CAFFE_MODEL_WEIGHTS=/home/dsavenko/CK-TOOLS/caffemodel-ssd-voc-512/VGG_VOC0712_SSD_512x512_iter_120000.caffemodel
export CK_CAFFE_BATCH_SIZE=1
export CK_ENV_MODEL_CAFFE_WEIGHTS=/home/dsavenko/CK-TOOLS/caffemodel-ssd-voc-512/VGG_VOC0712_SSD_512x512_iter_120000.caffemodel
export CK_CAFFE_MODEL_MEAN_BIN=imagenet_mean.binaryproto

export CK_CAFFE_ITERATIONS=1
export CK_CAFFE_MODEL=/home/dsavenko/CK/ck-xored/program/logouter/tmp/tmp-KghGuP.prototxt
export CK_CAFFE_MODEL_FILE=tmp-KghGuP.prototxt


echo    executing code ...
 ../logouter.sh > tmp-output1.tmp 2> tmp-output2.tmp
