use utf8;

package SemanticWeb::Schema::BioChemEntity;

# ABSTRACT: Any biological

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'BioChemEntity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

Any biological, chemical, or biochemical thing. For example: a protein; a
gene; a chemical; a synthetic chemical.




=head1 ATTRIBUTES


=head2 C<associated_disease>

C<associatedDisease>

Disease associated to this BioChemEntity. Such disease can be a
MedicalCondition or a URL. If you want to add an evidence supporting the
association, please use PropertyValue.


A associated_disease should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_associated_disease>

A predicate for the L</associated_disease> attribute.

=cut

has associated_disease => (
    is        => 'rw',
    predicate => '_has_associated_disease',
    json_ld   => 'associatedDisease',
);


=head2 C<bio_chem_interaction>

C<bioChemInteraction>

A BioChemEntity that is known to interact with this item.


A bio_chem_interaction should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=back

=head2 C<_has_bio_chem_interaction>

A predicate for the L</bio_chem_interaction> attribute.

=cut

has bio_chem_interaction => (
    is        => 'rw',
    predicate => '_has_bio_chem_interaction',
    json_ld   => 'bioChemInteraction',
);


=head2 C<bio_chem_similarity>

C<bioChemSimilarity>

A similar BioChemEntity, e.g., obtained by fingerprint similarity
algorithms.


A bio_chem_similarity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=back

=head2 C<_has_bio_chem_similarity>

A predicate for the L</bio_chem_similarity> attribute.

=cut

has bio_chem_similarity => (
    is        => 'rw',
    predicate => '_has_bio_chem_similarity',
    json_ld   => 'bioChemSimilarity',
);


=head2 C<biological_role>

C<biologicalRole>

A role played by the BioChemEntity within a biological context.


A biological_role should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=back

=head2 C<_has_biological_role>

A predicate for the L</biological_role> attribute.

=cut

has biological_role => (
    is        => 'rw',
    predicate => '_has_biological_role',
    json_ld   => 'biologicalRole',
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


=head2 C<has_bio_chem_entity_part>

C<hasBioChemEntityPart>

Indicates a BioChemEntity that (in some sense) has this BioChemEntity as a
part. 


A has_bio_chem_entity_part should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=back

=head2 C<_has_has_bio_chem_entity_part>

A predicate for the L</has_bio_chem_entity_part> attribute.

=cut

has has_bio_chem_entity_part => (
    is        => 'rw',
    predicate => '_has_has_bio_chem_entity_part',
    json_ld   => 'hasBioChemEntityPart',
);


=head2 C<has_molecular_function>

C<hasMolecularFunction>

Molecular function performed by this BioChemEntity; please use
PropertyValue if you want to include any evidence.


A has_molecular_function should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_has_molecular_function>

A predicate for the L</has_molecular_function> attribute.

=cut

has has_molecular_function => (
    is        => 'rw',
    predicate => '_has_has_molecular_function',
    json_ld   => 'hasMolecularFunction',
);


=head2 C<has_representation>

C<hasRepresentation>

A common representation such as a protein sequence or chemical structure
for this entity. For images use schema.org/image.


A has_representation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_has_representation>

A predicate for the L</has_representation> attribute.

=cut

has has_representation => (
    is        => 'rw',
    predicate => '_has_has_representation',
    json_ld   => 'hasRepresentation',
);


=head2 C<is_encoded_by_bio_chem_entity>

C<isEncodedByBioChemEntity>

Another BioChemEntity encoding by this one.


A is_encoded_by_bio_chem_entity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Gene']>

=back

=head2 C<_has_is_encoded_by_bio_chem_entity>

A predicate for the L</is_encoded_by_bio_chem_entity> attribute.

=cut

has is_encoded_by_bio_chem_entity => (
    is        => 'rw',
    predicate => '_has_is_encoded_by_bio_chem_entity',
    json_ld   => 'isEncodedByBioChemEntity',
);


=head2 C<is_involved_in_biological_process>

C<isInvolvedInBiologicalProcess>

Biological process this BioChemEntity is involved in; please use
PropertyValue if you want to include any evidence.


A is_involved_in_biological_process should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_is_involved_in_biological_process>

A predicate for the L</is_involved_in_biological_process> attribute.

=cut

has is_involved_in_biological_process => (
    is        => 'rw',
    predicate => '_has_is_involved_in_biological_process',
    json_ld   => 'isInvolvedInBiologicalProcess',
);


=head2 C<is_located_in_subcellular_location>

C<isLocatedInSubcellularLocation>

Subcellular location where this BioChemEntity is located; please use
PropertyValue if you want to include any evidence.


A is_located_in_subcellular_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_is_located_in_subcellular_location>

A predicate for the L</is_located_in_subcellular_location> attribute.

=cut

has is_located_in_subcellular_location => (
    is        => 'rw',
    predicate => '_has_is_located_in_subcellular_location',
    json_ld   => 'isLocatedInSubcellularLocation',
);


=head2 C<is_part_of_bio_chem_entity>

C<isPartOfBioChemEntity>

Indicates a BioChemEntity that is (in some sense) a part of this
BioChemEntity. 


A is_part_of_bio_chem_entity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=back

=head2 C<_has_is_part_of_bio_chem_entity>

A predicate for the L</is_part_of_bio_chem_entity> attribute.

=cut

has is_part_of_bio_chem_entity => (
    is        => 'rw',
    predicate => '_has_is_part_of_bio_chem_entity',
    json_ld   => 'isPartOfBioChemEntity',
);


=head2 C<taxonomic_range>

C<taxonomicRange>

The taxonomic grouping of the organism that expresses, encodes, or in
someway related to the BioChemEntity.


A taxonomic_range should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::Taxon']>

=item C<Str>

=back

=head2 C<_has_taxonomic_range>

A predicate for the L</taxonomic_range> attribute.

=cut

has taxonomic_range => (
    is        => 'rw',
    predicate => '_has_taxonomic_range',
    json_ld   => 'taxonomicRange',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
