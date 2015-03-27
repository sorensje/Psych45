#! /bin/bash

if [ $# == 0 ]; then
    user=`whoami`
else
    user=$1
fi

target=$user@cardinal.stanford.edu:/afs/ir/class/psych45/WWW

echo "Uploading to $target"

cp slides_files/* _build/html/slides/
cp demo_files/* _build/html/demos/
cp resources_files/* _build/html/resources/
rsync -azP _build/html/ $target
