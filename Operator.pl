#!/usr/bin/perl -w
use strict;


# Arithmetic operator
#   +  - > to addition ,  - -> to subtarction , * - > to multiplication , \ - > to division ,  % - > moudle for odd or even  8%2   - > 0 even , 7%2 - > 1 Odd

#  2**2  - > 16   : meaning double multiplication


#


#Bitwise Operator: Bitwise operator allow to perform on number , one bit at one time
# & - > and ,  | - > or ,  ^ - > exclusiev or ,   ~ - > not , >>  -> shift right 1 bit ,  <<  -> shift left 1 bit


#Spaceship operator
#   <=>       - > HTis is spaceship operator




#String operator 
my $string1 = "one";
my $string2 = "two";
print ("We are same string\n") if ($string1 eq $string2);
print ("We are not same string\n") if ($string1 ne $string2);
print ("Compared\n") if ($string1 cmp $string2);    # if string1 is smaller - > -1 , string1 is bigger - > +1 , equal - > 0  // String1 is smaller than strign2 is true so print compared , becausse it is non zero
print ("Less Than\n") if ($string1 lt $string2);
print ("greater than\n") if ($string1 gt $string2);
print ("Less than or equal to\n") if ($string1 le $string2);
print ("greated than or equal to\n") if ($string1 ge $string2);


#Concatnate operatr - > . (dot is cancating operatro)
print("-------------------concat demo--------------------\n------");
print "This is an example of " . "concatenation" . "\n";

# repeting string
print("-------------------repeating string by using x 4--------------------\n------");
print "Harry is good !" x 4, "\n";




#chomp operator in string  -> this operator removes the last character of string and return the numbers of charates remove in string
print("-------------------chomp demo--------------------\n");
my $s;
print("please enter your input \n");
chomp($s=<STDIN>);
print $s;






