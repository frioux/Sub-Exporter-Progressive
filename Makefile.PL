use strict;
use warnings FATAL => 'all';
use 5.008001;
use ExtUtils::MakeMaker;
(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

my $key = eval { ExtUtils::MakeMaker->VERSION(6.56) } ? 'BUILD_REQUIRES' : 'PREREQ_PM' ;

WriteMakefile(
  NAME => 'Sub-Exporter-Progressive',
  VERSION_FROM => 'lib/Sub/Exporter/Progressive.pm',
  $key => {
	'Test::More' => 0.89,
  }
);
