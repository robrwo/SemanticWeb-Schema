package SemanticWeb::Schema::Ticket;

# ABSTRACT: Used to describe a ticket to an event

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Ticket';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Used to describe a ticket to an event, a flight, a bus ride, etc.




=head1 ATTRIBUTES


=head2 C<date_issued>

C<dateIssued>

The date the ticket was issued.


A date_issued should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_issued => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateIssued',
    json_ld_serializer => \&_serialize_date_issued,
);

sub _serialize_date_issued { $_[0]->_serializer('date_issued') }


=head2 C<issued_by>

C<issuedBy>

The organization issuing the ticket or permit.


A issued_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has issued_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issuedBy',
    json_ld_serializer => \&_serialize_issued_by,
);

sub _serialize_issued_by { $_[0]->_serializer('issued_by') }


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
    json_ld   => 'priceCurrency',
    json_ld_serializer => \&_serialize_price_currency,
);

sub _serialize_price_currency { $_[0]->_serializer('price_currency') }


=head2 C<ticket_number>

C<ticketNumber>

The unique identifier for the ticket.


A ticket_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has ticket_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ticketNumber',
    json_ld_serializer => \&_serialize_ticket_number,
);

sub _serialize_ticket_number { $_[0]->_serializer('ticket_number') }


=head2 C<ticket_token>

C<ticketToken>

Reference to an asset (e.g., Barcode, QR code image or PDF) usable for
entrance.


A ticket_token should be one of the following types:

=over

=item C<Str>

=back

=cut

has ticket_token => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ticketToken',
    json_ld_serializer => \&_serialize_ticket_token,
);

sub _serialize_ticket_token { $_[0]->_serializer('ticket_token') }


=head2 C<ticketed_seat>

C<ticketedSeat>

The seat associated with the ticket.


A ticketed_seat should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Seat']>

=back

=cut

has ticketed_seat => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ticketedSeat',
    json_ld_serializer => \&_serialize_ticketed_seat,
);

sub _serialize_ticketed_seat { $_[0]->_serializer('ticketed_seat') }


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
    json_ld   => 'totalPrice',
    json_ld_serializer => \&_serialize_total_price,
);

sub _serialize_total_price { $_[0]->_serializer('total_price') }


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
    json_ld   => 'underName',
    json_ld_serializer => \&_serialize_under_name,
);

sub _serialize_under_name { $_[0]->_serializer('under_name') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
