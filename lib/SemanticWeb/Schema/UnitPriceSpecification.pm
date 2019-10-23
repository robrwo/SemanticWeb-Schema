use utf8;

package SemanticWeb::Schema::UnitPriceSpecification;

# ABSTRACT: The price asked for a given offer by the respective organization or person.

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'UnitPriceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

The price asked for a given offer by the respective organization or person.




=head1 ATTRIBUTES


=head2 C<billing_increment>

C<billingIncrement>

This property specifies the minimal quantity and rounding increment that
will be the basis for the billing. The unit of measurement is specified by
the unitCode property.


A billing_increment should be one of the following types:

=over

=item C<Num>

=back

=cut

has billing_increment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'billingIncrement',
);


=head2 C<price_type>

C<priceType>

A short text or acronym indicating multiple price specifications for the
same offer, e.g. SRP for the suggested retail price or INVOICE for the
invoice price, mostly used in the car industry.


A price_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has price_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'priceType',
);


=head2 C<reference_quantity>

C<referenceQuantity>

The reference quantity for which a certain price applies, e.g. 1 EUR per 4
kWh of electricity. This property is a replacement for unitOfMeasurement
for the advanced cases where the price does not relate to a standard unit.


A reference_quantity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has reference_quantity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'referenceQuantity',
);


=head2 C<unit_code>

C<unitCode>

The unit of measurement given using the UN/CEFACT Common Code (3
characters) or a URL. Other codes than the UN/CEFACT Common Code may be
used with a prefix followed by a colon.


A unit_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitCode',
);


=head2 C<unit_text>

C<unitText>

=begin html

<p>A string or text indicating the unit of measurement. Useful if you
cannot provide a standard unit code for <a href='unitCode'>unitCode</a>.<p>

=end html


A unit_text should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_text => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitText',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
