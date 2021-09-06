#!/bin/bash

tar_file=$1
here=$(pwd)
new_filename="cleaned_$(basename -- ./$1)"
SCRATCH=$(mktemp --directory)

tar zxf "$tar_file" --directory "$SCRATCH"
grep -lr "DELETE ME!" "$SCRATCH" | xargs /bin/rm -f
cd $SCRATCH
tar czf "$here/$new_filename" "little_dir"
rm -rf "$SCRATCH"
