#!/usr/local/bin/perl
use strict; use warnings;
#
use Term::ANSIColor;
use HB::CONF qw(conf);
use HB::NFS_SETUP qw(nfs_setup);
use HB::PORTINSTALL qw(portinstall);
use HB::PSKOPIE qw(pskopie);
use HB::USR qw(usr);

open(my $nfh, '<', '/usb/register');
my @lines = <$nfh>;
close $nfh; chomp @lines;
my $num = @lines;

print colored("INSTALL.pl: cmdr name?", 'bold_yellow');
my $cmdr = <STDIN>;
print colored("\nINSTALL.pl: $cmdr I await your orders!\n", 'bold_yellow');

print colored("INSTALL.pl: HUBBUB networks will rise\n", 'bold_red');
print colored("INSTALL.pl: Behold birth of clone $num\n", 'bold_red');
print colored("INSTALL.pl: Created after the image of skrp god!\n", 'bold_red');
print colored("INSTALL.pl: !!! viva skrp iii\n",'bold_red');

print colored("INSTALL.pl: lets begin with PORTINSTALL\n", 'green' );
