#!/bin/perl
#perl zadatak3.pl labosi.txt

use warnings;


sub cmpKEYS { #fja za uspoređivanje ključeva u SORT metodi
 @part1 = split " ", $a;
 @part2 = split " ", $b;
 $bool1 = $part1[0]  cmp $part2[0]; 
 $bool2 = $part1[2] cmp $part2[2];
 $bool3 = $bool1 || $bool2;
 return $bool3;
}

#NAME,  DESC, NUM,  DATE,        TIME,    PERIOD,   ROOM
#NAZIV, OPIS, BROJ, DATUM & DAN, VRIJEME, TRAJANJE, PROSTORIJA
#0,		1,		2,		3,			4,		5,			6

$num_minus = 50;
print "-" x $num_minus;
print "\n";
while (<>) {
 chomp; #micanje \n
 @line = split "\t", $_; #splittanje po tabulatorima
 #$name = $line[0];
 #$desc = $line[1];
 $date = $line[3];
 $time = $line[4];
 #$period = $line[5];
 $terms{$date . $time} = $_; #mapiranje datum i dan odrzavanja, vrijeme
}

$i = 0;
foreach $key (sort cmpKEYS keys %terms){
 @line = split "\t", $terms{$key};
 
 $num = $line[2];
 $date = $line[3];
 $time = $line[4];
 $room = $line[6];
 
 printf ("| %3d. %s %s %s %s |\n", $i+1, $date, $time, $room, $num);
 #print $key . "\n\n";
 #print $terms{$key} . "\n\n";
 $i++;
}
 print "-" x $num_minus;

