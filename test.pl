# Getting the user's bid for
# an online auction
#!bin/bash/perl
print "Enter your bid";
$bid = <STDIN>;

# Exit function returns $bid
# if bid is less than 1000
if ($bid < 1000)
{
	exit $bid;
}

else
{
	# Prints this message if bid is
	# greater than or equal to 1000
	print "\nThanks for Participating";
}
