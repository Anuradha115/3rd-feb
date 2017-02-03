#!C:\strawberry\perl\bin\anuradha

use strict;
use warnings;

use account;
use gold;
use silver;

my $option;
my %hash;

do {
	
	print "\n--------------------------------------------------------";
	print "\nplease select a valid option from the given menu\n".
			"\npress 1 : to create a account \n".
			"\npress 2 : to view balance\n".
			"\npress 3 : to view info\n".
			"\npress 4 : to update balance\n".
			"\npress 5 : to exit\n".
			"------------------------------------------------------\n";
	 $option = <STDIN>;



	if ($option==1){
		
		print "\nplease select an account type\npress 1 : for normal account.\npress 2 : for silver account".
			  "\npress 3 : for gold account\n";
		my $type = <STDIN>;
		
		if ($type==1){
			
			my $a1 = account->new({});
			$hash{$a1->get_acc_num()} = $a1;
		}
		
		elsif ($type==2){
			
			my $a1 = silver->new({});
			$hash{$a1->get_acc_num()} = $a1;
		}
		
		elsif ($type==3){
			
			my $a1 = gold->new({});
			if($a1){
				$hash{$a1->get_acc_num()} = $a1;
			}
		}
		print "\n--------------------------------------------------------\n";
	}
	
	
	
	elsif ($option == 2){
		print "enter account number :";
		my $input = <STDIN>;
		chomp($input);
		$hash{$input}->view_balance();
		
	}
	
	elsif ($option == 3) {
		print "enter account number :";
		my $input = <STDIN>;
		chomp($input);
		$hash{$input}->view_info();
		print "\n--------------------------------------------------------\n";
	}
	
	elsif ($option == 4) {
		print "enter account number :";
		my $input = <STDIN>;
		chomp($input);
		$hash{$input}->update_balance();
		print "\n--------------------------------------------------------\n";
	}

}while($option != 5);
