package SemanticWeb::Schema::MonetaryAmount;

# ABSTRACT: A monetary value or range

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'MonetaryAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

A monetary value or range. This type can be used to describe an amount of
money such as $50 USD, or a range as in describing a bank account being
suitable for a balance between £1,000 and £1,000,000 GBP, or the value of
a salary, etc. It is recommended to use <a class="localLink"
href="http://schema.org/PriceSpecification">PriceSpecification</a> Types to
describe the price of an Offer, Invoice, etc.

=end html




=head1 ATTRIBUTES


=head2 C<currency>



=begin html

The currency in which the monetary amount is expressed (in 3-letter <a
href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217</a> format).

=end html


A currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'currency',
);


=head2 C<max_value>

C<maxValue>

The upper value of some characteristic or property.


A max_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has max_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maxValue',
);


=head2 C<min_value>

C<minValue>

The lower value of some characteristic or property.


A min_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has min_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'minValue',
);


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has valid_from => (
    is        => 'rw',
    predicate => 1,
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

=cut

has valid_through => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validThrough',
);


=head2 C<value>



=begin html

<p>The value of the quantitative value or property value node.</p> <ul>
<li>For <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> and <a
class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a>, the recommended
type for values is 'Number'.</li> <li>For <a class="localLink"
href="http://schema.org/PropertyValue">PropertyValue</a>, it can be
'Text;', 'Number', 'Boolean', or 'StructuredValue'.</li> </ul> 

=end html


A value should be one of the following types:

=over

=item C<Bool>

=item C<Num>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=back

=cut

has value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'value',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
