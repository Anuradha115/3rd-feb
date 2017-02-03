#!C:/strawberry/perl/bin/perl.exe
use strict;
use warnings;
use database;
use CGI;

my $cgi = new CGI;
print $cgi->header(-type => 'text/html');
print $cgi->start_html(-title => 'library');

my $dbh = database::DBconnect();


my $uid = $cgi->param('user');

 my $bname = database::get_books($dbh,$uid);
 my @uname = database::get_name($dbh,$uid);
 
 print $cgi->h1("books belonging to $uname[0]");





 print "<table border ='1'>";
 print "<caption> book details </caption>";
 print "<tr> <th> book name </th></tr>";
 
foreach my $book (@$bname)
{
	my $borrower_id = database::
	print "<tr><td>$book->[0]</td><tr>";
	
 }
 print "</table>";
print $cgi->end_html();

my $disc = database::DBdisconnect($dbh);