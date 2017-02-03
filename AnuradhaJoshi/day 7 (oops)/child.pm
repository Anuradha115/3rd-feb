package child;

our @ISA = qq{member};

sub new 
{
		my $class = shift;
		my ($self) = @_;
		my $this = $class->SUPER::new($self);
		print "enter home address: ";
		my $add = <STDIN>;
		$this->{home_add}=$add;
		print "enter home phone number : ";
		my $phone = <STDIN>;
		$this->{home_phone}=$phone;
		return $this;
}