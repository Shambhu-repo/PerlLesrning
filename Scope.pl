#!/usr/bin/perl -w
use strict;

# keyword for local variable is : my , and for globla variabe is : our :   our $num=3; -> this is globla variable , my $num=5; is local variable

my $fruit ="Mango";
print ("My favorite first fruit is : " . $fruit . "\n");

# Example : another block

$a = 1;
 if ($a==1){
	 my $fruit_is= 'Apple';
	 print("my favorite second fruit is: $fruit_is\n");
 }
 
 #checking  -- > here $fruit_is local variabe for if loop so can not access from outsied
  
  #print("my favorite second fruit is: $fruit_is\n");
  print ("My favorite first fruit is : " . $fruit . "\n");
  
 
 