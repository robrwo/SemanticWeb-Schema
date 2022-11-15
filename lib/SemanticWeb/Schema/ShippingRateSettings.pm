use utf8;

package SemanticWeb::Schema::ShippingRateSettings;

# ABSTRACT: A ShippingRateSettings represents re-usable pieces of shipping information

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'ShippingRateSettings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A ShippingRateSettings represents re-usable pieces of shipping information. It is designed for publication on an URL that may be referenced via the [[shippingSettingsLink]] property of an L<SemanticWeb::Schema::OfferShippingDetails>. Several occurrences can be published, distinguished and matched (i.e. identified/referenced) by their different values for [[shippingLabel]].



=head1 ATTRIBUTES


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


=head2 C<free_shipping_threshold>

C<freeShippingThreshold>

A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an L<SemanticWeb::Schema::OfferShippingDetails> with [[shippingSettingsLink]] matching this L<SemanticWeb::Schema::ShippingRateSettings>.

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

This can be marked 'true' to indicate that some published L<SemanticWeb::Schema::DeliveryTimeSettings> or L<SemanticWeb::Schema::ShippingRateSettings> are intended to apply to all L<SemanticWeb::Schema::OfferShippingDetails> published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for L<SemanticWeb::Schema::DeliveryTimeSettings>) or shippingLabel (for L<SemanticWeb::Schema::ShippingRateSettings>), since this property is for use with unlabelled settings.

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




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
