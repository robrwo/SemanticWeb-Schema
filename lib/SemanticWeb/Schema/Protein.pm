use utf8;

package SemanticWeb::Schema::Protein;

# ABSTRACT: Protein is here used in its widest possible definition

use Moo;

extends qw/ SemanticWeb::Schema::BioChemEntity /;


use MooX::JSON_LD 'Protein';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

Protein is here used in its widest possible definition, as classes of amino
acid based molecules. Amyloid-beta Protein in human (UniProt P05067),
eukaryota (e.g. an OrthoDB group) or even a single molecule that one can
point to are all of type schema:Protein. A protein can thus be a subclass
of another protein, e.g. schema:Protein as a UniProt record can have
multiple isoforms inside it which would also be schema:Protein. They can be
imagined, synthetic, hypothetical or naturally occurring.




=head1 ATTRIBUTES


=head2 C<has_bio_polymer_sequence>

C<hasBioPolymerSequence>

A symbolic representation of a BioChemEnity. For example, a nucleotide
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
