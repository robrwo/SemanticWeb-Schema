use utf8;

package SemanticWeb::Schema::MedicalEntity;

# ABSTRACT: The most generic type of entity related to health and the practice of medicine.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'MedicalEntity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

The most generic type of entity related to health and the practice of
medicine.




=head1 ATTRIBUTES


=head2 C<code>



A medical code for the entity, taken from a controlled vocabulary or
ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.


A code should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCode']>

=back

=head2 C<_has_code>

A predicate for the L</code> attribute.

=cut

has code => (
    is        => 'rw',
    predicate => '_has_code',
    json_ld   => 'code',
);


=head2 C<funding>



A L<SemanticWeb::Schema::Grant> that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].

A funding should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Grant']>

=back

=head2 C<_has_funding>

A predicate for the L</funding> attribute.

=cut

has funding => (
    is        => 'rw',
    predicate => '_has_funding',
    json_ld   => 'funding',
);


=head2 C<guideline>



A medical guideline related to this entity.


A guideline should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalGuideline']>

=back

=head2 C<_has_guideline>

A predicate for the L</guideline> attribute.

=cut

has guideline => (
    is        => 'rw',
    predicate => '_has_guideline',
    json_ld   => 'guideline',
);


=head2 C<legal_status>

C<legalStatus>

The drug or supplement's legal status, including any controlled substance
schedules that apply.


A legal_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugLegalStatus']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalEnumeration']>

=item C<Str>

=back

=head2 C<_has_legal_status>

A predicate for the L</legal_status> attribute.

=cut

has legal_status => (
    is        => 'rw',
    predicate => '_has_legal_status',
    json_ld   => 'legalStatus',
);


=head2 C<medicine_system>

C<medicineSystem>

The system of medicine that includes this MedicalEntity, for example
'evidence-based', 'homeopathic', 'chiropractic', etc.


A medicine_system should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicineSystem']>

=back

=head2 C<_has_medicine_system>

A predicate for the L</medicine_system> attribute.

=cut

has medicine_system => (
    is        => 'rw',
    predicate => '_has_medicine_system',
    json_ld   => 'medicineSystem',
);


=head2 C<recognizing_authority>

C<recognizingAuthority>

If applicable, the organization that officially recognizes this entity as
part of its endorsed system of medicine.


A recognizing_authority should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_recognizing_authority>

A predicate for the L</recognizing_authority> attribute.

=cut

has recognizing_authority => (
    is        => 'rw',
    predicate => '_has_recognizing_authority',
    json_ld   => 'recognizingAuthority',
);


=head2 C<relevant_specialty>

C<relevantSpecialty>

If applicable, a medical specialty in which this entity is relevant.


A relevant_specialty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalSpecialty']>

=back

=head2 C<_has_relevant_specialty>

A predicate for the L</relevant_specialty> attribute.

=cut

has relevant_specialty => (
    is        => 'rw',
    predicate => '_has_relevant_specialty',
    json_ld   => 'relevantSpecialty',
);


=head2 C<study>



A medical study or trial related to this entity.


A study should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalStudy']>

=back

=head2 C<_has_study>

A predicate for the L</study> attribute.

=cut

has study => (
    is        => 'rw',
    predicate => '_has_study',
    json_ld   => 'study',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
