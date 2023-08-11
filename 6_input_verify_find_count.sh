#!/bin/bash

# Input camera directory path.
read -e -p "Where are the camera files located? Please input the path: " FILESDIR
eval FILESDIR=$FILESDIR

# Verify camera directory path exists. If not, exit script.
if [[ -d "$FILESDIR" ]]
then
    echo "The path you inputted is valid."
else
    echo "The path you inputted does not exist."
    exit 2
fi

# Input directory path to store unique files.
read -e -p "Where would you like the unique files to be stored? Please input the path: " UNIQUEDIR
eval UNIQUEDIR=$UNIQUEDIR

# Verify unique directory path exists. If not, create it.
if [[ -d "$UNIQUEDIR" ]]
then
    echo "The path you inputted is valid."
else
    echo "The path you inputted does not exist. Creating directory on your behalf..."
    echo mkdir $UNIQUEDIR
fi

# Check camera directory for unique files. Copy them to the unique directory.
for f in $FILESDIR/*.jpg; do
  [ ! -e "${f%.*}.rw2" ] && echo cp -- "$f" $UNIQUEDIR
done

# Count files in unique directory.
UNIQUECOUNT=$(ls -1q "$UNIQUEDIR" | wc -l)