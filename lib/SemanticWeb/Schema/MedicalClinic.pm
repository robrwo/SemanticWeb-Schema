use utf8;

package SemanticWeb::Schema::MedicalClinic;

# ABSTRACT: A facility

use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'MedicalClinic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A facility, often associated with a hospital or medical school, that is
devoted to the specific diagnosis and/or healthcare. Previously limited to
outpatients but with evolution it may be open to inpatients as well.




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
