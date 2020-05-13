use utf8;

package SemanticWeb::Schema::MedicalSign;

# ABSTRACT: Any physical manifestation of a person's medical condition discoverable by objective diagnostic tests or physical examination.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalSignOrSymptom /;


use MooX::JSON_LD 'MedicalSign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

Any physical manifestation of a person's medical condition discoverable by
objective diagnostic tests or physical examination.




=head1 ATTRIBUTES


=head2 C<identifying_exam>

C<identifyingExam>

A physical examination that can identify this sign.


A identifying_exam should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PhysicalExam']>

=back

=head2 C<_has_identifying_exam>

A predicate for the L</identifying_exam> attribute.

=cut

has identifying_exam => (
    is        => 'rw',
    predicate => '_has_identifying_exam',
    json_ld   => 'identifyingExam',
);


=head2 C<identifying_test>

C<identifyingTest>

A diagnostic test that can identify this sign.


A identifying_test should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTest']>

=back

=head2 C<_has_identifying_test>

A predicate for the L</identifying_test> attribute.

=cut

has identifying_test => (
    is        => 'rw',
    predicate => '_has_identifying_test',
    json_ld   => 'identifyingTest',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalSignOrSymptom>

=cut

1;
