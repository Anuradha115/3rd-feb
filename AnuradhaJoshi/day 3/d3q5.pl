#!C:\strawberry\perl\bin\anuradha6.pl
use strict;
use warnings;
use Data::Dumper;
my @a1 = (1, 2, 3, 4, 5, 6,7,8,9,10,11,12);
my $item;
my @grep = grep { $_ % 3 ==0} @a1;
print "\n numbers divisible by 3 -  ";
print "\n\n @grep \n\n";

my @map = map { $_ * $_ } @a1;
print " \n square of the numbers :   ";
print "\n\n @map \n\n";



