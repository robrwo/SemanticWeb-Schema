use utf8;

package SemanticWeb::Schema::ShippingRateSettings;

# ABSTRACT: A ShippingRateSettings represents re-usable pieces of shipping information

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'ShippingRateSettings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A ShippingRateSettings represents re-usable pieces of shipping
information. It is designed for publication on an URL that may be
referenced via the <a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a>
property of an <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a>.
Several occurrences can be published, distinguished and matched (i.e.
identified/referenced) by their different values for <a class="localLink"
href="http://schema.org/shippingLabel">shippingLabel</a>.<p>

=end html




=head1 ATTRIBUTES


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


=head2 C<free_shipping_threshold>

C<freeShippingThreshold>

=begin html

<p>A monetary value above which (or equal to) the shipping rate becomes
free. Intended to be used via an <a class="localLink"
href="http://schema.org/OfferShippingDetails">OfferShippingDetails</a> with
<a class="localLink"
href="http://schema.org/shippingSettingsLink">shippingSettingsLink</a>
matching this <a class="localLink"
href="http://schema.org/ShippingRateSettings">ShippingRateSettings</a>.<p>

=end html


A free_shipping_threshold should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryChargeSpecification']>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_free_shipping_threshold>

A predicate for the L</free_shipping_threshold> attribute.

=cut

has free_shipping_threshold => (
    is        => 'rw',
    predicate => '_has_free_shipping_threshold',
    json_ld   => 'freeShippingThreshold',
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




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
