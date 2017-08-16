#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use Test::More;
use WWW::CheckGzip;
my $wc = WWW::CheckGzip->new (\& mycheck);
$wc->check ('http://www.piedpiper.com');
done_testing ();

sub mycheck
{
    my ($ok, $message) = @_;
    ok ($ok, $message);
}
