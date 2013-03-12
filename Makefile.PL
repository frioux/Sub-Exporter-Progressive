use strict;
use warnings;

use 5.006;
use ExtUtils::MakeMaker;
(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

my %deps = (
   PREREQ_PM => {
      Exporter => '5.58',
   },
);
my $key = eval { ExtUtils::MakeMaker->VERSION(6.56) } ? 'BUILD_REQUIRES' : 'PREREQ_PM' ;
$deps{$key}{'Test::More'} = '0.88';

WriteMakefile(
  NAME => 'Sub-Exporter-Progressive',
  VERSION_FROM => 'lib/Sub/Exporter/Progressive.pm',
  %deps,
);
