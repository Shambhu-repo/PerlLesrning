#!/usr/bin/perl -w
use strict;

#Condition in Perl  : condition execute from Right to left

my $a = 1;
print("Hello Perl \n") if ($a==1);

#Rules
#Number 0 or String o - > false
#Wndefined value  ->     false
#Empty list 		->  false
#Empty string 		-> false
#Everything else 	-> true

print "*****************if and else ******************\n";
my $b = 2;
my $c = 5;
if($b == $c){
	print("a and b is same \n");
}
else{
	print "a and b is not same \n";
}

print "*****************if and elseif ******************\n";

if($b==$a){
	print " a and b are equal \n";
}
elsif($b>$a){
	print "b is greater than a\n";
}
else{
	print "b is less than a\n";
}


#unless statement : it is just opposite to if  - > mening if condition is false only unless code execute
print "*****************unless statement is equal to if not statement or ******************\n";
my $a = 1;
print "print \"Hello perl\" because condition is false\n";
print("Hello Perl \n") unless ($a==2);
print "does not print \"Hello perl\" because condition is true\n";
print("Hello Perl \n") unless ($a==1);


print "*****************unlesselse statement ******************\n";
my $b = 2;
my $c = 5;
unless($b !=$c){
	print("if unless statement false then print this line\n");
}
else{
	print " if unless statement is true then print this line\n";
}


print "*****************unlesse else elsif statement ******************\n";
my $b = 2;
my $c = 5;
unless($b !=$c){
	print("if unless statement false then print this line\n");
}
elsif($b>$a){
	print " b is grater than a \n";
}
else{
	print"b is less than a\n";
}











