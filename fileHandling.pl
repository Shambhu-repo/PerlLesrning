#!/usr/bin/perl -w
use strict;

#file handling in perl
print " #file handling in perl \n";
# open (filehandle , mode , filename) -> open - > function to open file , filehandle -> associate with file , mode -> read write and exexute, filename -> path to file
#close(FH)

#mode operand :
#  read     <			this gives onlu read permission
#write      >			this will give new file or if existing file is there then wipe out the content so need to use it with cautious
#append     >>			to add new content in exsting file

# die $!  - > it will give failure message if file does not existing

#my $filename = 'test.txt';
#open (FH, '<', $filename) or die $!;
#print "file $filename opened successfully !\n";
#close(FH);

print " read a file -> this will read from the file and prit in console when we run the program\n";
my $filename = 'test.txt';
open (FH, '<', $filename) or die $!;
while(<FH>){
	print"$_";
}
close(FH);



print"Write into file \n";
my $s = <<END;
------------------------------
This is the sample text 
testing out fileIO in PERL
------------------------------
END
 my $filename = 'test2.txt';
open (FH , '>' , $filename) or die $!;
print FH $s;
close (FH);
print "wi=ritting to file successfully \n";



print "copy the file \n";
#my $src = 'test.txt';
#my $des = 'test2.txt';
my $src = shift @ARGV;     # PUTTINT THE FILE FROM COMMAND LINE  :    perl fileHandling.pl test.txt test2.txt
my $des = shift @ARGV;
open (SRC, '<', $src) or die $!;
open (DES, '>', $des) or die $!;
print "coppying content from $src to $des \n";
while(<SRC>){
	print DES $_;
}
close(SRC);
close(DES);
print "File content copied successfully from source to destination \n";


#File operator uses : search in google : file test operator in perl
print " file operator uses in perl \n";
 my $filename = 'test.txt';
 if (-e $filename){
	 print "File $filename exists\n");
 }
 else{
	 print("file $filename does not exist \n";
 }






