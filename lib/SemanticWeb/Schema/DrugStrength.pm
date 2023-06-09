use utf8;

package SemanticWeb::Schema::DrugStrength;

# ABSTRACT: A specific strength in which a medical drug is available in a specific country.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'DrugStrength';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific strength in which a medical drug is available in a specific
country.




=head1 ATTRIBUTES


=head2 C<active_ingredient>

C<activeIngredient>

An active ingredient, typically chemical compounds and/or biologic
substances.


A active_ingredient should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_active_ingredient>

A predicate for the L</active_ingredient> attribute.

=cut

has active_ingredient => (
    is        => 'rw',
    predicate => '_has_active_ingredient',
    json_ld   => 'activeIngredient',
);


=head2 C<available_in>

C<availableIn>

The location in which the strength is available.


A available_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_available_in>

A predicate for the L</available_in> attribute.

=cut

has available_in => (
    is        => 'rw',
    predicate => '_has_available_in',
    json_ld   => 'availableIn',
);


=head2 C<maximum_intake>

C<maximumIntake>

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.


A maximum_intake should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MaximumDoseSchedule']>

=back

=head2 C<_has_maximum_intake>

A predicate for the L</maximum_intake> attribute.

=cut

has maximum_intake => (
    is        => 'rw',
    predicate => '_has_maximum_intake',
    json_ld   => 'maximumIntake',
);


=head2 C<strength_unit>

C<strengthUnit>

The units of an active ingredient's strength, e.g. mg.


A strength_unit should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_strength_unit>

A predicate for the L</strength_unit> attribute.

=cut

has strength_unit => (
    is        => 'rw',
    predicate => '_has_strength_unit',
    json_ld   => 'strengthUnit',
);


=head2 C<strength_value>

C<strengthValue>

The value of an active ingredient's strength, e.g. 325.


A strength_value should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_strength_value>

A predicate for the L</strength_value> attribute.

=cut

has strength_value => (
    is        => 'rw',
    predicate => '_has_strength_value',
    json_ld   => 'strengthValue',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
