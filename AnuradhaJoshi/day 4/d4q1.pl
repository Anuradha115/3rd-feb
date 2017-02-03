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
	print "\n enter contact number : ";
	my $phone = <STDIN>;
	
	my $hash = 
		{
			name => $name ,
			age => $age,
			gender => $gender,
			phone => $phone,
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
  print "\n }";
}
