#!/usr/bin/perl -w
use strict;

#Integers
 $a = 100;
$b = -50;

#Large number : we can use under_Score in large number assignment
 $a = 123_543_789;
#print("$a\n");


# binary use : 0b ,  octol use : 0 and hexa use : 0x
my $a = 0b1110; # (2p3*1) + (2p2*1) + (2p0 * 0 )
my $b = 016;       #( 8p1 * 1) + ( 8p0 * 6)
my $c= 0xE;

print(" -------------- \n");
print ("Binary $a \nOctal $b \nHexaDecimal $c \n");
print(" -------------- \n");

# format: %-12s  -- > menaing, for string , 12 character from left to righ space and start to write,   %5d - > meaning-> digit - > space 5 digit and  start to write from rigth to left 

printf("%-12s%0d\n%-12s%0d\n%-12s%0d\n", "Binary", $a, "Octal", $b , "HexaDecimal", $c);
print(" -------------- \n");
printf("%-5s%5d\n%-5s%5d\n%-5s%5d\n", "Binary", $a, "Octal", $b , "HexaDecimal", $c);
print(" -------------- \n");
printf("%-35s%40d\n%-35s%40d\n%-35s%40d\n", "Binary", $a, "Octal", $b , "HexaDecimal", $c);



#Floating Numbers  : Fixed Numers and scientific numbers

print(" -Fixed numbers------------- \n");
my $d = 2.00025;
print "$d\n";

print(" -Scientific  numbers------------- \n");
my $e = 2.00055E3;  # or we can use $e = 2.000e3;
print "$e\n";



