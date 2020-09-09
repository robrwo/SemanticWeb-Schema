use utf8;

package SemanticWeb::Schema::DeliveryTimeSettings;

# ABSTRACT: A DeliveryTimeSettings represents re-usable pieces of shipping information

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'DeliveryTimeSettings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A DeliveryTimeSettings represents re-usable pieces of shipping
information, relating to timing. It is designed for publication on an URL
that may be referenced via the <a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a>
property of a <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a>.
Several occurrences can be published, distinguished (and
identified/referenced) by their different values for <a class="localLink"
href="http://schema.org/transitTimeLabel">transitTimeLabel</a>.<p>

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


=head2 C<is_unlabelled_fallback>

C<isUnlabelledFallback>

=begin html

<p>This can be marked 'true' to indicate that some published <a
class="localLink"
href="http://schema.org/DeliveryTimeSettings">DeliveryTimeSettings</a> or
<a class="localLink"
href="http://schema.org/ShippingRateSettings">ShippingRateSettings</a> are
intended to apply to all <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a>
published by the same merchant, when referenced by a <a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a> in
those settings. It is not meaningful to use a 'true' value for this
property alongside a transitTimeLabel (for <a class="localLink"
href="http://schema.org/DeliveryTimeSettings">DeliveryTimeSettings</a>) or
shippingLabel (for <a class="localLink"
href="http://schema.org/ShippingRateSettings">ShippingRateSettings</a>),
since this property is for use with unlabelled settings.<p>

=end html


A is_unlabelled_fallback should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_is_unlabelled_fallback>

A predicate for the L</is_unlabelled_fallback> attribute.

=cut

has is_unlabelled_fallback => (
    is        => 'rw',
    predicate => '_has_is_unlabelled_fallback',
    json_ld   => 'isUnlabelledFallback',
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
