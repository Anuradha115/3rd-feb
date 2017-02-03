#!C:\strawberry\perl\bin\anuradha\4.pl
use strict;
use warnings;
print "enter the first number \n";
my $a=<STDIN>;
print "enter the second number \n";
my $b=<STDIN>;
print "\n for addition press 1 \n for subtraction press 2 \n for multiplication press 3 \n for division press 4 \n";
my $c=<STDIN>;
if ($c == 1)
{
print "you chose addition";
my $d = $a + $b;
print "\n sum is $d";
}
elsif($c==2)
{
print "you chose subtraction";
my $d = $a - $b;
print "\n difference is $d";
}
elsif ($c==3)
{
print "you chose multiplication";
my $d = $a * $b;
print "\n product is $d";
}
elsif($c==4)
{
print "you chose division";
my $d = $a /$b;
print "\n quotient is $d";
}
else 
{print "you entered a wrong choice";}