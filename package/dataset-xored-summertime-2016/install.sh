#! /bin/bash

echo "Downloading images..."

mkdir $IMAGE_DIR
cd $IMAGE_DIR

echo "Downloading files..."
smbclient '\\turbine\share' -N -c "prompt OFF;recurse ON;cd \"Photo/2016-08-04 - Happy summertime/official\";lcd \"$PWD\";mget *"
smbclient '\\turbine\share' -N -c "prompt OFF;recurse ON;cd \"Photo/2016-08-04 - Happy summertime/others\";lcd \"$PWD\";mget *"

echo "Renaming files..."
find . -type f | cat -n | while read n f; do mv "$f" `printf "%06d.jpg" $n`; done

echo "Filtering out vertical images..."
for a in *.jpg; do 
  o=`identify -format '%[orientation]' $a`
  if [ "$o" != "TopLeft" ]; then 
    rm $a;
  else
    l=`convert $a -print "%w %h" /dev/null`
    s=($l)
    w=${s[0]}
    h=${s[1]}
    if [ $h -gt $w ]; then rm $a; fi
  fi
done

echo "Resizing images..."
for a in *.jpg; do convert $a -resize 1200 $a; done

touch xored-summertime-2016

exit 0
