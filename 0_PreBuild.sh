#!/usr/local/bin/bash
rel=$1
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/base$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/etc$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/comp$rel.tar.gz; 
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/man$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/misc$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/xbase$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/xfont$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/bsd;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/xlink$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/xserv$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/xshare$rel.tar.gz;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/bsd.mp;
fetch https://openbsd.cs.toronto.edu/pub/OpenBSD/6.1/amd64/bsd.rd;

# SYSTEM ###########
pkg_add sudo;
pkg_add bash;
pkg_add vim;
pkg add screen;
# PERL ##############
cpan LWP::UserAgent;
cpan WWW::Mechanize;
cpan File::Find::Rule;
cpan Digest::SHA;
cpan Parallel::ForkManager;
cpan File::LibMagic;
cpan Proc::Daemon;
cpan List::Utils;
