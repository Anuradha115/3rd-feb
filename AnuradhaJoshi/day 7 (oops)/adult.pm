package adult;

our @ISA = qq{member};

sub new 
{
		my $class = shift;
		my ($self) = @_;
		my $this = $class->SUPER::new($self);
		print "enter office address: ";
		my $add = <STDIN>;
		$this->{office_add} = $add;
		print "enter office phone number : ";
		my $phone = <STDIN>;
		$this->{office_phone} = $phone;
		return $this;
}

sub hello
{
	print "\nobject created successfoollly\n";
}
1;