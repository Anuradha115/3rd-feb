#!C:\strawberry\perl\bin\anuradha
use strict;
use warnings;

use member;
use adult;
use child;

my %hash;

print "enter the number of members : ";
my $number = <STDIN>;

foreach my $i (1..$number)
{
	print "press 1 if age is greater than 18: ";
	my $option = <STDIN>;

	if ($option == 1)
	{
		my $f1 = adult->new({});
		my $key = $f1->name();
		$hash{$key} = $f1;
		
	
	}
	else
	{
		my $f1 = child->new({});
		my $key = $f1->name();
		$hash{$key} = $f1;
		
	}

}

print "\n\n\n----------------------------------------------------------------\n ";

my $menu;

do
{
	print "\n -------------------\n please select an option\n".
		"1 : print information for all members \n".
		"2 : search for a member by name\n".
		"3 : sort the members alphabetically\n".
		"4 : update the information or a member\n".
		"5 : exit\n";
	 $menu = <STDIN>;


	if ($menu == 1)
	{
		foreach my $a (keys %hash)
		{	
			print "$a => \n";
			foreach my $b (keys %{$hash{$a}})
			{
				print "\t $b => $hash{$a}->{$b}";
			}

		}
	}

	elsif ($menu == 2)
	{
		print "enter the name to be searched : \n";
		my $search = <STDIN>;
		foreach my $a (keys %hash)
		{	
			if($a eq $search)
			{	
				print "$a => \n";
				foreach my $b (keys %{$hash{$a}})
				{
					print "\t $b => $hash{$a}->{$b}";
				}
			}
		
		}
	
	}

	elsif ($menu == 3)
	{
		foreach my $a (sort keys %hash)
		{		
			print "$a => \n";
			foreach my $b (keys %{$hash{$a}})
			{
				print "\t $b => $hash{$a}->{$b}";
			}

		}

	}

	elsif ($menu == 4)
	{
		print "\nenter the name to be udated : \n";
		my $search = <STDIN>;
		foreach my $a (keys %hash)
		{	
			if($a eq $search)
			{	
				print "\nchoose an option to be updated\n1 : name\n2 : age\n3 : number\n4 : address\n";
				my $update = <STDIN>;
				if ($update == 1)
				{
					print "\nenter new name : ";
					my $value = <STDIN>;
					$a = $value;
					$hash{$a}->{name}=$value;
					print "\nupdated successfuly\n";
					
				}
				
				elsif ($update == 2)
				{
					print "\nenter new value : ";
					my $value = <STDIN>;
					$hash{$a}->{age} = $value;
					print "\nupdated successfuly\n";
				}
				
				else 
				{
					print "\nselect a valid option \n";
				}
				
			
			}
		
			
	
		}
	}

	print "\n-----------------------------------------------------------------------\n"
	
} while($menu != 5)