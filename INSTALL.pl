#!/usr/local/bin/perl
use strict; use warnings;
#
use Term::ANSIColor;
use HB::PORTINSTALL qw(portinstall);
use HB::USR qw(usr);
use HB::PSKOPIE qw(pskopie);
use HB::CONF qw(conf);
use HB::NFS_SETUP qw(nfs_setup);
use HB::KEY qw(key);

open(my $nfh, '<', '/usb/register');
my @lines = <$nfh>;
close $nfh; chomp @lines;
my $num = @lines;

print colored("INSTALL.pl: cmdr name?", 'bold_yellow');
my $cmdr = <STDIN>; chomp $cmdr;
print colored("\nINSTALL.pl: $cmdr I await your orders!\n", 'bold_yellow');

print colored("INSTALL.pl: HUBBUB networks will rise\n", 'bold_red');
print colored("INSTALL.pl: Behold birth of clone $num\n", 'bold_red');
print colored("INSTALL.pl: Created after the image of skrp god!\n", 'bold_red');
print colored("INSTALL.pl: !!! viva skrp iii\n",'bold_red');

print colored("INSTALL.pl: yes or no -> is /usb loaded \n", 'bold_yellow');
my $yn = <STDIN>; chomp $yn;
die "/usb needs to be loaded\n Do that then answer yes\n" if ($yn eq 'no');

print colored("INSTALL.pl: lets begin with PORTINSTALL\n", 'green');
print colored("INSTALL.pl: ERROR portinstall\n", 'bold_red') if (portinstall() < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');

print colored("INSTALL.pl: start USR\n", 'green');
print colored("INSTALL.pl: ERROR usr\n", 'bold_red') if (usr() < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');

print colored("INSTALL.pl: start PSKOPIE\n", 'green');
print colored("INSTALL.pl: ERROR pskopie\n", 'bold_red') if (pskopie < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');

print colored("INSTALL.pl: start CONF\n", 'green');
print colored("INSTALL.pl: ERROR conf\n", 'bold_red') if (conf() < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');

print colored("INSTALL.pl: start NFS_SETUP\n", 'green');
print colored("INSTALL.pl: ERROR nfs_setup\n", 'bold_red') if (nfs_setup() < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');

print colored("INSTALL.pl: start KEY\n", 'green');
print colored("INSTALL.pl: ERROR key\n", 'bold_red') if (key() < 0);
print colored("INSTALL.pl: success\n", 'bold_yellow');


print colored("INSTALL.pl: \n", 'green');
print colored("INSTALL.pl: \n", 'green');
