#!/bin/perl
use warnings;
$niz = $ARGV[0];
$broj = $ARGV[1];

$count = 0;

while($count < $broj) {
	$count += 1;
	print $niz . "\n";
}