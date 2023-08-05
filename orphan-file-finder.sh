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

# Input directory path to store orphan files.
read -e -p "Where would you like the orphan files to be stored? Please input the path: " ORPHANDIR
eval ORPHANDIR=$ORPHANDIR

# Verify orphan directory path exists. If not, create it.
if [[ -d "$ORPHANDIR" ]]
then
    echo "The path you inputted is valid."
else
    echo "The path you inputted does not exist. Creating directory on your behalf..."
    mkdir $ORPHANDIR
fi

# Check camera directory for orphan files. Copy them to orphan directory.
for f in $FILESDIR/*.jpg; do
  [ ! -e "${f%.*}.rw2" ] && cp -- "$f" $ORPHANDIR
done

# Count files in orphan directory.
ORPHANCOUNT=$(ls -1q "$ORPHANDIR" | awk 'END{print NR}')

if [ $ORPHANCOUNT -ne 0 ]; then
        echo "Success! There were $ORPHANCOUNT orphan files detected. They have been copied to $ORPHANDIR."
else
        echo "There were no orphan files detected."
fi
