#zad1
proba="Ovo je proba"

echo &proba

lista_datoteka=*.*
echo $lista_datoteka

proba3="$proba. $proba. $proba"
echo $proba3

a=4
b=3
c=7
d=$((($a+4)*($b%$c)))

broj_rijeci=$(cat *.txt | wc -w)

ls ~

cut -f 1,6,7 -d: /etc/passwd

ps -u Bobi tr -s ""|cut -d "" -f 2,7,9
