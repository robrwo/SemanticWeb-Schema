use utf8;

package SemanticWeb::Schema::TherapeuticProcedure;

# ABSTRACT: A medical procedure intended primarily for therapeutic purposes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalProcedure /;


use MooX::JSON_LD 'TherapeuticProcedure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A medical procedure intended primarily for therapeutic purposes, aimed at
improving a health condition.




=head1 ATTRIBUTES


=head2 C<adverse_outcome>

C<adverseOutcome>

A possible complication and/or side effect of this therapy. If it is known
that an adverse outcome is serious (resulting in death, disability, or
permanent damage; requiring hospitalization; or otherwise life-threatening
or requiring immediate medical attention), tag it as a
seriousAdverseOutcome instead.


A adverse_outcome should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=head2 C<_has_adverse_outcome>

A predicate for the L</adverse_outcome> attribute.

=cut

has adverse_outcome => (
    is        => 'rw',
    predicate => '_has_adverse_outcome',
    json_ld   => 'adverseOutcome',
);


=head2 C<dose_schedule>

C<doseSchedule>

A dosing schedule for the drug for a given population, either observed,
recommended, or maximum dose based on the type used.


A dose_schedule should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DoseSchedule']>

=back

=head2 C<_has_dose_schedule>

A predicate for the L</dose_schedule> attribute.

=cut

has dose_schedule => (
    is        => 'rw',
    predicate => '_has_dose_schedule',
    json_ld   => 'doseSchedule',
);


=head2 C<drug>



Specifying a drug or medicine used in a medication procedure.


A drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=head2 C<_has_drug>

A predicate for the L</drug> attribute.

=cut

has drug => (
    is        => 'rw',
    predicate => '_has_drug',
    json_ld   => 'drug',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalProcedure>

=cut

1;
