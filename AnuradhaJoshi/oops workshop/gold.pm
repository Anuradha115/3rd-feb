package gold;

our @ISA = qq(account);

sub new {
	my $class = shift;
	my ($self) = @_;
	print "\n are you an MNC employee ? (Y/N) \n";
	my $mnc = <STDIN>;
	chomp $mnc;
	if ($mnc eq "Y") {
		my $this = $class->SUPER::new($self);
		$this->{BMS_offer} = "available";
		$this->{flipkart_offer} = "N.A";
		print "\n account created \n";
		my $balance = $this->{balance};
		$this->get_offers($balance);
		return $this;
	}
	else {
	print "sorry you can not create a gold account \n";
	return 0;
	}
}



sub view_info {
	my ($self) = shift;
	my ($input) = @_;
	$self->SUPER::view_info($input);
	print "Book my show offer : ".$self->{BMS_offer};
	print "\nFlipkart offer : ".$self->{flipkart_offer};
}	

sub update_balance {
	my ($self) = shift;
	my ($input) = @_;
	my $this = $self->SUPER::update_balance($input);
	$self->get_offers($input);
	print "points : ".$self->{points};
}

sub get_offers {
	my ($self) = shift;
	my ($input) = @_;
	if ($self->{balance} > 20000){
		$self->{flipkart_offer} = "available";
		print "\n!!congratulations you have a special flipkart offer\n";
	}
	
}

1;