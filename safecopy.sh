#!/bin/bash

clear
SOURCE=$1
DEST=$2

if [ -e $DEST ]; then
	read -p "Do you want to overwrite $DEST? (yes/no)"  OVERW
	if [ $OVERW == "y" ]; then
		echo "$DEST file was overwitten."
		cp $SOURCE $DEST
	else
		echo "$DEST file exists and $SOURCE file was not copied."
	fi
else
	echo "The $SOURCE file was copied."
	cp $SOURCE $DEST
fi

