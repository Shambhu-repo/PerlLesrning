#!/usr/bin/perl -w
use strict;

#hashes  is like map in java
# key must be in string but values can anything
#If we add similar key then it does not add the element in hash but it will overrite the existing value of existing key , Banana => 'Yellow' , if we add 
# again Banana => 'Green'   then our value will change to green but does not add another Banana in the hash
my %hash_fruits = qw(Apple Red Mango Yellow Watermelon Green Grapes Black Orange orange);

# we can do like this in hash to make code more redable

%hash_fruits = (Apple => 'Red',Mango=>'Yellow',Watermelon=>'Green',Grapes =>'Black',Orange=>'orange');

print("***********Access the value from key in hash**********\n");
my $fruit = $hash_fruits{'Apple'};
print("Apple is : $fruit\n");
print("*******************************************************\n");


print("***************************Add a new element****************************\n");
$hash_fruits{'Banana'}='Yellow';
for(keys %hash_fruits){
print("fruits of $_ is $hash_fruits{$_}\n");  # $_ is the default operator which gives key of hashes : like Banana orange etc
}
print("Banana  is added" );

print("***************************Deleted key-value pair ---- Delete Apple---****************************\n");
delete $hash_fruits{'Apple'};
for(keys %hash_fruits){
	print "$_\n";
}
	
	






