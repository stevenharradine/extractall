#/bin/bash
filename=$1

if [[ "$filename" == *.zip ]]; then
	echo "Zip detected"
	unzip $filename
elif [[ "$filename" == *.tar ]]; then
	echo "TAR detected"
	tar -xvf $filename
elif [[ "$filename" == *.tar.gz ]]; then
	echo "TAR Gunzip detected"
	tar -zxvf $filename
elif [[ "$filename" == *.tar.xz ]]; then
        echo "TAR xy detected"
        tar -xf $filename
elif [[ "$filename" == *.gz ]]; then
	echo "Gunzip detected"
	gunzip $filename
elif [[ "$filename" == *.rar ]]; then
	echo "RAR detected"
	unrar x $filename
else
	echo "Unknown format"
fi
