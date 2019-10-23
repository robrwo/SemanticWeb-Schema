use utf8;

package SemanticWeb::Schema::PeopleAudience;

# ABSTRACT: A set of characteristics belonging to people

use Moo;

extends qw/ SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'PeopleAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

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

=cut

has health_condition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthCondition',
);


=head2 C<required_gender>

C<requiredGender>

Audiences defined by a person's gender.


A required_gender should be one of the following types:

=over

=item C<Str>

=back

=cut

has required_gender => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredGender',
);


=head2 C<required_max_age>

C<requiredMaxAge>

Audiences defined by a person's maximum age.


A required_max_age should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has required_max_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredMaxAge',
);


=head2 C<required_min_age>

C<requiredMinAge>

Audiences defined by a person's minimum age.


A required_min_age should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has required_min_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredMinAge',
);


=head2 C<suggested_gender>

C<suggestedGender>

The gender of the person or audience.


A suggested_gender should be one of the following types:

=over

=item C<Str>

=back

=cut

has suggested_gender => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'suggestedGender',
);


=head2 C<suggested_max_age>

C<suggestedMaxAge>

Maximal age recommended for viewing content.


A suggested_max_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has suggested_max_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'suggestedMaxAge',
);


=head2 C<suggested_min_age>

C<suggestedMinAge>

Minimal age recommended for viewing content.


A suggested_min_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has suggested_min_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'suggestedMinAge',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
