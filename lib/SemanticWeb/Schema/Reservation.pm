use utf8;

package SemanticWeb::Schema::Reservation;

# ABSTRACT: Describes a reservation for travel

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Reservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

Describes a reservation for travel, dining or an event. Some reservations require tickets. 

Note: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, restaurant reservations, flights, or rental cars, use L<SemanticWeb::Schema::Offer>.



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

=head2 C<_has_booking_agent>

A predicate for the L</booking_agent> attribute.

=cut

has booking_agent => (
    is        => 'rw',
    predicate => '_has_booking_agent',
    json_ld   => 'bookingAgent',
);


=head2 C<booking_time>

C<bookingTime>

The date and time the reservation was booked.


A booking_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_booking_time>

A predicate for the L</booking_time> attribute.

=cut

has booking_time => (
    is        => 'rw',
    predicate => '_has_booking_time',
    json_ld   => 'bookingTime',
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

=head2 C<_has_broker>

A predicate for the L</broker> attribute.

=cut

has broker => (
    is        => 'rw',
    predicate => '_has_broker',
    json_ld   => 'broker',
);


=head2 C<modified_time>

C<modifiedTime>

The date and time the reservation was modified.


A modified_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_modified_time>

A predicate for the L</modified_time> attribute.

=cut

has modified_time => (
    is        => 'rw',
    predicate => '_has_modified_time',
    json_ld   => 'modifiedTime',
);


=head2 C<price_currency>

C<priceCurrency>

The currency of the price, or a price component when attached to L<SemanticWeb::Schema::PriceSpecification> and its subtypes.

Use standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR".

A price_currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_price_currency>

A predicate for the L</price_currency> attribute.

=cut

has price_currency => (
    is        => 'rw',
    predicate => '_has_price_currency',
    json_ld   => 'priceCurrency',
);


=head2 C<program_membership_used>

C<programMembershipUsed>

Any membership in a frequent flyer, hotel loyalty program, etc. being
applied to the reservation.


A program_membership_used should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProgramMembership']>

=back

=head2 C<_has_program_membership_used>

A predicate for the L</program_membership_used> attribute.

=cut

has program_membership_used => (
    is        => 'rw',
    predicate => '_has_program_membership_used',
    json_ld   => 'programMembershipUsed',
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

=head2 C<_has_provider>

A predicate for the L</provider> attribute.

=cut

has provider => (
    is        => 'rw',
    predicate => '_has_provider',
    json_ld   => 'provider',
);


=head2 C<reservation_for>

C<reservationFor>

The thing -- flight, event, restaurant, etc. being reserved.


A reservation_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_reservation_for>

A predicate for the L</reservation_for> attribute.

=cut

has reservation_for => (
    is        => 'rw',
    predicate => '_has_reservation_for',
    json_ld   => 'reservationFor',
);


=head2 C<reservation_id>

C<reservationId>

A unique identifier for the reservation.


A reservation_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_reservation_id>

A predicate for the L</reservation_id> attribute.

=cut

has reservation_id => (
    is        => 'rw',
    predicate => '_has_reservation_id',
    json_ld   => 'reservationId',
);


=head2 C<reservation_status>

C<reservationStatus>

The current status of the reservation.


A reservation_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReservationStatusType']>

=back

=head2 C<_has_reservation_status>

A predicate for the L</reservation_status> attribute.

=cut

has reservation_status => (
    is        => 'rw',
    predicate => '_has_reservation_status',
    json_ld   => 'reservationStatus',
);


=head2 C<reserved_ticket>

C<reservedTicket>

A ticket associated with the reservation.


A reserved_ticket should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Ticket']>

=back

=head2 C<_has_reserved_ticket>

A predicate for the L</reserved_ticket> attribute.

=cut

has reserved_ticket => (
    is        => 'rw',
    predicate => '_has_reserved_ticket',
    json_ld   => 'reservedTicket',
);


=head2 C<total_price>

C<totalPrice>

The total price for the reservation or ticket, including applicable taxes, shipping, etc.

Usage guidelines:

=over

=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back

A total_price should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<Num>

=item C<Str>

=back

=head2 C<_has_total_price>

A predicate for the L</total_price> attribute.

=cut

has total_price => (
    is        => 'rw',
    predicate => '_has_total_price',
    json_ld   => 'totalPrice',
);


=head2 C<under_name>

C<underName>

The person or organization the reservation or ticket is for.


A under_name should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_under_name>

A predicate for the L</under_name> attribute.

=cut

has under_name => (
    is        => 'rw',
    predicate => '_has_under_name',
    json_ld   => 'underName',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
