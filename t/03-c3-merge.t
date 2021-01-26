use strict;
use warnings;

use Test::More;

use_ok('SemanticWeb::Schema::Dentist');

ok SemanticWeb::Schema::Dentist->new({})->json_ld, 'json_ld';

done_testing;
