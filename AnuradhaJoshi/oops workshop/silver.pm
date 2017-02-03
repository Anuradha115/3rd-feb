package silver;

our @ISA = qq(account);

sub new {
	my $class = shift;
	my ($self) = @_;
	my $this = $class->SUPER::new($self);
	$this->{points} = 0;
	print "\n account created \n";
	my $balance = $this->{balance};
	$this->get_points($balance);
	return $this;
}

sub view_info {
	my ($self) = shift;
	my ($input) = @_;
	$self->SUPER::view_info($input);
	print "points : ".$self->{points};
}


sub update_balance {
	my ($self) = shift;
	my ($input) = @_;
	my $this = $self->SUPER::update_balance($input);
	$self->get_points($input);
	print "points : ".$self->{points};
}


sub get_points {
	my ($self) = shift;
	my ($input) = @_;
	if ($self->{balance} > 30000){
		$self->{points} = 1000;
		print "\n!!congratulations you have redeemed 1000 points\n";
	}
	
}

1;