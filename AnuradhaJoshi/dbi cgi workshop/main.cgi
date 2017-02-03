#!C:/strawberry/perl/bin/perl.exe
use strict;
use warnings;
use database;
use CGI;



my $cgi = new CGI;
print $cgi->header(-type => 'text/html');
print $cgi->start_html(-title => 'library');

my $dbh = database::DBconnect();
my $users = database::dropdown($dbh);


print $cgi->h5("to know the books belonging to the selected user");
print $cgi->start_form(-method=>'GET', action =>'booklist.cgi');
print "<br>user name";
print "<select name='user'>";
foreach my $row (@$users){
	print "<option value='$row->[0]'>$row->[1]</option>";
	}
	
print '</select>';
print "<br>";
print "<br>";

print $cgi->reset();
print $cgi->submit(-name => 'submit', -value => 'submit');

print $cgi->end_form();

print "<br> <br> <br>";
print $cgi->h5("to know the books lent by the selected user");
print $cgi->start_form(-method=>'POST', action =>'booklentlist.cgi');
print "<br>user name";
print "<select name='lent'>";

foreach my $row (@$users){
	print "<option value='$row->[0]'>$row->[1]</option>";
}
	
print '</select>';
print "<br>";
print "<br>";

print $cgi->reset();
print $cgi->submit(-name => 'submit', -value => 'submit');

print $cgi->end_form();
print $cgi->end_html();

my $dbh = database::DBdisconnect($dbh);


