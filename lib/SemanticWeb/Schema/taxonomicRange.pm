use utf8;

package SemanticWeb::Schema::taxonomicRange;

# ABSTRACT: The taxonomic grouping of the organism that expresses

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'taxonomicRange';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The taxonomic grouping of the organism that expresses, encodes, or in some
way related to the BioChemEntity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
