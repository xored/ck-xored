#! /bin/bash

echo "Downloading images..."

mkdir $IMAGE_DIR
cd $IMAGE_DIR

echo "Downloading files..."
smbclient '\\turbine\share' -N -c "prompt OFF;recurse ON;cd \"Photo/2016-08-30 - Boat Xored Prague\";lcd \"$PWD\";mget *"

echo "Filtering out vertical images..."
for a in *.jpg; do 
  w=`convert $a -print "%w" /dev/null`
  h=`convert $a -print "%h" /dev/null`
  if [ $h -gt $w ]; then rm $a; fi
done

echo "Resizing images..."
for a in *.jpg; do convert $a -resize 1000 $a; done

exit 0
