use utf8;

package SemanticWeb::Schema::MonetaryAmount;

# ABSTRACT: A monetary value or range

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'MonetaryAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A monetary value or range. This type can be used to describe an amount
of money such as $50 USD, or a range as in describing a bank account being
suitable for a balance between Â£1,000 and Â£1,000,000 GBP, or the value of
a salary, etc. It is recommended to use <a class="localLink"
href="http://schema.org/PriceSpecification">PriceSpecification</a> Types to
describe the price of an Offer, Invoice, etc.<p>

=end html




=head1 ATTRIBUTES


=head2 C<currency>



=begin html

<p>The currency in which the monetary amount is expressed.<br/><br/> Use
standard formats: <a href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217
currency format</a> e.g. "USD"; <a
href="https://en.wikipedia.org/wiki/List_of_cryptocurrencies">Ticker
symbol</a> for cryptocurrencies e.g. "BTC"; well known names for <a
href="https://en.wikipedia.org/wiki/Local_exchange_trading_system">Local
Exchange Tradings Systems</a> (LETS) and other currency types e.g. "Ithaca
HOUR".<p>

=end html


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


=head2 C<max_value>

C<maxValue>

The upper value of some characteristic or property.


A max_value should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_max_value>

A predicate for the L</max_value> attribute.

=cut

has max_value => (
    is        => 'rw',
    predicate => '_has_max_value',
    json_ld   => 'maxValue',
);


=head2 C<min_value>

C<minValue>

The lower value of some characteristic or property.


A min_value should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_min_value>

A predicate for the L</min_value> attribute.

=cut

has min_value => (
    is        => 'rw',
    predicate => '_has_min_value',
    json_ld   => 'minValue',
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


=head2 C<value>



=begin html

<p>The value of the quantitative value or property value node.<br/><br/>
<ul> <li>For <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> and <a
class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a>, the recommended
type for values is 'Number'.</li> <li>For <a class="localLink"
href="http://schema.org/PropertyValue">PropertyValue</a>, it can be
'Text;', 'Number', 'Boolean', or 'StructuredValue'.</li> <li>Use values
from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039))
rather than superficially similiar Unicode symbols.</li> <li>Use '.'
(Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point.
Avoid using these symbols as a readability separator.</li> </ul> <p>

=end html


A value should be one of the following types:

=over

=item C<Bool>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=item C<Num>

=item C<Str>

=back

=head2 C<_has_value>

A predicate for the L</value> attribute.

=cut

has value => (
    is        => 'rw',
    predicate => '_has_value',
    json_ld   => 'value',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
