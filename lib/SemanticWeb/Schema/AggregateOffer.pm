use utf8;

package SemanticWeb::Schema::AggregateOffer;

# ABSTRACT: When a single product is associated with multiple offers (for example

use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'AggregateOffer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

When a single product is associated with multiple offers (for example, the same pair of shoes is offered by different merchants), then AggregateOffer can be used.

Note: AggregateOffers are normally expected to associate multiple offers that all share the same defined [[businessFunction]] value, or default to http://purl.org/goodrelations/v1#Sell if businessFunction is not explicitly defined.



=head1 ATTRIBUTES


=head2 C<high_price>

C<highPrice>

The highest price of all offers available.

Usage guidelines:

=over

=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back

A high_price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_high_price>

A predicate for the L</high_price> attribute.

=cut

has high_price => (
    is        => 'rw',
    predicate => '_has_high_price',
    json_ld   => 'highPrice',
);


=head2 C<low_price>

C<lowPrice>

The lowest price of all offers available.

Usage guidelines:

=over

=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back

A low_price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_low_price>

A predicate for the L</low_price> attribute.

=cut

has low_price => (
    is        => 'rw',
    predicate => '_has_low_price',
    json_ld   => 'lowPrice',
);


=head2 C<offer_count>

C<offerCount>

The number of offers for the product.


A offer_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_offer_count>

A predicate for the L</offer_count> attribute.

=cut

has offer_count => (
    is        => 'rw',
    predicate => '_has_offer_count',
    json_ld   => 'offerCount',
);


=head2 C<offers>



An offer to provide this item-- for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a L<SemanticWeb::Schema::Demand>. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.

A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Demand']>

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=head2 C<_has_offers>

A predicate for the L</offers> attribute.

=cut

has offers => (
    is        => 'rw',
    predicate => '_has_offers',
    json_ld   => 'offers',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
