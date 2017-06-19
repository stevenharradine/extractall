#!/bin/bash
installPath=/usr/local/bin

if [[ "$1" == "install" ]]; then
	if [ "$EUID" -ne 0 ]; then
		echo "Please run as root"
	else
		echo -n "Installing . "
		cp extractall.sh $installPath/extractall
		chown root:root $installPath/extractall
		chmod 755 $installPath/extractall
		echo "Done"
	fi
else
	filename=$1

	if [[ "$filename" == *.zip ]]; then
		echo "Zip detected"
		unzip $filename
	elif [[ "$filename" == *.tar.gz ]]; then
		echo "TAR Gunzip detected"
		tar -zxvf $filename
	elif [[ "$filename" == *.gz ]]; then
		echo "Gunzip detected"
		gunzip $filename
	else
		echo "Unknown format"
	fi
fi
