#!/bin/bash

clear
if [ $# -gt 1 ]; then
	echo "Usage: $0 filename. $# is too many arguments."
	exit 1
elif [ $# -lt 1 ]; then
	echo "Usage: $0 filename. $# is no argument."
	exit 1
else
	if [ -d $1 ]; then
		echo "$1 is not a regular file."
	elif [ ! -f $1 ]; then
		echo "$1 does not exist."
	else 
		chmod +x $1
		echo "Successfully added execute permission to $1"
	fi
fi

