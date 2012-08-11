use strict;
use warnings;

use Test::More 0.89;
use List::Util 'first';
use lib 't/lib';
use A::Junk ':other';

ok(!main->can('junk1'), 'junk1 not exported');
ok(!main->can('junk2'), 'junk2 not exported');
ok(main->can('junk3'), 'junk3 exported');
ok(! $INC{'Sub/Exporter.pm'}, 'Sub::Exporter not loaded');

done_testing;

