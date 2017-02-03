use strict;
use warnings;
my %h2 = 
(
	111 => '0000',
	222 => 'huhduaidh',
);
my %hash = 
(
	10 => 'a',
	20 => 'b',
	30 => \%h2,
);
my @a1 = (1,2,3,4,5,\%hash);
foreach my $a (@a1)
{
	if(ref($a))
	{
		foreach my $b (keys %$a)
		{
			if (ref($$a{$b}))
			{
					print "$b =>";
				foreach my $c (keys %{$$a{$b} })
				{	
					i
				}
			}
			else
			{
				print "$b => $$a{$b} \n";
			}
		}
	}
	else
	{
		print "$a \n"
	}
}