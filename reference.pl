#!/usr/bin/perl -w
use strict;

# referene is a sclar variable which poitns to another variable

#$abc = \$xyz   - >here abc is referencing to $xyz , for reference we use backslach \ 
#$$abc    -- > it is dereferencing

#scalar reference
print "Sccalar reference \n";
my $s = 10;
my $sr = \$s;  #referencing
$$sr = $$sr *2 ; #dereferenc

print "$s\n";
print"$$sr \n";
print"$sr\n";

#array reference
print "Array reference\n";
my @a = (1..10);
my $aref = \@a;
my $i=0;
for (@$aref){                     # here $ is using to dereference the reference
	print "$aref->[$i ++] \n";
}

print "hash reference \n";
my %week = (mon=>1,tue=>2,wed=>3,thu=>4,fri=>5,sat=>6,sun=>7);
my $weekr = \%week;
for (keys %$weekr){
	print "$_ = $weekr->{$_}\n";
}