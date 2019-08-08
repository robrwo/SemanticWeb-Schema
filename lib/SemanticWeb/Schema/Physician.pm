use utf8;

package SemanticWeb::Schema::Physician;

# ABSTRACT: A doctor's office.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Physician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A doctor's office.




=head1 ATTRIBUTES


=head2 C<available_service>

C<availableService>

A medical service available from this provider.


A available_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalProcedure']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalTest']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalTherapy']>

=back

=cut

has available_service => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableService',
);


=head2 C<hospital_affiliation>

C<hospitalAffiliation>

A hospital with which the physician or office is affiliated.


A hospital_affiliation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Hospital']>

=back

=cut

has hospital_affiliation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hospitalAffiliation',
);


=head2 C<medical_specialty>

C<medicalSpecialty>

A medical specialty of the provider.


A medical_specialty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalSpecialty']>

=back

=cut

has medical_specialty => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'medicalSpecialty',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
