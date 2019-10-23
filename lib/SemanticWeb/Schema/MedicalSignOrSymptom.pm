use utf8;

package SemanticWeb::Schema::MedicalSignOrSymptom;

# ABSTRACT: Any feature associated or not with a medical condition

use Moo;

extends qw/ SemanticWeb::Schema::MedicalCondition /;


use MooX::JSON_LD 'MedicalSignOrSymptom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

Any feature associated or not with a medical condition. In medicine a
symptom is generally subjective while a sign is objective.




=head1 ATTRIBUTES


=head2 C<cause>



Specifying a cause of something in general. e.g in medicine , one of the
causative agent(s) that are most directly responsible for the
pathophysiologic process that eventually results in the occurrence.


A cause should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCause']>

=back

=cut

has cause => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cause',
);


=head2 C<possible_treatment>

C<possibleTreatment>

A possible treatment to address this condition, sign or symptom.


A possible_treatment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTherapy']>

=back

=cut

has possible_treatment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'possibleTreatment',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalCondition>

=cut

1;
