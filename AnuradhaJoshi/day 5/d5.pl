use strict ;
use warnings;

my $filename1= 'datafile.txt';
open (my $fh1, '<', $filename1)
	or die "ERROR $!";
	
my $filename2 = 'valid_data.txt';
open (my $fh2, '>', $filename2)
	or die "ERROR $!";
	
while (my $row = <$fh1>)
{
	my @array = split ("," , $row);
	print "$array[0] : ";
	if ($array[0]=~/\b\d+\b/)
	{
		print "valid ";
		
	}
	else
	{
		print "invalid";
	}
	print "  ";
	print "$array[1] : ";
	if ($array[1]=~/\b\d+\b/)
	{
		print "valid ";
		
		
	}
	else
	{
		print "invalid";
	}
	print " \n";
	print "$array[2] : ";
	if ($array[2]=~/\b\w*\b/)
	{
		print "valid ";
		print $fh2  "\n".ucfirst($array[2]) ;
	}
	else
	{
		print "invalid";
	}
	print " \n";
	
	print "$array[3] : ";
	if ($array[3]=~/\b\d{1,3}\b/)
	{
		print "valid ";
		
		
	}
	else
	{
		print "invalid";
	}
	print " \n";
	
	print "$array[4] : ";
	if ($array[4]=~/\b\w*\b/)
	{
		print "valid ";
		
	}
	else
	{
		print "invalid";
	}
	print " \n";
	
	print "$array[5] : ";
	if ($array[5]=~/\b\d{8,10}\b/)
	{
		print "valid ";
		if ($array[5]=~ /\b\d{8}\b/)
		{
			print $fh2 "\n020".$array[5];
		}
		else
		{
			print $fh2 "\n020".$array[5];
		}
	}
	else
	{
		print "invalid";
	}
	print " \n";
	
	print "$array[6] : ";
	if ($array[6]=~/\b\.*@.*\b/)
	{
		print "valid ";
		print $fh2 lc($array[6]);
		print $fh2 "\n";
		
	}
	else
	{
		print "invalid";
	}
	print "\n \n \n";
}