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
	
		
		if(ref($$a{$b}) eq 'ARRAY')
		
		{
			for my $i (0..$#(@$a{$b})
			{
			print $$a{$b}[$i]."\n";
			}
		}
			
		
	}

}