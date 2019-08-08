use utf8;

package SemanticWeb::Schema::MedicalOrganization;

# ABSTRACT: A medical organization (physical or not)

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'MedicalOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

A medical organization (physical or not), such as hospital, institution or
clinic.




=head1 ATTRIBUTES


=head2 C<health_plan_network_id>

C<healthPlanNetworkId>

Name or unique ID of network. (Networks are often reused across different
insurance plans).


A health_plan_network_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has health_plan_network_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanNetworkId',
);


=head2 C<is_accepting_new_patients>

C<isAcceptingNewPatients>

Whether the provider is accepting new patients.


A is_accepting_new_patients should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_accepting_new_patients => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isAcceptingNewPatients',
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



L<SemanticWeb::Schema::Organization>

=cut

1;
