package SemanticWeb::Schema::ParcelDelivery;

# ABSTRACT: The delivery of a parcel either via the postal service or a commercial service.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


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

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has carrier => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'carrier',
    json_ld_serializer => \&_serialize_carrier,
);

sub _serialize_carrier { $_[0]->_serializer('carrier') }


=head2 C<delivery_address>

C<deliveryAddress>

Destination address.


A delivery_address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=cut

has delivery_address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deliveryAddress',
    json_ld_serializer => \&_serialize_delivery_address,
);

sub _serialize_delivery_address { $_[0]->_serializer('delivery_address') }


=head2 C<delivery_status>

C<deliveryStatus>

New entry added as the package passes through each leg of its journey (from
shipment to final delivery).


A delivery_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryEvent']>

=back

=cut

has delivery_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deliveryStatus',
    json_ld_serializer => \&_serialize_delivery_status,
);

sub _serialize_delivery_status { $_[0]->_serializer('delivery_status') }


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
    json_ld   => 'expectedArrivalFrom',
    json_ld_serializer => \&_serialize_expected_arrival_from,
);

sub _serialize_expected_arrival_from { $_[0]->_serializer('expected_arrival_from') }


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
    json_ld   => 'expectedArrivalUntil',
    json_ld_serializer => \&_serialize_expected_arrival_until,
);

sub _serialize_expected_arrival_until { $_[0]->_serializer('expected_arrival_until') }


=head2 C<has_delivery_method>

C<hasDeliveryMethod>

Method used for delivery or shipping.


A has_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=cut

has has_delivery_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasDeliveryMethod',
    json_ld_serializer => \&_serialize_has_delivery_method,
);

sub _serialize_has_delivery_method { $_[0]->_serializer('has_delivery_method') }


=head2 C<item_shipped>

C<itemShipped>

Item(s) being shipped.


A item_shipped should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has item_shipped => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itemShipped',
    json_ld_serializer => \&_serialize_item_shipped,
);

sub _serialize_item_shipped { $_[0]->_serializer('item_shipped') }


=head2 C<origin_address>

C<originAddress>

Shipper's address.


A origin_address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=cut

has origin_address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'originAddress',
    json_ld_serializer => \&_serialize_origin_address,
);

sub _serialize_origin_address { $_[0]->_serializer('origin_address') }


=head2 C<part_of_order>

C<partOfOrder>

The overall order the items in this delivery were included in.


A part_of_order should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Order']>

=back

=cut

has part_of_order => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partOfOrder',
    json_ld_serializer => \&_serialize_part_of_order,
);

sub _serialize_part_of_order { $_[0]->_serializer('part_of_order') }


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
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


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
    json_ld   => 'trackingNumber',
    json_ld_serializer => \&_serialize_tracking_number,
);

sub _serialize_tracking_number { $_[0]->_serializer('tracking_number') }


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
    json_ld   => 'trackingUrl',
    json_ld_serializer => \&_serialize_tracking_url,
);

sub _serialize_tracking_url { $_[0]->_serializer('tracking_url') }




around json_ld_type => sub { return 'ParcelDelivery' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'carrier' => \&_serialize_carrier,
       'deliveryAddress' => \&_serialize_delivery_address,
       'deliveryStatus' => \&_serialize_delivery_status,
       'expectedArrivalFrom' => \&_serialize_expected_arrival_from,
       'expectedArrivalUntil' => \&_serialize_expected_arrival_until,
       'hasDeliveryMethod' => \&_serialize_has_delivery_method,
       'itemShipped' => \&_serialize_item_shipped,
       'originAddress' => \&_serialize_origin_address,
       'partOfOrder' => \&_serialize_part_of_order,
       'provider' => \&_serialize_provider,
       'trackingNumber' => \&_serialize_tracking_number,
       'trackingUrl' => \&_serialize_tracking_url,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
