#!C:\strawberry\perl\bin\anuradha6.pl
use strict;
use warnings;
print "please enter a string \n";
my $str=<STDIN>;
chomp($str);
my @a1 = ( split( //,$str));
print " \n the array is :";
print "("." @a1 ".") \n" ;
my $size = @a1;
print "the size of array is : " .$size. "\n"; 
for (my $i = 0 ; $i < $size ; $i ++)
{
	if ($i % 2 == 0)
	{
	$a1[$i] = uc($a1[$i]);
	}
	else 
	{
	$a1[$i] = lc($a1[$i]);
	}
}
print @a1;