#!/usr/bin/perl -w
use strict;



#Regular expression     =~  this is the binding operator for perl    ->   forward slashing enclose the regex : /string/
# string =~ regex;

# delimieres : m - > for match , s - > for substitution



my $s = "HELLO PERL";
print "Match found \n" if $s =~ /PERL/;    # trying to find match of "PERL" in string $STDERR
 
 my @animals = qw (cat horse camel rat elephant);
 foreach my $var (@animals){
	 print "$var \n" if $var !~ /at/;        # here !~ is using if not match "at" in @animals then only print them 
 }
 
 
 $_ = "HELLO AMERICA";
 print "Match found America\n" if /AMERICA/;    # if we use default variable $_  - > we dont want to use regex binidng  =~
 
 $_ = "HELLO north_AMERICA";
 print "Match found north_America\n" if m"AMERICA";    # using m insted of enclosing forwardslash  / / , and we need to use "" or : : - > m :AMERICA: - > it also work; 
 
 
 my @html = ( 'html fragement',
				'<k>',
				'<am>',
				'</k>',
				'<xml>this is a xml</xml>');
				
	foreach(@html){
print "$_ found forward slash \n" if m"/";    #meaning if "/" found in given array then only given code or print block will print , 
	}
	
	
print " case sensitivity using i \n";
my $s = "hello CANADA";
print "Trying to matching with case sensitivity :" if $s =~ /canada/; 
print "trytint to matching ignoring casesensitivity : " if $s =~/canada/i;


print " ****** regex with quantifiers \n";
my $s = 'baaaaaadcfaaaaaaaaaaaaaaaaaaaabcde';
print "match 20s a in teh given string :\n" if $s =~ /a{20}/;   # it will take regular sequence of a in string if not regular but still 20 a is there then it dont work


my @names = qw(Avinash Abhiram Aakash Shuravi);
foreach(@names){
print "$_ ,\n"  if(/A*s+/); # printing if name contains A -> 0 or more , s -> contains one time or more time
}

#meta characters : {} , [] , ^ , $ , . , | , * , + , ? , \   -> these all meta characters can not match simply , so we need to use backslash just before these metacharacter
# dot . matches any character except newline \n .

my $s = "expression : 2*2";
#print "Match\n " if $s =~ /*/; # throws error :  Quantifier follows nothing in regex; marked by <-- HERE in m/* <-- HERE / at regex.pl line 59.
print "match  * in string \n" if  $s =~ /\*/;

# anchor meta character ^ - > match begining of string , $ match end of string
my $abc = "blueberry";
print "blue match in the begining of string \n" if $abc =~/^blue/;
print "mathc berry in last of the string \n" if $abc =~/berry$/;
print "blue match in the end of string \n" if $abc =~/blue$/;
print "matching the exact string\n" if $abc =~/^blueberry$/;















