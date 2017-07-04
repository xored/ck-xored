#! /bin/bash

echo "Downloading images..."

mkdir $IMAGE_DIR
cd $IMAGE_DIR

echo "Downloading files..."
smbclient '\\turbine\share' -N -c "prompt OFF;recurse ON;cd \"Photo/2011-08-29/preview size 900x600px for web\";lcd \"$PWD\";mget *"

touch xored-beach-2011

exit 0
