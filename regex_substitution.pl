#!/usr/bin/perl -w
use strict;


#variable substitution in perl regex
my $abc = "blueberry";
my $xyz = "berry";
print "mathc blue + berry : \n" if $abc =~ /blue$xyz/;


print "search and replace \n";
my $x = "blueberries";
$x =~ s/blue/rsap/;    # blue is displcaed by rsap
print "$x \n"; # result : raspberries 


my $y = "'quoted words'";
$y =~ s/^'(.*)'$/$1/; # here substituiting that starts from single quation adn ednd witth single quatation - > and replace it into $1 variable and return to $y
print "$y \n";

print "non destructinve modifier - > r \n";
my $a = "I like rabbits .";
my $b = $a =~ s/rabbits/dogs/r;
print "$a, $b\n";


#reverse all the words in a string
my $x = "wall cat house shop";
$x =~ s/(\w+)/ reverse $1/ge;  # ge -> global evaluation 
print "$x \n";


print "convert percentage to decimal \n ";
my $n = "A 59% pass rate";
$n =~ s:(\d+)%:$1/100:e; # storing 59 in to $1 and dividing it by 100 and evaluating
print "$n \n";