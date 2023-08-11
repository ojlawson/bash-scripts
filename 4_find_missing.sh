#!/bin/bash

FILESDIR=/Users/oliver/Bash/memcard/
UNIQUEDIR=/Users/oliver/Bash/uniqueee/

for f in $FILESDIR/*.jpg; do
  [ ! -e "${f%.*}.rw2" ] && cp -- "$f" $UNIQUEDIR
done
