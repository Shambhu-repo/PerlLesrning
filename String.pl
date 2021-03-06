#!/usr/bin/perl -w
use strict;

#String  : interpolation always happens in side double quote " " ;

my $name = 'Daniel';
my $s1 = q/My name is $name/;    # here q/ string /   - > equal to 'string'
print($s1, "\n");
my $s2 = qq/My name is $name/;    # here qq / string /  - > equal to "string"
print ($s2 , "\n");


#String function
print("--------------- String function---------\n");

my $s = "this is demo \n";
print(length($s), "\n");

# LOwer case lc and upper case uc
print("upper case demo :", uc($s),"\n");
print("lower case demo :" , lc($s), "\n");


print("--------------- String index function---------\n");
my $s2 = "P Learning PERL is easy";
my $sub = "PERL";
my $index = index($s2,$sub);
print"index of $sub is : $index\n";


print("--------------- String reverse function---------\n");
print ("reverse of '$s2' :",  reverse("$s2"),"\n");
print scalar reverse("$s2"),"\n";


my @array = (-3,-2,-1,1,24,5);
print reverse(@array),"\n";


#SubString
my $substring = "Perl is learning";
my $subs = substr($substring, 3);  # this will extract the portion from index 3 and put into $subs 
print("substring printing from index 3rd of $substring is : $subs \n");


# -ve index   - > in perl , Right most characer starts at 0 and move right to left 0 , -1 , -2 
print("-------negative index in substring funciton-----\n");
my $subs = substr($substring, -8);
print("substring printing from index -8th index of $substring is : $subs \n"); # it also excudes most higher number like it does not print -9th index so it will print only 0 to -8th


# extract substring from range
print("-------range index to extract substring from string-----\n");
my $subs = substr($substring, 0,3);
print("substring printing from 0th to 3rd index of $substring is : $subs \n"); # it excludes upper bundry . meaning it does not print 3rd index .


#
print("-------replacement-----\n");
substr($substring,0,3,"Java");
print "string: $substring\n";














