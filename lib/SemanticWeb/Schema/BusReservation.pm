use utf8;

package SemanticWeb::Schema::BusReservation;

# ABSTRACT: A reservation for bus travel

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'BusReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A reservation for bus travel. 

Note: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use L<SemanticWeb::Schema::Offer>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
