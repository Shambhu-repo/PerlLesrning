#!/usr/bin/perl -w
use strict;


#use of skopeo
my $SKOPEO = "/bin/skopeo";
die "fatal error : can not execute skopeo \n" if ! -x $SKOPEO;

my $CMD = "mkdir dev21";
my @ttyout = `$CMD 2>&1`;
if($? ne 0){
warn "Error\n";
}
else{
warn "Suceess\n";
}