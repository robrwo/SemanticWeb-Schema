use utf8;

package SemanticWeb::Schema::UnitPriceSpecification;

# ABSTRACT: The price asked for a given offer by the respective organization or person.

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'UnitPriceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

The price asked for a given offer by the respective organization or person.




=head1 ATTRIBUTES


=head2 C<billing_duration>

C<billingDuration>

Specifies for how long this price (or price component) will be billed. Can
be used, for example, to model the contractual duration of a subscription
or payment plan. Type can be either a Duration or a Number (in which case
the unit of measurement, for example month, is specified by the unitCode
property).


A billing_duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_billing_duration>

A predicate for the L</billing_duration> attribute.

=cut

has billing_duration => (
    is        => 'rw',
    predicate => '_has_billing_duration',
    json_ld   => 'billingDuration',
);


=head2 C<billing_increment>

C<billingIncrement>

This property specifies the minimal quantity and rounding increment that
will be the basis for the billing. The unit of measurement is specified by
the unitCode property.


A billing_increment should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_billing_increment>

A predicate for the L</billing_increment> attribute.

=cut

has billing_increment => (
    is        => 'rw',
    predicate => '_has_billing_increment',
    json_ld   => 'billingIncrement',
);


=head2 C<billing_start>

C<billingStart>

Specifies after how much time this price (or price component) becomes valid
and billing starts. Can be used, for example, to model a price increase
after the first year of a subscription. The unit of measurement is
specified by the unitCode property.


A billing_start should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_billing_start>

A predicate for the L</billing_start> attribute.

=cut

has billing_start => (
    is        => 'rw',
    predicate => '_has_billing_start',
    json_ld   => 'billingStart',
);


=head2 C<price_component_type>

C<priceComponentType>

Identifies a price component (for example, a line item on an invoice), part
of the total price for an offer.


A price_component_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceComponentTypeEnumeration']>

=back

=head2 C<_has_price_component_type>

A predicate for the L</price_component_type> attribute.

=cut

has price_component_type => (
    is        => 'rw',
    predicate => '_has_price_component_type',
    json_ld   => 'priceComponentType',
);


=head2 C<price_type>

C<priceType>

Defines the type of a price specified for an offered product, for example a list price, a (temporary) sale price or a manufacturer suggested retail price. If multiple prices are specified for an offer the [[priceType]] property can be used to identify the type of each such specified price. The value of priceType can be specified as a value from enumeration PriceTypeEnumeration or as a free form text string for price types that are not already predefined in PriceTypeEnumeration.

A price_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceTypeEnumeration']>

=item C<Str>

=back

=head2 C<_has_price_type>

A predicate for the L</price_type> attribute.

=cut

has price_type => (
    is        => 'rw',
    predicate => '_has_price_type',
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

=head2 C<_has_reference_quantity>

A predicate for the L</reference_quantity> attribute.

=cut

has reference_quantity => (
    is        => 'rw',
    predicate => '_has_reference_quantity',
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

=head2 C<_has_unit_code>

A predicate for the L</unit_code> attribute.

=cut

has unit_code => (
    is        => 'rw',
    predicate => '_has_unit_code',
    json_ld   => 'unitCode',
);


=head2 C<unit_text>

C<unitText>

=begin html

<p>A string or text indicating the unit of measurement. Useful if you
cannot provide a standard unit code for <a
href='unitCode'>unitCode</a>.</p>

=end html


A unit_text should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_unit_text>

A predicate for the L</unit_text> attribute.

=cut

has unit_text => (
    is        => 'rw',
    predicate => '_has_unit_text',
    json_ld   => 'unitText',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
