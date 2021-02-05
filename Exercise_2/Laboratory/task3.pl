#!/bin/perl
#perl zadatak3.pl localhost_access_log.2008-02-24.txt
#perl zadatak3.pl localhost_access_log.2008-02-25.txt

#use warnings;

foreach $file (@ARGV) {
	open (logFile, "<", "$file")
		or die "Can't open the file!\n";

	
	while (<logFile>) {
		$line = $_;
		@line = split / /, "$line";
		@time = split /:/, "$line[3]";
		$hours = $time[1];
		$repeatCount[$hours] += 1;
	}
	
	$date = $line[3];
	$date =~ s|^.*\[(.{2}/.{3}/.{4}).*$|$1|; #editira date premaa navedenom regexu
	printf ("\n Datum: %s\n sat : broj pristupa\n-------------------------------\n", $date);

	$index = 0;
	foreach (@repeatCount) {
		printf ("  %d : %s", $index++ , $_ . "\n");
	}
	printf "-------------------------------";
}