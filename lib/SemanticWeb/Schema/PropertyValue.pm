use utf8;

package SemanticWeb::Schema::PropertyValue;

# ABSTRACT: A property-value pair, e

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'PropertyValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

A property-value pair, e.g. representing a feature of a product or place.
Use the 'name' property for the name of the property. If there is an
additional human-readable version of the value, put that into the
'description' property.<br/><br/> Always use specific schema.org properties
when a) they exist and b) you can populate them. Using PropertyValue as a
substitute will typically not trigger the same effect as using the
original, specific property.

=end html




=head1 ATTRIBUTES


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


=head2 C<property_id>

C<propertyID>

A commonly used identifier for the characteristic represented by the
property, e.g. a manufacturer or a standard code for a property. propertyID
can be (1) a prefixed string, mainly meant to be used with standards for
product properties; (2) a site-specific, non-prefixed string (e.g. the
primary key of the property or the vendor-specific id of the property), or
(3) a URL indicating the type of the property, either pointing to an
external vocabulary, or a Web resource that describes the property (e.g. a
glossary entry). Standards bodies should promote a standard prefix for the
identifiers of properties from their standards.


A property_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has property_id => (
    is        => 'rw',
    predicate => 1,
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

=cut

has unit_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitCode',
);


=head2 C<unit_text>

C<unitText>

=begin html

A string or text indicating the unit of measurement. Useful if you cannot
provide a standard unit code for <a href='unitCode'>unitCode</a>.

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


=head2 C<value>



=begin html

The value of the quantitative value or property value node.<br/><br/> <ul>
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

=item C<Num>

=item C<Bool>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=back

=cut

has value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'value',
);


=head2 C<value_reference>

C<valueReference>

A pointer to a secondary value that provides additional information on the
original value, e.g. a reference temperature.


A value_reference should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has value_reference => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'valueReference',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
