#!/usr/bin/perl -w
use strict;

#do while
my $command;
print "Enter a word , bye to quit . \n";
do{
	print ">";
	chomp($command=<STDIN>);
	$command = lc($command);
	print("$command\n");
}
while($command ne "bye");


my @a = (1..10);




# Defining Array to be shifted
my @array1 = ("GeeksIS", "For", "Geeks");

# Original Array
print "Original Array: @array1\n";

# Performing the shift operation
my $shifted_element = shift(@array1);
#shift(@array1);

# Printing the shifted element
print "Shifted element: $shifted_element\n";

# Updated Array
print "Updated Array: @array1";

print "*******************\n";
my @b =(1,2,4,3,6,9,8,7,5,3);  #28
my $sum_odd=0;
my $num =0;

do{{
	$num = shift(@b);
	next if $num%2==0;
	$sum_odd  += $num;
}}
#while(scalar @b>0);
#while($#b+1>0);
while (scalar @b >0);  # scalar will give the exact number of element in the array : while($#b+1 >0); -> $#b - > will give highes index of array so if we add 1 then it will be# total number of element in the array
print(" sum of numner in array : $sum_odd\n");


print("****Last key word used in loop");
my $a = 1;
mylabel : {
	do{
		print "value of a : $a\n";
		$a = $a+1;
		last if ($a==10);   # last key word let the code execute until given if condition met
	}
	while($a>0);
}

print "**************use of until***** which is reverse of while ***********\n";
my $counter = 10;
until($counter==0){
	print "$counter\n";
	$counter --;
}

print "*********until use ******\n";
my $counter = 10;
my @numbers = qw(one two three four five);
until(!scalar @numbers){
	$counter ++;
	#my $removed = shift(@numbers);
	#print "$removed\n";
	print shift(@numbers) . "\n";
}
print "$counter elements removed ! \n";



print "***** do until****** \n";


my $cmd;
print "Enter a word , Enter quit to quit \n";
do{
	print(">");
	chomp($cmd =<STDIN>);
	$cmd = lc($cmd);
	print "you entered : $cmd\n";
}
until($cmd eq "quit");  # if true then only it will exit or it runs




	



