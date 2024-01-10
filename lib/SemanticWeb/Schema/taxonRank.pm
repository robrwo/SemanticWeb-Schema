use utf8;

package SemanticWeb::Schema::taxonRank;

# ABSTRACT: The taxonomic rank of this taxon given preferably as a URI from a controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or equivalent Wikidata URIs.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'taxonRank';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The taxonomic rank of this taxon given preferably as a URI from a
controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or
equivalent Wikidata URIs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
