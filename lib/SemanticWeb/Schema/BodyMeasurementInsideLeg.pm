use utf8;

package SemanticWeb::Schema::BodyMeasurementInsideLeg;

# ABSTRACT: Inside leg (measured between crotch and soles of feet)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementInsideLeg';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Inside leg (measured between crotch and soles of feet). Used, for example,
to fit pants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
