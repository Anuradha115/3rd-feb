package account;

sub new{
	my $class = shift;
	my ($self) = @_;
	$self->{ACC_NUM} = int(rand  100);
	print "\nplease enter your details\n";
	print "name : ";
	my $name = <STDIN>;
	$self->{NAME} = $name;
	print "\nenter the initial balance : ";
	my $balance = <STDIN>;
	$self->{balance} = $balance;
	bless ($self, $class);
	print "\n account created \n";
	print "\naccount number is :".$self->{ACC_NUM}." \n";
	return $self;
}

sub get_acc_num {
	my ($self) = shift;
	return $self->{ACC_NUM};
}
	


sub view_balance {
	my ($self) = shift;
	my ($input) = @_;
	print "balance : ". $self->{balance};
	return $self->{balance};
}

sub view_info {
	my ($self) = shift;
	my ($input) = @_;
	print "\n name :".$self->{NAME};
	print "\n account number : ". $self->{ACC_NUM}."\n";
	print "\n balance : ". $self->{balance}."\n";
}

sub update_balance {
	my ($self) = shift;
	my ($input) = @_;
	print "\nenter new balance :";
	my $new_bal = <STDIN>;
	$self->{balance} = $new_bal;
	print "\nupdated balance : ". $self->{balance};
	return $self->{balance};
}
1;