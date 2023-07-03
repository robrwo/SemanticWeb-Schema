use utf8;

package SemanticWeb::Schema::QualitativeValue;

# ABSTRACT: A predefined value for a product characteristic

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'QualitativeValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A predefined value for a product characteristic, e.g. the power cord plug
type 'US' or the garment sizes 'S', 'M', 'L', and 'XL'.




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


=head2 C<equal>



This ordering relation for qualitative values indicates that the subject is
equal to the object.


A equal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_equal>

A predicate for the L</equal> attribute.

=cut

has equal => (
    is        => 'rw',
    predicate => '_has_equal',
    json_ld   => 'equal',
);


=head2 C<greater>



This ordering relation for qualitative values indicates that the subject is
greater than the object.


A greater should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_greater>

A predicate for the L</greater> attribute.

=cut

has greater => (
    is        => 'rw',
    predicate => '_has_greater',
    json_ld   => 'greater',
);


=head2 C<greater_or_equal>

C<greaterOrEqual>

This ordering relation for qualitative values indicates that the subject is
greater than or equal to the object.


A greater_or_equal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_greater_or_equal>

A predicate for the L</greater_or_equal> attribute.

=cut

has greater_or_equal => (
    is        => 'rw',
    predicate => '_has_greater_or_equal',
    json_ld   => 'greaterOrEqual',
);


=head2 C<lesser>



This ordering relation for qualitative values indicates that the subject is
lesser than the object.


A lesser should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_lesser>

A predicate for the L</lesser> attribute.

=cut

has lesser => (
    is        => 'rw',
    predicate => '_has_lesser',
    json_ld   => 'lesser',
);


=head2 C<lesser_or_equal>

C<lesserOrEqual>

This ordering relation for qualitative values indicates that the subject is
lesser than or equal to the object.


A lesser_or_equal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_lesser_or_equal>

A predicate for the L</lesser_or_equal> attribute.

=cut

has lesser_or_equal => (
    is        => 'rw',
    predicate => '_has_lesser_or_equal',
    json_ld   => 'lesserOrEqual',
);


=head2 C<non_equal>

C<nonEqual>

This ordering relation for qualitative values indicates that the subject is
not equal to the object.


A non_equal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=head2 C<_has_non_equal>

A predicate for the L</non_equal> attribute.

=cut

has non_equal => (
    is        => 'rw',
    predicate => '_has_non_equal',
    json_ld   => 'nonEqual',
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



L<SemanticWeb::Schema::Enumeration>

=cut

1;
