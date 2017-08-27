#/bin/bash
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
