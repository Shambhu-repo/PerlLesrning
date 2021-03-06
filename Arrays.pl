#!/usr/bin/perl -w
use strict;

#List is immutable and arrays is mutable
my @fruits = qw(Apple Mango Orange Watermelon Pineapple);
print("@fruits\n");

#
print("Access array element -----\n");
print("@fruits[0]\n");


print("Access  multiple array element at once  -----\n");
my @selec = @fruits[1..3];
print("@selec\n");

print("Access  multiple array element at once with negative index -----\n");
my @selec = @fruits[-2..1];  # it starts from -1 from left , so -2 is watermelon , -1 is pineapple, 0 is apple and 1 is Mango - > Ans watermelon,pipeapple,apple,mango
print("@selec\n");


print("Counting array elements -----\n"); # if we assign array to scaler $a so we can get number of array element
my $a = @fruits;
print("$a\n");

print("Counting array elements with scalar function -----\n");
my $a = scalar @fruits;
print("$a\n");


print("------to get highes count of array element use -----\n");
my $a = $#fruits;  # to get highest -- > $#ArrayNAme   , higest array index is n-1
print("$a\n");


print("------modify array elements -----\n");
my @fruits = qw(Apple Mango Orange Watermelon Pineapple Banana Littchi Avocado);
$fruits[0] = "Strawberry";
@fruits[1..3] = qw(Bus Motorcycle plane);
print("@fruits\n");


print("------Array in Stack: LIFO - > Last in first out - > push add and pop removes-----\n");
my @stack =();
print("Push 1to 3 to array\n");
push(@stack,4);  # for single value pushing
push(@stack,1..3);  # for multiple value pushing
print("@stack\n");

print("------pop function in arrays-----\n");
my $removed = pop(@stack);
print("removed element : $removed\n");

my $removed = pop(@stack);
print("removed element : $removed\n");

my $removed = pop(@stack);
print("removed element : $removed\n");

my $removed = pop(@stack);
print("removed element : $removed\n");



print("------Array in que: FIFO - > First in first out - > push add and pop removes-----\n");
my @que =();
print("enque 1  to array\n");
unshift(@que,1);  # for single value pushing
print("@que\n");

print("enque 2 to array\n");
unshift(@que,2);  # for single value pushing
print("@que\n");

print("enque 3  to array\n");
unshift(@que,3);  # for single value pushing
print("@que\n");

print("------Array in que: FIFO - > First in first out - > pop removesfrom que-----\n");
my $elem = pop(@que);
print("element : $elem\n");


# Sorting arrays
print("------Sorting array-----\n");
my @countries = qw(nepal india china america russia ukrain mexico canada britain);
my @sorting = sort @countries;   # ascending oredr in nature by default
print("@sorting\n");

print("------Sorting number array-----\n");
my @a = qw(1 2 5 7 6 4 3);
print("unsorted : @a\n");
 @a = sort {$a <=> $b} @a;
 #my @sorting = sort(@a);
 print("sorted", "@a" ,"\n");  # not working






























