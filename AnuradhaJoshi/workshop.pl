use strict;
use warnings;
my $filename = 'assignment.html';
open (my $fh , '<' , $filename)
	or die "ould not open '$filename' $!";
	
my $f2 = 'ws.csv';
open (my $fh1 , '>' , $f2)
	or die "could not open '$f2' $!";
	
	
my $c=1;
my @array;


	
while(my $row = <$fh>)
{
	
	if ($row =~ m/<th.*>(.*)<\/th>/)
	{
		
		print  $fh1 "$1,";
	}
	print"\n";
	

	if ($row =~ m/<td>(.*)<\/td>/)
	{
		my $val = $1;
		if( $c==1)
		{
			if ($val=~ /\b\d+\b/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		
		}
		
		
		elsif ($c == 2)
		{
			if($val=~/\w*/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		
		elsif ($c == 3)
		{
			if($val=~/\w*/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		
		elsif ($c == 4)
		{
			if($val=~/\.*/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		
		elsif ($c == 5)
		{
			if($val=~/\d+/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		elsif ($c == 6)
		{
			if($val=~/\b\d{10}\b/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		
		elsif ($c == 7)
		{
			if($val=~/.*@.*/)
			{
				push (@array , $val);
				print  $c;
				$c ++;
			}	
			
			else
			{
				print  $c;
				$c++;
				
			}
		}
		
		
		elsif( $c == 8)
		{
			print  $c."\n";
			$c++;
		}
		elsif( $c == 9)
		{
			print  $c."\n";
			$c=1;
		}
		
	}
print  "\n";
my $a = join "\n" , @array;
if(scalar(@array)==7)
{
	print $fh1 $a;
	print $fh1 "\n";
}
undef @array;

}
