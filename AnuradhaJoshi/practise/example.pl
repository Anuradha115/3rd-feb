use strict;
use warnings;
my @ah = (
	{
		Language => 'Hindi',
		Currency => 'Rupees',
		Capital => ["Mumbai", "Pune", "Delhi",],,
	},
	{
		Language => 'Finnish',
		Currency => {
			Language => 'Hindi',
			Currency => 'Rupees',
			Capital => 'Delhi',
		},
		Capital => ["Rome", "Florence", "Venice",],,
	},
	{
		Language => 'German',
		Currency => 'Frank',
		Capital => 'Berlin',
	},
);
foreach my $a (@ah)
{
	
	foreach my $b (keys %$a)
	{
		
		
		if( ref($a->{$b}) eq 'ARRAY' )
		{
            print "$b=>";
			
			foreach my $c (@$a{$b})
			{
				
				print "@$c";
				print ","

			
			}
			
			print "\n" ;
		
		}
		

		
		elsif( ref($a->{$b}) eq 'HASH'  ) 
		{
				print "$b=> { \n";
				foreach my $d (keys %$a{$b})
				{
					print "$a{$b}->{$d} ,";
				}
				print "\n }";
			
		}

		
		
		
		else
		{
			print "$b => $$a{$b} \n";
		}
	
	
	}


}