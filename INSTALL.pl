#!/usr/local/bin/perl
use strict; use warnings;
#
use HB::CONF qw(conf);
use HB::NFS_SETUP qw(nfs_setup);
use HB::PORTINSTALL qw(portinstall);
use HB::PSKOPIE qw(pskopie);
use HB::USR qw(usr);

open(my $nfh, '<', '/usb/register');
my @lines = <$nfh>;
close $nfh; chomp @lines;
my $num = @lines;

print "INSTALL.pl: cmdr name?  ";
my $cmdr = <STDIN>;
print "\nINSTALL.pl: cmdr I await your orders!\n";  

print "HUBBUB networks will rise\n";
print "Behold birth of clone $num\n";
print "Created after the image of skrp god!\n";
print "!!! viva skrp iii\n";

