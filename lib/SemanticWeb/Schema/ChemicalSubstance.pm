use utf8;

package SemanticWeb::Schema::ChemicalSubstance;

# ABSTRACT: A chemical substance is 'a portion of matter of constant composition

use Moo;

extends qw/ SemanticWeb::Schema::BioChemEntity /;


use MooX::JSON_LD 'ChemicalSubstance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A chemical substance is 'a portion of matter of constant composition,
composed of molecular entities of the same type or of different types'
(source:
[ChEBI:59999](https://www.ebi.ac.uk/chebi/searchId.do?chebiId=59999)).




=head1 ATTRIBUTES


=head2 C<chemical_composition>

C<chemicalComposition>

The chemical composition describes the identity and relative ratio of the
chemical elements that make up the substance.


A chemical_composition should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_chemical_composition>

A predicate for the L</chemical_composition> attribute.

=cut

has chemical_composition => (
    is        => 'rw',
    predicate => '_has_chemical_composition',
    json_ld   => 'chemicalComposition',
);


=head2 C<chemical_role>

C<chemicalRole>

A role played by the BioChemEntity within a chemical context.


A chemical_role should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=back

=head2 C<_has_chemical_role>

A predicate for the L</chemical_role> attribute.

=cut

has chemical_role => (
    is        => 'rw',
    predicate => '_has_chemical_role',
    json_ld   => 'chemicalRole',
);


=head2 C<potential_use>

C<potentialUse>

Intended use of the BioChemEntity by humans.


A potential_use should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=back

=head2 C<_has_potential_use>

A predicate for the L</potential_use> attribute.

=cut

has potential_use => (
    is        => 'rw',
    predicate => '_has_potential_use',
    json_ld   => 'potentialUse',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::BioChemEntity>

=cut

1;
