use utf8;

package SemanticWeb::Schema::MedicalDevice;

# ABSTRACT: Any object used in a medical capacity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalDevice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

Any object used in a medical capacity, such as to diagnose or treat a
patient.




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


=head2 C<contraindication>



A contraindication for this therapy.


A contraindication should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalContraindication']>

=item C<Str>

=back

=head2 C<_has_contraindication>

A predicate for the L</contraindication> attribute.

=cut

has contraindication => (
    is        => 'rw',
    predicate => '_has_contraindication',
    json_ld   => 'contraindication',
);


=head2 C<post_op>

C<postOp>

A description of the postoperative procedures, care, and/or followups for
this device.


A post_op should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_post_op>

A predicate for the L</post_op> attribute.

=cut

has post_op => (
    is        => 'rw',
    predicate => '_has_post_op',
    json_ld   => 'postOp',
);


=head2 C<pre_op>

C<preOp>

A description of the workup, testing, and other preparations required
before implanting this device.


A pre_op should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pre_op>

A predicate for the L</pre_op> attribute.

=cut

has pre_op => (
    is        => 'rw',
    predicate => '_has_pre_op',
    json_ld   => 'preOp',
);


=head2 C<procedure>



A description of the procedure involved in setting up, using, and/or
installing the device.


A procedure should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_procedure>

A predicate for the L</procedure> attribute.

=cut

has procedure => (
    is        => 'rw',
    predicate => '_has_procedure',
    json_ld   => 'procedure',
);


=head2 C<serious_adverse_outcome>

C<seriousAdverseOutcome>

A possible serious complication and/or serious side effect of this therapy.
Serious adverse outcomes include those that are life-threatening; result in
death, disability, or permanent damage; require hospitalization or prolong
existing hospitalization; cause congenital anomalies or birth defects; or
jeopardize the patient and may require medical or surgical intervention to
prevent one of the outcomes in this definition.


A serious_adverse_outcome should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=head2 C<_has_serious_adverse_outcome>

A predicate for the L</serious_adverse_outcome> attribute.

=cut

has serious_adverse_outcome => (
    is        => 'rw',
    predicate => '_has_serious_adverse_outcome',
    json_ld   => 'seriousAdverseOutcome',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
