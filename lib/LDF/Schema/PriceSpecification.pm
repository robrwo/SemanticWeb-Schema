package LDF::Schema::PriceSpecification;

# ABSTRACT: A structured value representing a price or price range

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A structured value representing a price or price range. Typically, only the
subclasses of this type are used for markup. It is recommended to use <a
class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a> to describe
independent amounts of money such as a salary, credit card limits, etc.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<eligible_quantity>

C<eligibleQuantity>

The interval and unit of measurement of ordering quantities for which the
offer or price specification is valid. This allows e.g. specifying that a
certain freight charge is valid only for a certain quantity.


A eligible_quantity should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has eligible_quantity => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<eligible_transaction_volume>

C<eligibleTransactionVolume>

The transaction volume, in a monetary unit, for which the offer or price
specification is valid, e.g. for indicating a minimal purchasing volume, to
express free shipping above a certain order volume, or to limit the
acceptance of credit cards to purchases to a certain minimal amount.


A eligible_transaction_volume should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PriceSpecification']>

=back

=cut

has eligible_transaction_volume => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<max_price>

C<maxPrice>

The highest price if the price is a range.


A max_price should be one of the following types:

=over

=item C<Num>

=back

=cut

has max_price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<min_price>

C<minPrice>

The lowest price if the price is a range.


A min_price should be one of the following types:

=over

=item C<Num>

=back

=cut

has min_price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<price>



=begin html

<p>The offer price of a product, or of a price component when attached to
PriceSpecification and its subtypes.</p> <p>Usage guidelines:</p> <ul>
<li>Use the <a class="localLink"
href="http://schema.org/priceCurrency">priceCurrency</a> property (with <a
href="http://en.wikipedia.org/wiki/ISO_4217#Active_codes">ISO 4217
codes</a> e.g. "USD") instead of including <a
href="http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_doll
ar_or_peso_sign">ambiguous symbols</a> such as '$' in the value.</li>
<li>Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a
decimal point. Avoid using these symbols as a readability separator.</li>
<li>Note that both <a
href="http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute">
RDFa</a> and Microdata syntax allow the use of a "content=" attribute for
publishing simple machine-readable values alongside more human-friendly
formatting.</li> <li>Use values from 0123456789 (Unicode 'DIGIT ZERO'
(U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar
Unicode symbols.</li> </ul> 

=end html


A price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<price_currency>

C<priceCurrency>

=begin html

The currency (in 3-letter ISO 4217 format) of the price or a price
component, when attached to <a class="localLink"
href="http://schema.org/PriceSpecification">PriceSpecification</a> and its
subtypes.

=end html


A price_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has price_currency => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<value_added_tax_included>

C<valueAddedTaxIncluded>

Specifies whether the applicable value-added tax (VAT) is included in the
price specification or not.


A value_added_tax_included should be one of the following types:

=over

=item C<Bool>

=back

=cut

has value_added_tax_included => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PriceSpecification' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { eligibleQuantity => 'eligible_quantity' },
      { eligibleTransactionVolume => 'eligible_transaction_volume' },
      { maxPrice => 'max_price' },
      { minPrice => 'min_price' },
      { price => 'price' },
      { priceCurrency => 'price_currency' },
      { validFrom => 'valid_from' },
      { validThrough => 'valid_through' },
      { valueAddedTaxIncluded => 'value_added_tax_included' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
