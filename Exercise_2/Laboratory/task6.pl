use warnings;
#perl zadatak6.pl notturno.txt 4
$num = pop(@ARGV);
print $num;

while (defined ($input = <>)) {
        @list = ($input =~ m/\b(\w{$num})/g);

        foreach $word (@list) {
                $array{$word} += 1;
        }
}

#@output = keys %array;
@output = keys %array;
@sortedOutput = sort @output;
print "element : broj ponavljanja elementa\n";
foreach $elem (@sortedOutput) {
        print "$elem : $array{$elem} \n" ;
}
print "element : broj ponavljanja elementa\n";
