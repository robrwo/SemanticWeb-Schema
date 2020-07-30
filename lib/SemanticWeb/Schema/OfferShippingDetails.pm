use utf8;

package SemanticWeb::Schema::OfferShippingDetails;

# ABSTRACT: OfferShippingDetails represents information about shipping destinations

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'OfferShippingDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>OfferShippingDetails represents information about shipping
destinations.<br/><br/> Multiple of these entities can be used to represent
different shipping rates for different destinations:<br/><br/> One entity
for Alaska/Hawaii. A different one for continental US.A different one for
all France.<br/><br/> Multiple of these entities can be used to represent
different shipping costs and delivery times.<br/><br/> Two entities that
are identical but differ in rate and time:<br/><br/> e.g. Cheaper and
slower: $5 in 5-7days or Fast and expensive: $15 in 1-2 days<p>

=end html




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


=head2 C<does_not_ship>

C<doesNotShip>

=begin html

<p>Indicates when shipping to a particular <a class="localLink"
href="http://schema.org/shippingDestination">shippingDestination</a> is not
available.<p>

=end html


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


=head2 C<shipping_destination>

C<shippingDestination>

indicates (possibly multiple) shipping destinations. These can be defined
in several ways e.g. postalCode ranges.


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

=begin html

<p>Label to match an <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a> with
a <a class="localLink"
href="http://schema.org/ShippingRateSettings">ShippingRateSettings</a>
(within the context of a <a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a>
cross-reference).<p>

=end html


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


=head2 C<shipping_rate>

C<shippingRate>

=begin html

<p>The shipping rate is the cost of shipping to the specified destination.
Typically, the maxValue and currency values (of the <a class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a>) are most
appropriate.<p>

=end html


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

=begin html

<p>Link to a page containing <a class="localLink"
href="http://schema.org/ShippingRateSettings">ShippingRateSettings</a> and
<a class="localLink"
href="http://schema.org/DeliveryTimeSettings">DeliveryTimeSettings</a>
details.<p>

=end html


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

=begin html

<p>Label to match an <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a> with
a <a class="localLink"
href="http://schema.org/DeliveryTimeSettings">DeliveryTimeSettings</a>
(within the context of a <a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a>
cross-reference).<p>

=end html


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




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
