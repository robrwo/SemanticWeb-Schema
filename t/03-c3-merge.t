use v5.14;
use warnings;

use Test2::V0;

use SemanticWeb::Schema::Dentist;

ok( SemanticWeb::Schema::Dentist->new({})->json_ld );

done_testing;
