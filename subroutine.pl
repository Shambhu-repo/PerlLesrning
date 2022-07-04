#!/usr/bin/perl -w
use strict;

# subroutine is a block of code - > like a method in java 
#eval() - > we can call teh subroutine in runtime with the help of eval method
# Eg - > sub Name Prototype attribute block

sub subroutine_name{
	print "sub routine in PERL \n";
}
&subroutine_name; # we can use this
subroutine_name();   # this is the calling sub or

#reference
#$subref = \&subroutine_name;
#&$subref;
#&{$subref};

print " subroutine with parametee \n";
#print &sum (1..10), "summing the number from 1 to 10 \n";
sub sum{
	  my $total =0;
	  for my $i(@_){        # @_ special symbol or variabel which stores the all value comes in sub parameter - > here $i is iterating @_ and adding in $total
		  $total += $i;
	  }
	  return $total;
}
print "summing the number from 1 to 10 \n";
print &sum (1..10);


print " subroutine returnting implicitly its value \n";
sub say_hello{
	my $name = "Daniel";
	print "hello $name\n";
	$name;      # this is returning the value implicitly
}
say_hello();


print " subroutine returnting explicitly its value \n";
sub say_hello{
	my $name = "Daniel";
	print "hello $name\n";
	return $name;      # this is returning the value explicitly.
}
say_hello();
	
	



	