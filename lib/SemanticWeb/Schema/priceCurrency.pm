use utf8;

package SemanticWeb::Schema::priceCurrency;

# ABSTRACT: The currency of the price

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'priceCurrency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The currency of the price, or a price component when attached to L<SemanticWeb::Schema::PriceSpecification> and its subtypes.

Use standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR".



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
