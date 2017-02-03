#!C:\strawberry\perl\bin\anuradha6.pl
use strict;
use warnings;
my %pet =
(
tipu => "dog" ,
tinu => "cat",
pongo => "dog",
pankaj => "cat",
momo => "cat",
chiku => "rabbit",
);
while (my($key, $value) = each %pet)
 {
	print $key . " => " . $value . "\n";
}
if (exists $pet{Tommy}) {
	print 'Yes! key tommy is present ';
}
else {
	print 'tommy is not present';
}
print "\n\n";
print "list sorted by species \n";
print "$_ => $pet{$_} \n" foreach (sort{$pet{$a} cmp $pet{$b}} keys %pet ) ;
