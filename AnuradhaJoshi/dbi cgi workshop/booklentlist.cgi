#!C:/strawberry/perl/bin/perl.exe
use strict;
use warnings;
use database;
use CGI;

my $cgi = new CGI;
print $cgi->header(-type => 'text/html');
print $cgi->start_html(-title => 'library');

my $dbh = database::DBconnect();


my $uid = $cgi->param('lent');

my @uname = database::get_name($dbh,$uid);
my $bname = database::get_lent_books($dbh,$uid);
my $borr_id = database::get_borrower_id($dbh,$uid);

 print $cgi->h1("books lent by $uname[0]");
 
 print "<table border ='1'>";
 print "<caption> book lent details </caption>";
 print "<tr> <th> book name </th> <th> lent to </th></tr>";
 foreach my $book (@$bname){
	print "<tr><td>$book->[0]</td>";
	
	
} 
foreach my $borrower (@$borr_id){
	my $bo1 = $borrower->[0];
	my @bo2 = database::get_name($dbh,$bo1);
	print"<td>$bo2[0] </td></tr>";
	
	
	
} 
print"</table>";
print $cgi->end_html();

my $disc = database::DBdisconnect($dbh);