use utf8;

package SemanticWeb::Schema::SizeSpecification;

# ABSTRACT: Size related properties of a product

use Moo;

extends qw/ SemanticWeb::Schema::QualitativeValue /;


use MooX::JSON_LD 'SizeSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

Size related properties of a product, typically a size code ([[name]]) and optionally a [[sizeSystem]], [[sizeGroup]], and product measurements ([[hasMeasurement]]). In addition, the intended audience can be defined through [[suggestedAge]], [[suggestedGender]], and suggested body measurements ([[suggestedMeasurement]]).



=head1 ATTRIBUTES


=head2 C<has_measurement>

C<hasMeasurement>

A product measurement, for example the inseam of pants, the wheel size of a
bicycle, or the gauge of a screw. Usually an exact measurement, but can
also be a range of measurements for adjustable products, for example belts
and ski bindings.


A has_measurement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_has_measurement>

A predicate for the L</has_measurement> attribute.

=cut

has has_measurement => (
    is        => 'rw',
    predicate => '_has_has_measurement',
    json_ld   => 'hasMeasurement',
);


=head2 C<size_group>

C<sizeGroup>

The size group (also known as "size type") for a product's size. Size
groups are common in the fashion industry to define size segments and
suggested audiences for wearable products. Multiple values can be combined,
for example "men's big and tall", "petite maternity" or "regular"


A size_group should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SizeGroupEnumeration']>

=item C<Str>

=back

=head2 C<_has_size_group>

A predicate for the L</size_group> attribute.

=cut

has size_group => (
    is        => 'rw',
    predicate => '_has_size_group',
    json_ld   => 'sizeGroup',
);


=head2 C<size_system>

C<sizeSystem>

The size system used to identify a product's size. Typically either a
standard (for example, "GS1" or "ISO-EN13402"), country code (for example
"US" or "JP"), or a measuring system (for example "Metric" or "Imperial").


A size_system should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SizeSystemEnumeration']>

=item C<Str>

=back

=head2 C<_has_size_system>

A predicate for the L</size_system> attribute.

=cut

has size_system => (
    is        => 'rw',
    predicate => '_has_size_system',
    json_ld   => 'sizeSystem',
);


=head2 C<suggested_age>

C<suggestedAge>

The age or age range for the intended audience or person, for example 3-12
months for infants, 1-5 years for toddlers.


A suggested_age should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_suggested_age>

A predicate for the L</suggested_age> attribute.

=cut

has suggested_age => (
    is        => 'rw',
    predicate => '_has_suggested_age',
    json_ld   => 'suggestedAge',
);


=head2 C<suggested_gender>

C<suggestedGender>

The suggested gender of the intended person or audience, for example
"male", "female", or "unisex".


A suggested_gender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GenderType']>

=item C<Str>

=back

=head2 C<_has_suggested_gender>

A predicate for the L</suggested_gender> attribute.

=cut

has suggested_gender => (
    is        => 'rw',
    predicate => '_has_suggested_gender',
    json_ld   => 'suggestedGender',
);


=head2 C<suggested_measurement>

C<suggestedMeasurement>

A suggested range of body measurements for the intended audience or person,
for example inseam between 32 and 34 inches or height between 170 and 190
cm. Typically found on a size chart for wearable products.


A suggested_measurement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_suggested_measurement>

A predicate for the L</suggested_measurement> attribute.

=cut

has suggested_measurement => (
    is        => 'rw',
    predicate => '_has_suggested_measurement',
    json_ld   => 'suggestedMeasurement',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::QualitativeValue>

=cut

1;
