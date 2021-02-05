#!/bin/perl
#perl zadatak4.pl labosi-zakljucano.csv
use warnings;
while (<>) {
	$line = $_;
	@line = split /;/, $line;
	@timestamp_term = split / /, $line[3];
	@timestamp_submission = split / /, $line[4];
	$timestamp_term = $line[3];
	$timestamp_term =~ s/([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}):([0-9]{2}).*$/$1$2$3$4$5/; #mijenjam u bez razmaka kako bih mogao dodat 100 odnosno samo jedan sat za provjeru
	$timestamp_submission = $line[4];
	$timestamp_submission =~ s/([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}):([0-9]{2}).*$/$1$2$3$4$5/;
	
	if ($timestamp_submission > $timestamp_term + 100) {
		print "$line[0] $line[1] $line[2] - PROBLEM: $timestamp_term[0] $timestamp_term[1] --> $timestamp_submission[0] $timestamp_submission[1]";
	}
}