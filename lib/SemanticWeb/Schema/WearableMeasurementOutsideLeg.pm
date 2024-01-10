use utf8;

package SemanticWeb::Schema::WearableMeasurementOutsideLeg;

# ABSTRACT: Measurement of the outside leg

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementOutsideLeg';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Measurement of the outside leg, for example of pants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
