use utf8;

package SemanticWeb::Schema::QuantitativeValue;

# ABSTRACT:  A point value or interval for product characteristics and other purposes.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'QuantitativeValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

 A point value or interval for product characteristics and other purposes.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

A property-value pair representing an additional characteristic of the
entity, e.g. a product feature or another characteristic for which there is
no matching property in schema.org. Note: Publishers should be aware that
applications designed to use specific schema.org properties (e.g.
http://schema.org/width, http://schema.org/color, http://schema.org/gtin13,
...) will typically expect such data to be provided using those properties,
rather than using the generic property/value mechanism. 


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=head2 C<_has_additional_property>

A predicate for the L</additional_property> attribute.

=cut

has additional_property => (
    is        => 'rw',
    predicate => '_has_additional_property',
    json_ld   => 'additionalProperty',
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


=head2 C<value>



The value of a L<SemanticWeb::Schema::QuantitativeValue> (including L<SemanticWeb::Schema::Observation>) or property value node.

=over

=item *

For L<SemanticWeb::Schema::QuantitativeValue> and L<SemanticWeb::Schema::MonetaryAmount>, the recommended type for values is 'Number'.


=item *

For L<SemanticWeb::Schema::PropertyValue>, it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.


=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back

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


=head2 C<value_reference>

C<valueReference>

A secondary value that provides additional information on the original
value, e.g. a reference temperature or a type of measurement.


A value_reference should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::MeasurementTypeEnumeration']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=item C<Str>

=back

=head2 C<_has_value_reference>

A predicate for the L</value_reference> attribute.

=cut

has value_reference => (
    is        => 'rw',
    predicate => '_has_value_reference',
    json_ld   => 'valueReference',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
