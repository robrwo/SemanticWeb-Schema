use utf8;

package SemanticWeb::Schema::currency;

# ABSTRACT: The currency in which the monetary amount is expressed

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'currency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The currency in which the monetary amount is expressed. Use standard
formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217),
e.g. "USD"; [Ticker
symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading
Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
(LETS) and other currency types, e.g. "Ithaca HOUR".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
