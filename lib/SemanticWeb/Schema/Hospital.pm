use utf8;

package SemanticWeb::Schema::Hospital;

# ABSTRACT: A hospital.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::EmergencyService SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Hospital';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

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

=head2 C<_has_available_service>

A predicate for the L</available_service> attribute.

=cut

has available_service => (
    is        => 'rw',
    predicate => '_has_available_service',
    json_ld   => 'availableService',
);


=head2 C<healthcare_reporting_data>

C<healthcareReportingData>

Indicates data describing a hospital, e.g. a CDC L<SemanticWeb::Schema::CDCPMDRecord> or as some kind of L<SemanticWeb::Schema::Dataset>.

A healthcare_reporting_data should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CDCPMDRecord']>

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=back

=head2 C<_has_healthcare_reporting_data>

A predicate for the L</healthcare_reporting_data> attribute.

=cut

has healthcare_reporting_data => (
    is        => 'rw',
    predicate => '_has_healthcare_reporting_data',
    json_ld   => 'healthcareReportingData',
);


=head2 C<medical_specialty>

C<medicalSpecialty>

A medical specialty of the provider.


A medical_specialty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalSpecialty']>

=back

=head2 C<_has_medical_specialty>

A predicate for the L</medical_specialty> attribute.

=cut

has medical_specialty => (
    is        => 'rw',
    predicate => '_has_medical_specialty',
    json_ld   => 'medicalSpecialty',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
