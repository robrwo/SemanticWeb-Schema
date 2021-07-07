use utf8;

package SemanticWeb::Schema::DeliveryTimeSettings;

# ABSTRACT: A DeliveryTimeSettings represents re-usable pieces of shipping information

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'DeliveryTimeSettings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

A DeliveryTimeSettings represents re-usable pieces of shipping information, relating to timing. It is designed for publication on an URL that may be referenced via the [[shippingSettingsLink]] property of a L<SemanticWeb::Schema::OfferShippingDetails>. Several occurrences can be published, distinguished (and identified/referenced) by their different values for [[transitTimeLabel]].



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




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
