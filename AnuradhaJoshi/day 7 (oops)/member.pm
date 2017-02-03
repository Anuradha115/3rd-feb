package member;

sub new
{
	my $class = shift;
	my ($self) = @_;
	print "enter name : ";
	my $name = <STDIN>;
	print "enter age : ";
	my $age = <STDIN>;
	$self->{name}=$name;
	$self->{age} = $age;
	bless($self,$class);
	return $self;
}

sub name
{
	my $self = shift;
	my $name_key = $self->{name};
	return $name_key;
}
1;