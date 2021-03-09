use utf8;

package SemanticWeb::Schema::ReservationPackage;

# ABSTRACT: A group of multiple reservations with common values for all sub-reservations.

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'ReservationPackage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A group of multiple reservations with common values for all
sub-reservations.




=head1 ATTRIBUTES


=head2 C<sub_reservation>

C<subReservation>

The individual reservations included in the package. Typically a repeated
property.


A sub_reservation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Reservation']>

=back

=head2 C<_has_sub_reservation>

A predicate for the L</sub_reservation> attribute.

=cut

has sub_reservation => (
    is        => 'rw',
    predicate => '_has_sub_reservation',
    json_ld   => 'subReservation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
