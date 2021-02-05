#!/bin/perl
#perl zadatak5.pl rezultati.csv
use warnings;

chomp ($coefficients = <>);
@coefficients = split /;/, $coefficients;

$index = 0;
while (<>) {
	$line = $_;
	@line = split /;/, $line;
	$JMBAG = shift @line;
	$surname = shift @line;
	$name = shift @line;
	
	$sumline = 0;
	$indexInt = 0;
	foreach $elem (@line) {
		if ($elem eq '-') {
			$elem = 0;
		}
		$sumline += $coefficients[$indexInt] * $elem;
		$indexInt++;
	}
	
	$rangList[$index] = sprintf("%06.2f;%s;%s;%s", $sumline, $JMBAG, $surname, $name);
	$index++;
}

@rlSorted = reverse sort (@rangList);

$index = 1;
foreach (@rlSorted) {
	@line = split /;/, $_;
	printf ("%d. %s: %4.2f\n", $index, "$line[2], $line[3] ($line[1])", $line[0]);
	$index++;
}
	
