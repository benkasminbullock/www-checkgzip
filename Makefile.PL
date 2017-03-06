use strict;
use warnings;
use ExtUtils::MakeMaker;

my $pm = 'lib/WWW/CheckGzip.pm';
my $pod = 'lib/WWW/CheckGzip.pod';
my $github = 'github.com/benkasminbullock/www-checkgzip';
my $repo = "https://$github";
WriteMakefile (
    NAME => 'WWW::CheckGzip',
    VERSION_FROM => $pm,
    ABSTRACT_FROM => $pod,
    AUTHOR => 'Ben Bullock <bkb@cpan.org>',
    LICENSE => 'perl',
    PREREQ_PM => {
    },
    META_MERGE => {
	'meta-spec' => {
	    version => 2,
	},
        resources => {
            repository => {
		type => 'git',
		url => "git://$github.git",
		web => $repo,
	    },
            bugtracker => {
		web => "$repo/issues",
	    },
#	    homepage => 'http://',
        },
    },
    MIN_PERL_VERSION => '5.006001',
);
