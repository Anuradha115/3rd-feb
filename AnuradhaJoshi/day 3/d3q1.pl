#!C:\strawberry\perl\bin\anuradha\7.pl
use strict;
use warnings;
my @a1 = ( 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 );
print " \n array is : @a1 \n ";
for (my $i = 0 ; $i< 10 ; $i++)
	{
	for ( my $j = 0 ;$j < 10 ;  $j++)
		{
		if ($j != $i)
		{
		print "$a1[$i]  $a1[$j]  \n";
		}
		}
	}