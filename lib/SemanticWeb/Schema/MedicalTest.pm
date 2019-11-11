use utf8;

package SemanticWeb::Schema::MedicalTest;

# ABSTRACT: Any medical test

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Any medical test, typically performed for diagnostic purposes.




=head1 ATTRIBUTES


=head2 C<affected_by>

C<affectedBy>

Drugs that affect the test's results.


A affected_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=cut

has affected_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'affectedBy',
);


=head2 C<normal_range>

C<normalRange>

Range of acceptable values for a typical patient, when applicable.


A normal_range should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEnumeration']>

=item C<Str>

=back

=cut

has normal_range => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'normalRange',
);


=head2 C<sign_detected>

C<signDetected>

A sign detected by the test.


A sign_detected should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalSign']>

=back

=cut

has sign_detected => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'signDetected',
);


=head2 C<used_to_diagnose>

C<usedToDiagnose>

A condition the test is used to diagnose.


A used_to_diagnose should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=cut

has used_to_diagnose => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'usedToDiagnose',
);


=head2 C<uses_device>

C<usesDevice>

Device used to perform the test.


A uses_device should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalDevice']>

=back

=cut

has uses_device => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'usesDevice',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
