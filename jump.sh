#!/bin/bash

#
# Jump into directories
#

key=$1
exist_key_file=$(cat ~/.chpwd-recent-dirs | grep "$key")

if [ -z $exist_key_file ]; then
	echo -e "\n[*] Don't existe the key\n"
	exit 1
else
	directory=$(cat ~/.chpwd-recent-dirs | grep "$key" | awk -F: '{print $2}')
	echo $directory
	exit 0
fi

while getopts le:m: flag; do
	case "${flag}" in
	l)
		cat ~/.chpwd-recent-dirs
		exit 0
		;;
	e) echo "Eanble to edit the file" ;;
	m) echo "Hola" ;;
	*)
		echo "Usage: $0 [-l]"
		exit 1
		;;
	esac
done
