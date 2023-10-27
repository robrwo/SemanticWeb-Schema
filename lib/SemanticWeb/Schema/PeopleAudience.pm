use utf8;

package SemanticWeb::Schema::PeopleAudience;

# ABSTRACT: A set of characteristics belonging to people

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'PeopleAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A set of characteristics belonging to people, e.g. who compose an item's
target audience.




=head1 ATTRIBUTES


=head2 C<health_condition>

C<healthCondition>

Specifying the health condition(s) of a patient, medical study, or other
target audience.


A health_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=head2 C<_has_health_condition>

A predicate for the L</health_condition> attribute.

=cut

has health_condition => (
    is        => 'rw',
    predicate => '_has_health_condition',
    json_ld   => 'healthCondition',
);


=head2 C<required_gender>

C<requiredGender>

Audiences defined by a person's gender.


A required_gender should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_required_gender>

A predicate for the L</required_gender> attribute.

=cut

has required_gender => (
    is        => 'rw',
    predicate => '_has_required_gender',
    json_ld   => 'requiredGender',
);


=head2 C<required_max_age>

C<requiredMaxAge>

Audiences defined by a person's maximum age.


A required_max_age should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_required_max_age>

A predicate for the L</required_max_age> attribute.

=cut

has required_max_age => (
    is        => 'rw',
    predicate => '_has_required_max_age',
    json_ld   => 'requiredMaxAge',
);


=head2 C<required_min_age>

C<requiredMinAge>

Audiences defined by a person's minimum age.


A required_min_age should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_required_min_age>

A predicate for the L</required_min_age> attribute.

=cut

has required_min_age => (
    is        => 'rw',
    predicate => '_has_required_min_age',
    json_ld   => 'requiredMinAge',
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


=head2 C<suggested_max_age>

C<suggestedMaxAge>

Maximum recommended age in years for the audience or user.


A suggested_max_age should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_suggested_max_age>

A predicate for the L</suggested_max_age> attribute.

=cut

has suggested_max_age => (
    is        => 'rw',
    predicate => '_has_suggested_max_age',
    json_ld   => 'suggestedMaxAge',
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


=head2 C<suggested_min_age>

C<suggestedMinAge>

Minimum recommended age in years for the audience or user.


A suggested_min_age should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_suggested_min_age>

A predicate for the L</suggested_min_age> attribute.

=cut

has suggested_min_age => (
    is        => 'rw',
    predicate => '_has_suggested_min_age',
    json_ld   => 'suggestedMinAge',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
