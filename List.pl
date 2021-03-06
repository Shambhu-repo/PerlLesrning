#!/usr/bin/perl -w
use strict;


#List: print operator is a list operator

print(());   # Empty list
print("\n");
print("apple","mandgo", "berry");
print("\n");
print(1,2,3,4,5);
print("\n");
print("This", "is", "an", "example", "of", "a", "list");


#Complex list
my $a =10;
my $s = "A String";
print("Complex List: ", $a , $s , "\n");


#qw function - > quote word
print("without qw function\n");
print("Apple","Mango","berry");
print("\n");


print("with qw function\n");
print(qw(mango apple berry));
print("\n");


# Flatterning in list
print("Flatterning in list");
print((5,6,7,(8,9))); # list of 8,9 is in another list which contains 5,6,7
print("\n");

print((5,6,7,8,9));
print("\n");

print(5,6,7,8,9);
print("\n");

print(((5,6,7),8,9));
print("\n");


print("--------Access list element------- \n");
print((1,2,3,4,5)[0]);
print("\n");
print((1,2,3,4,5)[0,1,2]);


#Ranges
print("rnages given by .. in list\n");
print((1..50));
print("\n");





















