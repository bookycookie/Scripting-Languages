#!/bin/bash

source=$1
destination=$2


if [ ! -d $source  ];then
 echo "Izvor mora biti kazalo (directory)."
 exit 1
fi
if [ ! -d $destination ];then
 echo "Niste naveli odrediste, stvaram: $destination"
 mkdir $destination
fi

for image in `ls $source`
		do
		current="$source/$image"
		echo $current
		echo `stat "$current" | grep -i 'Modify:' | grep -iE -o '[0-9]{4}-[0-9]{2}'`
        datum=`stat "$current" | grep -i 'Modify:' | grep -iE -o '[0-9]{4}-[0-9]{2}'`
        godina=`echo $datum | cut -d "-" -f 1`
        mjesec=`echo $datum | cut -d "-" -f 2`
        folder="$destination/$godina-$mjesec/"
        echo $folder
        if [ ! -d "$folder" ]
                then
                mkdir $folder
                fi
        mv "$source/$image" "$folder/$image"
done