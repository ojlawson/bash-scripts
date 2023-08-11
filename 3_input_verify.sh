#!/bin/bash

# Input directory path
read -e -p "Please input the path to the directory where your files are stored : " FILESDIR
eval FILESDIR=$FILESDIR

# Verify input directory path exists
if [[ -d "$FILESDIR" ]]
then
    echo "The path you inputted is valid."
else
    echo "The path you inputted does not exist."
fi