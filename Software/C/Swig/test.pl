use strict;
use warnings;

use lib '.';
use Data::Dumper;
use test;

my $t = test::test->new();

print $t->secret(), "\n";
