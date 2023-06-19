use utf8;

package SemanticWeb::Schema::OfferShippingDetails;

# ABSTRACT: OfferShippingDetails represents information about shipping destinations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'OfferShippingDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

OfferShippingDetails represents information about shipping destinations.
Multiple of these entities can be used to represent different shipping
rates for different destinations: One entity for Alaska/Hawaii. A different
one for continental US. A different one for all France. Multiple of these
entities can be used to represent different shipping costs and delivery
times. Two entities that are identical but differ in rate and time: E.g.
Cheaper and slower: $5 in 5-7 days or Fast and expensive: $15 in 1-2 days.




=head1 ATTRIBUTES


=head2 C<delivery_time>

C<deliveryTime>

The total delay between the receipt of the order and the goods reaching the
final customer.


A delivery_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ShippingDeliveryTime']>

=back

=head2 C<_has_delivery_time>

A predicate for the L</delivery_time> attribute.

=cut

has delivery_time => (
    is        => 'rw',
    predicate => '_has_delivery_time',
    json_ld   => 'deliveryTime',
);


=head2 C<depth>



The depth of the item.


A depth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_depth>

A predicate for the L</depth> attribute.

=cut

has depth => (
    is        => 'rw',
    predicate => '_has_depth',
    json_ld   => 'depth',
);


=head2 C<does_not_ship>

C<doesNotShip>

Indicates when shipping to a particular [[shippingDestination]] is not available.

A does_not_ship should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_does_not_ship>

A predicate for the L</does_not_ship> attribute.

=cut

has does_not_ship => (
    is        => 'rw',
    predicate => '_has_does_not_ship',
    json_ld   => 'doesNotShip',
);


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_height>

A predicate for the L</height> attribute.

=cut

has height => (
    is        => 'rw',
    predicate => '_has_height',
    json_ld   => 'height',
);


=head2 C<shipping_destination>

C<shippingDestination>

indicates (possibly multiple) shipping destinations. These can be defined
in several ways, e.g. postalCode ranges.


A shipping_destination should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedRegion']>

=back

=head2 C<_has_shipping_destination>

A predicate for the L</shipping_destination> attribute.

=cut

has shipping_destination => (
    is        => 'rw',
    predicate => '_has_shipping_destination',
    json_ld   => 'shippingDestination',
);


=head2 C<shipping_label>

C<shippingLabel>

Label to match an L<SemanticWeb::Schema::OfferShippingDetails> with a L<SemanticWeb::Schema::ShippingRateSettings> (within the context of a [[shippingSettingsLink]] cross-reference).

A shipping_label should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_shipping_label>

A predicate for the L</shipping_label> attribute.

=cut

has shipping_label => (
    is        => 'rw',
    predicate => '_has_shipping_label',
    json_ld   => 'shippingLabel',
);


=head2 C<shipping_origin>

C<shippingOrigin>

Indicates the origin of a shipment, i.e. where it should be coming from.


A shipping_origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedRegion']>

=back

=head2 C<_has_shipping_origin>

A predicate for the L</shipping_origin> attribute.

=cut

has shipping_origin => (
    is        => 'rw',
    predicate => '_has_shipping_origin',
    json_ld   => 'shippingOrigin',
);


=head2 C<shipping_rate>

C<shippingRate>

The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the L<SemanticWeb::Schema::MonetaryAmount>) are most appropriate.

A shipping_rate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_shipping_rate>

A predicate for the L</shipping_rate> attribute.

=cut

has shipping_rate => (
    is        => 'rw',
    predicate => '_has_shipping_rate',
    json_ld   => 'shippingRate',
);


=head2 C<shipping_settings_link>

C<shippingSettingsLink>

Link to a page containing L<SemanticWeb::Schema::ShippingRateSettings> and L<SemanticWeb::Schema::DeliveryTimeSettings> details.

A shipping_settings_link should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_shipping_settings_link>

A predicate for the L</shipping_settings_link> attribute.

=cut

has shipping_settings_link => (
    is        => 'rw',
    predicate => '_has_shipping_settings_link',
    json_ld   => 'shippingSettingsLink',
);


=head2 C<transit_time_label>

C<transitTimeLabel>

Label to match an L<SemanticWeb::Schema::OfferShippingDetails> with a L<SemanticWeb::Schema::DeliveryTimeSettings> (within the context of a [[shippingSettingsLink]] cross-reference).

A transit_time_label should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_transit_time_label>

A predicate for the L</transit_time_label> attribute.

=cut

has transit_time_label => (
    is        => 'rw',
    predicate => '_has_transit_time_label',
    json_ld   => 'transitTimeLabel',
);


=head2 C<weight>



The weight of the product or person.


A weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_weight>

A predicate for the L</weight> attribute.

=cut

has weight => (
    is        => 'rw',
    predicate => '_has_weight',
    json_ld   => 'weight',
);


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_width>

A predicate for the L</width> attribute.

=cut

has width => (
    is        => 'rw',
    predicate => '_has_width',
    json_ld   => 'width',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
