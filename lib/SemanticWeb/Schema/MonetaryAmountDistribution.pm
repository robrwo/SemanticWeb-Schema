use utf8;

package SemanticWeb::Schema::MonetaryAmountDistribution;

# ABSTRACT: A statistical distribution of monetary amounts.

use Moo;

extends qw/ SemanticWeb::Schema::QuantitativeValueDistribution /;


use MooX::JSON_LD 'MonetaryAmountDistribution';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A statistical distribution of monetary amounts.




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




=head1 SEE ALSO



L<SemanticWeb::Schema::QuantitativeValueDistribution>

=cut

1;
