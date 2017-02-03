#!C:\strawberry\perl\bin\anuradha6.pl
use strict;
use warnings;
 our $avg = 70;
 print "\n average age is $avg";
print "are you a \n male 1  \n female (2) \n";
my $gender = <STDIN>;
	if ($gender == 2)
	{
	$avg = $avg + 4 ;
	}
	 print "\n average age is $avg";
print "\n do you smoke \n yes : 1 \n no : 2 ";
my $smoke = <STDIN>;
	if ( $smoke == 1)
	{
	$avg = $avg -5;
	}
	else
	{
	$avg = $avg + 5;
	}
	 print "\n average age is $avg";
print " \n do you exercise ? \n yes : 1 \n no : 2 \n";
my $exe=<STDIN>;
	if ($exe == 1)
	{
	$avg = $avg +  1;
	}
	else 
	{
	$avg = $avg - 3;
	}
	 print "\n average age is $avg";
print "\n do you drink alcohol ? \n yes : 1 \n no : 2 \n";
my $drink = <STDIN>;
	if($drink==1)
	{
	$avg = $avg - 1;
	}
	else 
	{
	$avg = $avg + 2;
	}
	 print "\n average age is $avg";
print "\n do you eat fatty food ? \n yes : 1 \n no : 2 \n";
my $fat=<STDIN>;
	if($fat == 2)
	{
	$avg = $avg + 3
	}
 print "\n average age is $avg";