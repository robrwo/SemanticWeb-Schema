use utf8;

package SemanticWeb::Schema::hasBioPolymerSequence;

# ABSTRACT: A symbolic representation of a BioChemEntity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasBioPolymerSequence';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A symbolic representation of a BioChemEntity. For example, a nucleotide
sequence of a Gene or an amino acid sequence of a Protein.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
