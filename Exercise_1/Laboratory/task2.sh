grep -i 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt

grep -iv 'banana\|jabuka\|jagoda\|dinja\|lubenica' namirnice.txt > ne-voce.txt

grep -rE '[A-Z]{3}[0-9]{6}' ~/projekti/

find . -mtime +7 -mtime -14 -ls

for i in {1..15}; do echo $i; done