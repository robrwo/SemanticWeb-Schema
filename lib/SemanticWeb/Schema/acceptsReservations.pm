use utf8;

package SemanticWeb::Schema::acceptsReservations;

# ABSTRACT: Indicates whether a FoodEstablishment accepts reservations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acceptsReservations';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether a FoodEstablishment accepts reservations. Values can be
Boolean, an URL at which reservations can be made or (for backwards
compatibility) the strings ```Yes``` or ```No```.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
