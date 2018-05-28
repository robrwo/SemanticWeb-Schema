package SemanticWeb::Schema::Reservation;

# ABSTRACT: Describes a reservation for travel

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

Describes a reservation for travel, dining or an event. Some reservations
require tickets. </p> <p>Note: This type is for information about actual
reservations, e.g. in confirmation emails or HTML pages with individual
confirmations of reservations. For offers of tickets, restaurant
reservations, flights, or rental cars, use <a class="localLink"
href="http://schema.org/Offer">Offer</a>.

=end html




=head1 ATTRIBUTES


=head2 C<booking_agent>

C<bookingAgent>

'bookingAgent' is an out-dated term indicating a 'broker' that serves as a
booking agent.


A booking_agent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has booking_agent => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<booking_time>

C<bookingTime>

The date and time the reservation was booked.


A booking_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has booking_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<broker>



An entity that arranges for an exchange between a buyer and a seller. In
most cases a broker never acquires or releases ownership of a product or
service involved in an exchange. If it is not clear whether an entity is a
broker, seller, or buyer, the latter two terms are preferred.


A broker should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has broker => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<modified_time>

C<modifiedTime>

The date and time the reservation was modified.


A modified_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has modified_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<price_currency>

C<priceCurrency>

=begin html

The currency (in 3-letter ISO 4217 format) of the price or a price
component, when attached to <a class="localLink"
href="http://schema.org/PriceSpecification">PriceSpecification</a> and its
subtypes.

=end html


A price_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has price_currency => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<program_membership_used>

C<programMembershipUsed>

Any membership in a frequent flyer, hotel loyalty program, etc. being
applied to the reservation.


A program_membership_used should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProgramMembership']>

=back

=cut

has program_membership_used => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reservation_for>

C<reservationFor>

The thing -- flight, event, restaurant,etc. being reserved.


A reservation_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has reservation_for => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reservation_id>

C<reservationId>

A unique identifier for the reservation.


A reservation_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has reservation_id => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reservation_status>

C<reservationStatus>

The current status of the reservation.


A reservation_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReservationStatusType']>

=back

=cut

has reservation_status => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reserved_ticket>

C<reservedTicket>

A ticket associated with the reservation.


A reserved_ticket should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Ticket']>

=back

=cut

has reserved_ticket => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<total_price>

C<totalPrice>

The total price for the reservation or ticket, including applicable taxes,
shipping, etc.


A total_price should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<Str>

=back

=cut

has total_price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<under_name>

C<underName>

The person or organization the reservation or ticket is for.


A under_name should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has under_name => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Reservation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'bookingAgent' => $self->curry::_serializer('booking_agent'),
       'bookingTime' => $self->curry::_serializer('booking_time'),
       'broker' => $self->curry::_serializer('broker'),
       'modifiedTime' => $self->curry::_serializer('modified_time'),
       'priceCurrency' => $self->curry::_serializer('price_currency'),
       'programMembershipUsed' => $self->curry::_serializer('program_membership_used'),
       'provider' => $self->curry::_serializer('provider'),
       'reservationFor' => $self->curry::_serializer('reservation_for'),
       'reservationId' => $self->curry::_serializer('reservation_id'),
       'reservationStatus' => $self->curry::_serializer('reservation_status'),
       'reservedTicket' => $self->curry::_serializer('reserved_ticket'),
       'totalPrice' => $self->curry::_serializer('total_price'),
       'underName' => $self->curry::_serializer('under_name'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
