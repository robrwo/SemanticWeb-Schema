package LDF::Schema::ParcelDelivery;

# ABSTRACT: The delivery of a parcel either via the postal service or a commercial service.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The delivery of a parcel either via the postal service or a commercial
service.




=head1 ATTRIBUTES


=head2 C<carrier>



'carrier' is an out-dated term indicating the 'provider' for parcel
delivery and flights.


A carrier should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has carrier => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<delivery_address>

C<deliveryAddress>

Destination address.


A delivery_address should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has delivery_address => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<delivery_status>

C<deliveryStatus>

New entry added as the package passes through each leg of its journey (from
shipment to final delivery).


A delivery_status should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryEvent']>

=back

=cut

has delivery_status => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<expected_arrival_from>

C<expectedArrivalFrom>

The earliest date the package may arrive.


A expected_arrival_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has expected_arrival_from => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<expected_arrival_until>

C<expectedArrivalUntil>

The latest date the package may arrive.


A expected_arrival_until should be one of the following types:

=over

=item C<Str>

=back

=cut

has expected_arrival_until => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<has_delivery_method>

C<hasDeliveryMethod>

Method used for delivery or shipping.


A has_delivery_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryMethod']>

=back

=cut

has has_delivery_method => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<item_shipped>

C<itemShipped>

Item(s) being shipped.


A item_shipped should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Product']>

=back

=cut

has item_shipped => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<origin_address>

C<originAddress>

Shipper's address.


A origin_address should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has origin_address => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<part_of_order>

C<partOfOrder>

The overall order the items in this delivery were included in.


A part_of_order should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Order']>

=back

=cut

has part_of_order => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<tracking_number>

C<trackingNumber>

Shipper tracking number.


A tracking_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has tracking_number => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<tracking_url>

C<trackingUrl>

Tracking url for the parcel delivery.


A tracking_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has tracking_url => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ParcelDelivery' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { carrier => 'carrier' },
      { deliveryAddress => 'delivery_address' },
      { deliveryStatus => 'delivery_status' },
      { expectedArrivalFrom => 'expected_arrival_from' },
      { expectedArrivalUntil => 'expected_arrival_until' },
      { hasDeliveryMethod => 'has_delivery_method' },
      { itemShipped => 'item_shipped' },
      { originAddress => 'origin_address' },
      { partOfOrder => 'part_of_order' },
      { provider => 'provider' },
      { trackingNumber => 'tracking_number' },
      { trackingUrl => 'tracking_url' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
