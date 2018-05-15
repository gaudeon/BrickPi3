use strict;
use warnings;

use lib '.';
use Data::Dumper;
use test;

print Dumper keys %{test::test::};

my $t = test::test->new();
