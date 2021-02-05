#!/bin/bash

rjecnik=$1
echo '---------------------------'
echo Rjecnik: $rjecnik

if [ ! -r $rjecnik ];then
 echo "Niste naveli dobar rjecnik za file"
fi

numChar=0
echo $numChar
for rijec in `ls $rjecnik`
	do
		echo "broj jedan test"
		cut $rijec -d '\n' -f 1 | grep -iE '[.]{$numChar}$' | sort 
		echo "jel dolazis do ovdje uopce???"
		numChar=$((numChar+1))
done


#nalazim (.{$numChar})



#regex za numChar broj ponavljanja bilo kojeg niza znakova [.]{$numChar}

#bilo koji niz znakova [.]
#broj ponavljanja znakova {broj_ponavljanja}
#kraj regexa $

#[.]{$counter}