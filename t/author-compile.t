#!perl

use strict;
use warnings;

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    print qq{1..0 # SKIP these tests are for testing by the author\n};
    exit
  }
}

eval "use Test::Compile";

my $test = Test::Compile->new();
$test->all_files_ok();
$test->done_testing();
