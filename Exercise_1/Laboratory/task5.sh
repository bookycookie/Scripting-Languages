#!bin/bash
directory=$1
argument=$2
echo Directory: $directory

echo Argument: $argument

counter=0
	for files in `find "$directory" -name "*.$argument"`
		do
		num=`wc -l $files | cut -d" " -f 1`
		counter=$((counter+num))
	done
echo $counter