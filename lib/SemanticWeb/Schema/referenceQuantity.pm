use utf8;

package SemanticWeb::Schema::referenceQuantity;

# ABSTRACT: The reference quantity for which a certain price applies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'referenceQuantity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The reference quantity for which a certain price applies, e.g. 1 EUR per 4
kWh of electricity. This property is a replacement for unitOfMeasurement
for the advanced cases where the price does not relate to a standard unit.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
