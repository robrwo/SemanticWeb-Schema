use utf8;

package SemanticWeb::Schema::Hospital;

# ABSTRACT: A hospital.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::EmergencyService SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Hospital';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A hospital.




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
