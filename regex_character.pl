#!/usr/bin/perl -w
use strict;

# rules 
# [char]at   -> meaning - > can start from any one of the "char" but should end with "at"

#special character in character classes : - , ] , \ , ^ , $ -> to scape them we need to use backslash \ 

#my $x = "bhr";
#my @y = qw(abc '$bcd' bat abcd cat rat hat \$at xat at \at);
#foreach(@y){
#	print "$_ \n" if /[$x]at/;  # resutl: bat , hat , rat  : here $x is interopolated by teh value of $x initializes 
##	print "$_ \n" if /[\$x]at/;
#}


my $x = "bhr";
foreach ("abc",'$bcd', "bat", "abcd", "cat", "rat", "hat", "\$at", "xat", "at", "\at"){

	print "$_ \n" if /[$x]at/;  # resutl: bat , hat , rat  : here $x is interopolated by teh value of $x initializes 
	print "$_ \n" if /[\\$x]at/;  #resutl : bat , rat hat    ( \at :-> here \ is scaping the special character and making it string but when we put another \ back slash then it becomes 
	#special character and one \ slash becomes stign
	print "$_ \n" if /[\$x]at/;  # result : $at , xat 
}

# - hyphon  it gives range of literal 
print "- hyphon  it gives range of litteral but print what is mentioned only  \n";
foreach ("bcd0",'$bcd100', "bcd65", "90bcd", "100bcd", "rat45", "hat", "\$at", "xat", "at", "\at"){
	print "$_ \n" if /bcd[0-100]/;  # resutl : bcd0 , bcd100
}


foreach("10:20:30","20 ","10", "a b" , "cat", "goat", "end." , "end"){
	print "$_ \n" if /\d+:\d+:\d+/; # resutl ->10:20:30
	print "$_ \n" if /[\d\s]/;
	print "$_ \n " if /..at/;    # here two dot .. meaning is any two charater matching : resutl : goat
}


print " using \b - > matching boundry between word character and non character \n";
my @words = qw (Housecat catenates house and cat);
foreach(@words){
	print "$_ \n" if /\bcat/;  # match which start from cat : resutl: catenates
	print "$_ \n" if /cat\b/;   # match which ends with cat  : - > resutl :Housecat and cat
	
}


#Alternatin and extraction

my @fruits = ('blueberry', 'raspberry', 'blackberry', 'strawberry');
for(@fruits){
	print"$_ \n" if /blue | rasp /;  
}


#extraction matches
my $st = "10:20:30";
print "$1 \n" if $st =~ /(\d+):(\d+):(\d+)/;  # result : 10
print "$2 \n" if $st =~ /(\d+):(\d+):(\d+)/;    #result : 20
print "$3 \n" if $st =~ /(\d+):(\d+):(\d+)/;	#resutl :30



foreach ("abc",'$bcd', "bat", "abcd", "cat", "rat", "hat", "\$at", "xat", "at", "\at"){
	print "$_ \n" if /(\w+)\s+\g1/; # more than one word and motre than one white space : when it matcehs then it will store in g1 variable and print # g1 ..gn is inside regex expresion
}

#greedy quantifiere
my $s = "the rat in the hat";
print "$1\n" if $s =~ /^(.*)(at)(.*)$/;

#global variable g -> matching as much as possible in given strint
print "global variable g -> matching as much as possible in given strint \n";
my $x = "rat hat dog cat house mat";
while($x =~ /(\w+)/g){
print "word is $1 , ends at position ", pos $x ,"\n";
}


