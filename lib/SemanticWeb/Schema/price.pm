use utf8;

package SemanticWeb::Schema::price;

# ABSTRACT: The offer price of a product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'price';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

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



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
