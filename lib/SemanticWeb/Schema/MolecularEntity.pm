use utf8;

package SemanticWeb::Schema::MolecularEntity;

# ABSTRACT: Any constitutionally or isotopically distinct atom

use Moo;

extends qw/ SemanticWeb::Schema::BioChemEntity /;


use MooX::JSON_LD 'MolecularEntity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Any constitutionally or isotopically distinct atom, molecule, ion, ion
pair, radical, radical ion, complex, conformer etc., identifiable as a
separately distinguishable entity.




=head1 ATTRIBUTES


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


=head2 C<in_ch_i>

C<inChI>

Non-proprietary identifier for molecular entity that can be used in printed
and electronic data sources thus enabling easier linking of diverse data
compilations.


A in_ch_i should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_in_ch_i>

A predicate for the L</in_ch_i> attribute.

=cut

has in_ch_i => (
    is        => 'rw',
    predicate => '_has_in_ch_i',
    json_ld   => 'inChI',
);


=head2 C<in_ch_i_key>

C<inChIKey>

InChIKey is a hashed version of the full InChI (using the SHA-256
algorithm).


A in_ch_i_key should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_in_ch_i_key>

A predicate for the L</in_ch_i_key> attribute.

=cut

has in_ch_i_key => (
    is        => 'rw',
    predicate => '_has_in_ch_i_key',
    json_ld   => 'inChIKey',
);


=head2 C<iupac_name>

C<iupacName>

Systematic method of naming chemical compounds as recommended by the
International Union of Pure and Applied Chemistry (IUPAC).


A iupac_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_iupac_name>

A predicate for the L</iupac_name> attribute.

=cut

has iupac_name => (
    is        => 'rw',
    predicate => '_has_iupac_name',
    json_ld   => 'iupacName',
);


=head2 C<molecular_formula>

C<molecularFormula>

The empirical formula is the simplest whole number ratio of all the atoms
in a molecule.


A molecular_formula should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_molecular_formula>

A predicate for the L</molecular_formula> attribute.

=cut

has molecular_formula => (
    is        => 'rw',
    predicate => '_has_molecular_formula',
    json_ld   => 'molecularFormula',
);


=head2 C<molecular_weight>

C<molecularWeight>

This is the molecular weight of the entity being described, not of the
parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;',
for example '12 amu' or as '&lt;QuantitativeValue&gt;.


A molecular_weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Str>

=back

=head2 C<_has_molecular_weight>

A predicate for the L</molecular_weight> attribute.

=cut

has molecular_weight => (
    is        => 'rw',
    predicate => '_has_molecular_weight',
    json_ld   => 'molecularWeight',
);


=head2 C<monoisotopic_molecular_weight>

C<monoisotopicMolecularWeight>

The monoisotopic mass is the sum of the masses of the atoms in a molecule
using the unbound, ground-state, rest mass of the principal (most abundant)
isotope for each element instead of the isotopic average mass. Please
include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example
'770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.


A monoisotopic_molecular_weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Str>

=back

=head2 C<_has_monoisotopic_molecular_weight>

A predicate for the L</monoisotopic_molecular_weight> attribute.

=cut

has monoisotopic_molecular_weight => (
    is        => 'rw',
    predicate => '_has_monoisotopic_molecular_weight',
    json_ld   => 'monoisotopicMolecularWeight',
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


=head2 C<smiles>



A specification in form of a line notation for describing the structure of
chemical species using short ASCII strings. Double bond stereochemistry \
indicators may need to be escaped in the string in formats where the
backslash is an escape character.


A smiles should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_smiles>

A predicate for the L</smiles> attribute.

=cut

has smiles => (
    is        => 'rw',
    predicate => '_has_smiles',
    json_ld   => 'smiles',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::BioChemEntity>

=cut

1;
