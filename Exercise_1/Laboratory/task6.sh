#!/bin/bash

backup=${!#}

if [ ! -d  "$backup" ];then
 mkdir $backup
 echo "Napravljeno kazalo: $backup"
fi

numFiles=0
for arg;
	do
	 if [ ! -r "$arg" -a -e "$arg" ];
			then  #provjeravanje je li moguce citati
			echo "Nije moguce citati ili ne postoji."
	  continue
	 fi
	 cp -r "$arg" "$backup"
	 numFiles=$((numFiles+1))
done

if [ $numFiles -gt 0 ];then
	echo "Kopirao $numFiles datoteka u kazalo $backup"
else
	echo "ERROR"
fi 