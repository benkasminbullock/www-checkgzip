#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use FindBin '$Bin';
use Perl::Build;
$ENV{WEBSITE} = 'http://www.hooli.xyz/';
perl_build (
    make_pod => "$Bin/make-pod.pl",
);
exit;