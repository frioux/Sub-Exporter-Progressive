
use strict;
use warnings;

use Test::More;
use List::Util 'first';
use lib 't/lib';
use A::Junk 'junk1' => { -as => 'junk' };

ok(main->can('junk'), 'sub renamed with Sub::Exporter');
ok($INC{'Sub/Exporter.pm'}, 'Sub::Exporter loaded');

done_testing;
