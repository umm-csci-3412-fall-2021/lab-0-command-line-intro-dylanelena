#!/bin/bash

tar_file=$1
here=$(pwd)
filename=$(basename -- ./"$1" .tgz)
new_filename="cleaned_$filename"
SCRATCH=$(mktemp --directory)

tar zxf "$tar_file" --directory "$SCRATCH"
grep -lr "DELETE ME!" "$SCRATCH" | xargs /bin/rm -f
cd "$SCRATCH" || return
tar czf "$here/$new_filename.tgz" "$filename"
rm -rf "$SCRATCH"
