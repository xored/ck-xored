#! /bin/bash

echo "Downloading images..."

mkdir $IMAGE_DIR
cd $IMAGE_DIR

echo "Downloading files..."
smbclient '\\turbine\share' -N -c "prompt OFF;recurse ON;cd \"Photo/2014-11-12 - XoredHB\";lcd \"$PWD\";mget *"

find . -name "*DS_Store" -exec rm -rf {} \;

touch xored-HB-2014

exit 0
