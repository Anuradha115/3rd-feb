use strict ;
use warnings;
print "enter the number of family members : ";
my $n = <STDIN>;
my %hoh;
for (my $i = 1 ; $i<= $n ; $i++)
{
	print " \n enter the name : ";
	my $name = <STDIN>;
	print " \n enter the age : ";
	my $age = <STDIN>;
	print "\n enter gender : ";
	my $gender = <STDIN>;
	
	my $phone;
	my $address;
	
	if ($age <18)
	{
	print "\n enter home contact number : ";
	 $phone = <STDIN>;
	print "\n enter home address : ";
	 $address = <STDIN>;
	
	}
	else
	{
	print "\n enter contact office number : ";
	 $phone = <STDIN>;
	print "\n enter office address : ";
	 $address = <STDIN>;
	}
	
	
	my $hash = 
		{
			name => $name ,
			age => $age,
			gender => $gender,
			phone => $phone,
			address => $address ,
		};
		
	;
	$hoh{$name}= $hash;

}

foreach my $outter (keys %hoh) 
{
	print "$outter => \n { \n";
	foreach my $inner (keys %{$hoh{$outter}}) 
  {
    print " \t $inner = ", $hoh{$outter}{$inner}, "\n";
  }
  print "\n } \n";
}

print "\n enter the name to be searched : ";
my $search = <STDIN>;

foreach my $outter (keys %hoh) 
{
	if($outter eq $search)
	{
		foreach my $inner (keys %{$hoh{$outter}}) 
		{
			print " \t $inner = ", $hoh{$outter}{$inner}, "\n";
		}
  
	}
}