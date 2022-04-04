use utf8;

package SemanticWeb::Schema::ExchangeRateSpecification;

# ABSTRACT: A structured value representing exchange rate.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'ExchangeRateSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A structured value representing exchange rate.




=head1 ATTRIBUTES


=head2 C<currency>



The currency in which the monetary amount is expressed. Use standard
formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217)
e.g. "USD"; [Ticker
symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
cryptocurrencies e.g. "BTC"; well known names for [Local Exchange Tradings
Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
(LETS) and other currency types e.g. "Ithaca HOUR".


A currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_currency>

A predicate for the L</currency> attribute.

=cut

has currency => (
    is        => 'rw',
    predicate => '_has_currency',
    json_ld   => 'currency',
);


=head2 C<current_exchange_rate>

C<currentExchangeRate>

The current price of a currency.


A current_exchange_rate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::UnitPriceSpecification']>

=back

=head2 C<_has_current_exchange_rate>

A predicate for the L</current_exchange_rate> attribute.

=cut

has current_exchange_rate => (
    is        => 'rw',
    predicate => '_has_current_exchange_rate',
    json_ld   => 'currentExchangeRate',
);


=head2 C<exchange_rate_spread>

C<exchangeRateSpread>

The difference between the price at which a broker or other intermediary
buys and sells foreign currency.


A exchange_rate_spread should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=head2 C<_has_exchange_rate_spread>

A predicate for the L</exchange_rate_spread> attribute.

=cut

has exchange_rate_spread => (
    is        => 'rw',
    predicate => '_has_exchange_rate_spread',
    json_ld   => 'exchangeRateSpread',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
