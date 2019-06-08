#!/bin/bash

# Filter (keep) only pictures of a specified type. The default is JPEG
# Images are filtered in place, i.e., non-IMG files are deleted.
IMG=JPEG

if [ "$#" -ne 1 ]; then
    echo usage: $0 img_dir;
    exit;
fi
dir=$1/
cd $dir
for f in *; do
    if file "$f" | grep -v $IMG; then
	rm "$f"
    fi
done
	  




