
use strict;
use warnings;

use Test::More 0.89;
use List::Util 'first';
use lib 't/lib';
use A::Junk 'junk1';

ok(main->can('junk1'), 'requested sub exported');
ok(! $INC{'Sub/Exporter.pm'}, 'Sub::Exporter not loaded');

done_testing;
