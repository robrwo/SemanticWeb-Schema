use utf8;

package SemanticWeb::Schema::TradeAction;

# ABSTRACT: The act of participating in an exchange of goods and services for monetary compensation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'TradeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of participating in an exchange of goods and services for monetary
compensation. An agent trades an object, product or service with a
participant in exchange for a one time or periodic payment.




=head1 ATTRIBUTES


=head2 C<price>



The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.

Usage guidelines:

=over

=item *

Use the [[priceCurrency]] property (with standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including L<ambiguous symbols|http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign> such as '$' in the value.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=item *

Note that both L<RDFa|http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute> and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.


=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


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

Use standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR".

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


=head2 C<price_specification>

C<priceSpecification>

One or more detailed price specifications, indicating the unit price and
delivery or payment charges.


A price_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=head2 C<_has_price_specification>

A predicate for the L</price_specification> attribute.

=cut

has price_specification => (
    is        => 'rw',
    predicate => '_has_price_specification',
    json_ld   => 'priceSpecification',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
