use utf8;

package SemanticWeb::Schema::PropertyValue;

# ABSTRACT: A property-value pair, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'PropertyValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A property-value pair, e.g. representing a feature of a product or place.
Use the 'name' property for the name of the property. If there is an
additional human-readable version of the value, put that into the
'description' property. Always use specific schema.org properties when a)
they exist and b) you can populate them. Using PropertyValue as a
substitute will typically not trigger the same effect as using the
original, specific property. 




=head1 ATTRIBUTES


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


=head2 C<measurement_technique>

C<measurementTechnique>

A technique or technology used in a L<SemanticWeb::Schema::Dataset> (or L<SemanticWeb::Schema::DataDownload>, L<SemanticWeb::Schema::DataCatalog>),
corresponding to the method used for measuring the corresponding variable(s) (described using [[variableMeasured]]). This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but rather as a high level summary for dataset discovery.

For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence".

If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".

If there are several [[variableMeasured]] properties recorded for some given data object, use a L<SemanticWeb::Schema::PropertyValue> for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]].

A measurement_technique should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_measurement_technique>

A predicate for the L</measurement_technique> attribute.

=cut

has measurement_technique => (
    is        => 'rw',
    predicate => '_has_measurement_technique',
    json_ld   => 'measurementTechnique',
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


=head2 C<property_id>

C<propertyID>

A commonly used identifier for the characteristic represented by the
property, e.g. a manufacturer or a standard code for a property. propertyID
can be (1) a prefixed string, mainly meant to be used with standards for
product properties; (2) a site-specific, non-prefixed string (e.g. the
primary key of the property or the vendor-specific ID of the property), or
(3) a URL indicating the type of the property, either pointing to an
external vocabulary, or a Web resource that describes the property (e.g. a
glossary entry). Standards bodies should promote a standard prefix for the
identifiers of properties from their standards.


A property_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_property_id>

A predicate for the L</property_id> attribute.

=cut

has property_id => (
    is        => 'rw',
    predicate => '_has_property_id',
    json_ld   => 'propertyID',
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



The value of the quantitative value or property value node.

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
