package database;
use DBI;

sub DBconnect {
	my $driver = "mysql";
	my $database = "anuradha";
	my $datasource = "dbi:" . $driver . ":" . $database;

	my $username = "root";

	print "\nAttempting to connect to the database '" . $database . "'\n";

	# get the database handle
	my $dbh = DBI->connect($datasource, $username, '');
		print "Connected sucessfully!\n";
	return $dbh;
}

sub dropdown {
	 my ($dbh) = @_;
	 my $sql = "select * from user order by uid";
	my $sth = $dbh->prepare($sql);
	$sth->execute();
	my $results = $sth->fetchall_arrayref();
	
return $results;
 }
 
 sub get_name{
	my $dbh = shift;
	my $t = shift;
	my $sql="select name from user where uid=$t";
		my $sth=$dbh->prepare($sql);
		$sth->execute();
		my $results=$sth->fetchrow_array();
	
		return $results;
 }
 

 
 sub get_books{
	 my $dbh = shift;

	my $t = shift;
	
	 my $sql = "select bname from book where owner=$t order by bid";
	my $sth = $dbh->prepare($sql);
	$sth->execute();
	my $results = $sth->fetchall_arrayref();
	
	
return $results;
 }
 
 
 sub get_lent_books{
	 my $dbh = shift;

	my $t = shift;
	
	 my $sql = "select bname from book where owner=$t AND owner != currentlywith order by bid";
	my $sth = $dbh->prepare($sql);
	$sth->execute();
	my $results = $sth->fetchall_arrayref();
	
	
return $results;
 }
 
  sub get_borrower_id{
	 my $dbh = shift;

	my $t = shift;
	
	 my $sql = "select currentlywith from book where owner=$t AND owner != currentlywith order by bid";
	my $sth = $dbh->prepare($sql);
	$sth->execute();
	my $results = $sth->fetchall_arrayref();
	
	
return $results;
 }
 
 
sub DBdisconnect
{
	my ($dbh) = @_;
	$dbh->disconnect();
	print "\ndisconnect successfully\n"
}
1;