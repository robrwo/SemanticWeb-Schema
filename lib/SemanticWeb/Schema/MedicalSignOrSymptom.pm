use utf8;

package SemanticWeb::Schema::MedicalSignOrSymptom;

# ABSTRACT: Any feature associated or not with a medical condition

use Moo;

extends qw/ SemanticWeb::Schema::MedicalCondition /;


use MooX::JSON_LD 'MedicalSignOrSymptom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

Any feature associated or not with a medical condition. In medicine a
symptom is generally subjective while a sign is objective.




=head1 ATTRIBUTES


=head2 C<possible_treatment>

C<possibleTreatment>

A possible treatment to address this condition, sign or symptom.


A possible_treatment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTherapy']>

=back

=head2 C<_has_possible_treatment>

A predicate for the L</possible_treatment> attribute.

=cut

has possible_treatment => (
    is        => 'rw',
    predicate => '_has_possible_treatment',
    json_ld   => 'possibleTreatment',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalCondition>

=cut

1;
