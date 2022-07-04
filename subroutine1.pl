#!/usr/bin/perl -w
use strict;

my @a =();
my $j = min(@a);    #here min is undefined subroutine
if(defined $j){
	print "Minimum of @a is $j \n";
}
else{
	print "The array a is empty .\n";
}

my @b = (109,15,41,2,33,1010,55,9);
my $n = min(@b);
if (defined $n){
	print "Minimum of @b is $n \n";
}
else{
	print "The array b is empty .\n";
}

sub min{
	my $m = shift;   #
	return undef unless defined $m;
	for(@_){
		$m= $_ if $m > $_; 
	}
	return $m;
}
		


	