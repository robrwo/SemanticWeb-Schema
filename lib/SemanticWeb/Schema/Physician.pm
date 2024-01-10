use utf8;

package SemanticWeb::Schema::Physician;

# ABSTRACT: An individual physician or a physician's office considered as a [[MedicalOrganization]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Physician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An individual physician or a physician's office considered as a L<SemanticWeb::Schema::MedicalOrganization>.



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


=head2 C<hospital_affiliation>

C<hospitalAffiliation>

A hospital with which the physician or office is affiliated.


A hospital_affiliation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Hospital']>

=back

=head2 C<_has_hospital_affiliation>

A predicate for the L</hospital_affiliation> attribute.

=cut

has hospital_affiliation => (
    is        => 'rw',
    predicate => '_has_hospital_affiliation',
    json_ld   => 'hospitalAffiliation',
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


=head2 C<occupational_category>

C<occupationalCategory>

A category describing the job, preferably using a term from a taxonomy such
as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html),
[ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or
similar, with the property repeated for each applicable value. Ideally the
taxonomy should be identified, and both the textual label and formal code
for the category should be provided. Note: for historical reasons, any
textual label and formal code provided as a literal may be assumed to be
from O*NET-SOC.


A occupational_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=item C<Str>

=back

=head2 C<_has_occupational_category>

A predicate for the L</occupational_category> attribute.

=cut

has occupational_category => (
    is        => 'rw',
    predicate => '_has_occupational_category',
    json_ld   => 'occupationalCategory',
);


=head2 C<us_npi>

C<usNPI>

=begin html

<p>A <a
href="https://en.wikipedia.org/wiki/National_Provider_Identifier">National
Provider Identifier</a> (NPI) is a unique 10-digit identification number
issued to health care providers in the United States by the Centers for
Medicare and Medicaid Services.</p>

=end html


A us_npi should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_us_npi>

A predicate for the L</us_npi> attribute.

=cut

has us_npi => (
    is        => 'rw',
    predicate => '_has_us_npi',
    json_ld   => 'usNPI',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
