use utf8;

package SemanticWeb::Schema::QualitativeValue;

# ABSTRACT: A predefined value for a product characteristic

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'QualitativeValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

A predefined value for a product characteristic, e.g. the power cord plug
type 'US' or the garment sizes 'S', 'M', 'L', and 'XL'.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

=begin html

A property-value pair representing an additional characteristics of the
entitity, e.g. a product feature or another characteristic for which there
is no matching property in schema.org.<br/><br/> Note: Publishers should be
aware that applications designed to use specific schema.org properties
(e.g. http://schema.org/width, http://schema.org/color,
http://schema.org/gtin13, ...) will typically expect such data to be
provided using those properties, rather than using the generic
property/value mechanism.

=end html


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=cut

has additional_property => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalProperty',
);


=head2 C<equal>



This ordering relation for qualitative values indicates that the subject is
equal to the object.


A equal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has equal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'equal',
);


=head2 C<greater>



This ordering relation for qualitative values indicates that the subject is
greater than the object.


A greater should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has greater => (
    is        => 'rw',
    predicate => 1,
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

=cut

has greater_or_equal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'greaterOrEqual',
);


=head2 C<lesser>



This ordering relation for qualitative values indicates that the subject is
lesser than the object.


A lesser should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has lesser => (
    is        => 'rw',
    predicate => 1,
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

=cut

has lesser_or_equal => (
    is        => 'rw',
    predicate => 1,
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

=cut

has non_equal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nonEqual',
);


=head2 C<value_reference>

C<valueReference>

A pointer to a secondary value that provides additional information on the
original value, e.g. a reference temperature.


A value_reference should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=back

=cut

has value_reference => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'valueReference',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
