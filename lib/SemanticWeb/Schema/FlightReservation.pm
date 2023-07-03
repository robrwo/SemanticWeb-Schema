use utf8;

package SemanticWeb::Schema::FlightReservation;

# ABSTRACT: A reservation for air travel

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'FlightReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A reservation for air travel.

Note: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use L<SemanticWeb::Schema::Offer>.



=head1 ATTRIBUTES


=head2 C<boarding_group>

C<boardingGroup>

The airline-specific indicator of boarding order / preference.


A boarding_group should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_boarding_group>

A predicate for the L</boarding_group> attribute.

=cut

has boarding_group => (
    is        => 'rw',
    predicate => '_has_boarding_group',
    json_ld   => 'boardingGroup',
);


=head2 C<passenger_priority_status>

C<passengerPriorityStatus>

The priority status assigned to a passenger for security or boarding (e.g.
FastTrack or Priority).


A passenger_priority_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_passenger_priority_status>

A predicate for the L</passenger_priority_status> attribute.

=cut

has passenger_priority_status => (
    is        => 'rw',
    predicate => '_has_passenger_priority_status',
    json_ld   => 'passengerPriorityStatus',
);


=head2 C<passenger_sequence_number>

C<passengerSequenceNumber>

The passenger's sequence number as assigned by the airline.


A passenger_sequence_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_passenger_sequence_number>

A predicate for the L</passenger_sequence_number> attribute.

=cut

has passenger_sequence_number => (
    is        => 'rw',
    predicate => '_has_passenger_sequence_number',
    json_ld   => 'passengerSequenceNumber',
);


=head2 C<security_screening>

C<securityScreening>

The type of security screening the passenger is subject to.


A security_screening should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_security_screening>

A predicate for the L</security_screening> attribute.

=cut

has security_screening => (
    is        => 'rw',
    predicate => '_has_security_screening',
    json_ld   => 'securityScreening',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
