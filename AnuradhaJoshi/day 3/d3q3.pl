#!C:\strawberry\perl\bin\anuradha6.pl
use strict;
use warnings;
our $i = 3;
my ($j , $i);
print "the first 25 prime numbers are \n ";
print "2 ";
my $count  = 2 ;
while ( $count< 26) 
{
	for($i=3;$i<=100;$i++) 
	{ 
		for($j=2;$j<=$i;$j++) 
			{ 
				if(($i%$j)==0) 
					{ 
					last;   # breaking out of the inner loop. 
					} 
			}
			 
				if($j==$i) 
					{ 
					print "$i\n"; 
					$count++;
					} 
			
	}
	
	
}
