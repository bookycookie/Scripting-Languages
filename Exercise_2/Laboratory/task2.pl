#!/bin/perl
use warnings;
print "Pritisnite tipku CTRL + D za kraj :)\n\n";
chomp(@lines = <STDIN>);

$sum = 0;

foreach $elem ( @lines ) {
		$sum += $elem;
	}

$arMid = $sum / @lines;

print "\nAritmeticka sredina zadanog niza je: " . $arMid;

