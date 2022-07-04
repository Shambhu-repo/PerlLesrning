#!/usr/bin/perl -w
use strict;

#for loop
my @a = (1..10);
for (@a){
	print "$_ \n";
}

foreach(@a){
	print " using foreach : $_ \n";
}

print"**************************************\n";
for my $i (@a){
	print " now using i as variable to store iterate value in ........ $i ........\n";
}


print"**************************************\n";
my @a = (1..20);
my $iterator=30;

for  $iterator (@a){
	print " now using iterator as variable to store iterate value in ........ $iterator ........\n";
}
	print " real value of iterator which stores after completion of loop : $iterator \n";
	
	
	print"**************************************\n";
my @a = (1..20);
	print"**********print before the loop @a****************************\n";
for (@a){
	$_ = $_ * 4;
}
	print " print after the loop : @a\n";
	
	
	print"**************************************\n";
my @c = (1..20);
for (my $i=0;$i<=$#c;$i++){     # $#= highest index of array - > $#C - > it will return highest index of array c 
print("$c[$i]\n");
}

print"********************whileloop******************\n";
my $counter = 5;
while($counter>0){
	print"$counter\n";
	$counter--;
	#pause for a 2 second
	sleep(1);
	if($counter==0){
		print "HEllo PERL \n";
	}
}

print"********************whileloop with <> diamond operator : it is used to get input from user from command line******************\n";
my $num;
my @numbers = ();
print "Enter numbers each per line :\n";
print "ctrl -d to exit \n";
while(my $input = <>){
	print ">";
	chomp $input;                     #chomp will remove the new line
	$num = int($input);
	push(@numbers,$num);
}
print" print you just entered : @numbers \n";


print"******while single condition from right to left execution\n";
my $i=1;
print ($i++,"\n") while($i<11);




	









