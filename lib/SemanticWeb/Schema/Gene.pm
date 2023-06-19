use utf8;

package SemanticWeb::Schema::Gene;

# ABSTRACT: A discrete unit of inheritance which affects one or more biological traits (Source: [https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::BioChemEntity /;


use MooX::JSON_LD 'Gene';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A discrete unit of inheritance which affects one or more biological traits
(Source:
[https://en.wikipedia.org/wiki/Gene](https://en.wikipedia.org/wiki/Gene)).
Examples include FOXP2 (Forkhead box protein P2), SCARNA21 (small Cajal
body-specific RNA 21), A- (agouti genotype).




=head1 ATTRIBUTES


=head2 C<alternative_of>

C<alternativeOf>

Another gene which is a variation of this one.


A alternative_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Gene']>

=back

=head2 C<_has_alternative_of>

A predicate for the L</alternative_of> attribute.

=cut

has alternative_of => (
    is        => 'rw',
    predicate => '_has_alternative_of',
    json_ld   => 'alternativeOf',
);


=head2 C<encodes_bio_chem_entity>

C<encodesBioChemEntity>

Another BioChemEntity encoded by this one. 


A encodes_bio_chem_entity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=back

=head2 C<_has_encodes_bio_chem_entity>

A predicate for the L</encodes_bio_chem_entity> attribute.

=cut

has encodes_bio_chem_entity => (
    is        => 'rw',
    predicate => '_has_encodes_bio_chem_entity',
    json_ld   => 'encodesBioChemEntity',
);


=head2 C<expressed_in>

C<expressedIn>

Tissue, organ, biological sample, etc in which activity of this gene has
been observed experimentally. For example brain, digestive system.


A expressed_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalSystem']>

=item C<InstanceOf['SemanticWeb::Schema::BioChemEntity']>

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=back

=head2 C<_has_expressed_in>

A predicate for the L</expressed_in> attribute.

=cut

has expressed_in => (
    is        => 'rw',
    predicate => '_has_expressed_in',
    json_ld   => 'expressedIn',
);


=head2 C<has_bio_polymer_sequence>

C<hasBioPolymerSequence>

A symbolic representation of a BioChemEntity. For example, a nucleotide
sequence of a Gene or an amino acid sequence of a Protein.


A has_bio_polymer_sequence should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_has_bio_polymer_sequence>

A predicate for the L</has_bio_polymer_sequence> attribute.

=cut

has has_bio_polymer_sequence => (
    is        => 'rw',
    predicate => '_has_has_bio_polymer_sequence',
    json_ld   => 'hasBioPolymerSequence',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::BioChemEntity>

=cut

1;
