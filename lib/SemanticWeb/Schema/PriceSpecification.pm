use utf8;

package SemanticWeb::Schema::PriceSpecification;

# ABSTRACT: A structured value representing a price or price range

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'PriceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A structured value representing a price or price range. Typically, only the subclasses of this type are used for markup. It is recommended to use L<SemanticWeb::Schema::MonetaryAmount> to describe independent amounts of money such as a salary, credit card limits, etc.



=head1 ATTRIBUTES


=head2 C<eligible_quantity>

C<eligibleQuantity>

The interval and unit of measurement of ordering quantities for which the
offer or price specification is valid. This allows e.g. specifying that a
certain freight charge is valid only for a certain quantity.


A eligible_quantity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_eligible_quantity>

A predicate for the L</eligible_quantity> attribute.

=cut

has eligible_quantity => (
    is        => 'rw',
    predicate => '_has_eligible_quantity',
    json_ld   => 'eligibleQuantity',
);


=head2 C<eligible_transaction_volume>

C<eligibleTransactionVolume>

The transaction volume, in a monetary unit, for which the offer or price
specification is valid, e.g. for indicating a minimal purchasing volume, to
express free shipping above a certain order volume, or to limit the
acceptance of credit cards to purchases to a certain minimal amount.


A eligible_transaction_volume should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=head2 C<_has_eligible_transaction_volume>

A predicate for the L</eligible_transaction_volume> attribute.

=cut

has eligible_transaction_volume => (
    is        => 'rw',
    predicate => '_has_eligible_transaction_volume',
    json_ld   => 'eligibleTransactionVolume',
);


=head2 C<max_price>

C<maxPrice>

The highest price if the price is a range.


A max_price should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_max_price>

A predicate for the L</max_price> attribute.

=cut

has max_price => (
    is        => 'rw',
    predicate => '_has_max_price',
    json_ld   => 'maxPrice',
);


=head2 C<min_price>

C<minPrice>

The lowest price if the price is a range.


A min_price should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_min_price>

A predicate for the L</min_price> attribute.

=cut

has min_price => (
    is        => 'rw',
    predicate => '_has_min_price',
    json_ld   => 'minPrice',
);


=head2 C<price>



The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.

Usage guidelines:

=over

=item *

Use the [[priceCurrency]] property (with standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217> e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies e.g. "BTC"; well known names for L<Local Exchange Tradings Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types e.g. "Ithaca HOUR") instead of including L<ambiguous symbols|http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign> such as '$' in the value.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=item *

Note that both L<RDFa|http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute> and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.


=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar Unicode symbols.


=back

A price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_price>

A predicate for the L</price> attribute.

=cut

has price => (
    is        => 'rw',
    predicate => '_has_price',
    json_ld   => 'price',
);


=head2 C<price_currency>

C<priceCurrency>

The currency of the price, or a price component when attached to L<SemanticWeb::Schema::PriceSpecification> and its subtypes.

Use standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217> e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies e.g. "BTC"; well known names for L<Local Exchange Tradings Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types e.g. "Ithaca HOUR".

A price_currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_price_currency>

A predicate for the L</price_currency> attribute.

=cut

has price_currency => (
    is        => 'rw',
    predicate => '_has_price_currency',
    json_ld   => 'priceCurrency',
);


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_from>

A predicate for the L</valid_from> attribute.

=cut

has valid_from => (
    is        => 'rw',
    predicate => '_has_valid_from',
    json_ld   => 'validFrom',
);


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_through>

A predicate for the L</valid_through> attribute.

=cut

has valid_through => (
    is        => 'rw',
    predicate => '_has_valid_through',
    json_ld   => 'validThrough',
);


=head2 C<value_added_tax_included>

C<valueAddedTaxIncluded>

Specifies whether the applicable value-added tax (VAT) is included in the
price specification or not.


A value_added_tax_included should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_value_added_tax_included>

A predicate for the L</value_added_tax_included> attribute.

=cut

has value_added_tax_included => (
    is        => 'rw',
    predicate => '_has_value_added_tax_included',
    json_ld   => 'valueAddedTaxIncluded',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
