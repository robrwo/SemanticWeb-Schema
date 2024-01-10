use utf8;

package SemanticWeb::Schema::publicationType;

# ABSTRACT: The type of the medical article

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'publicationType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of the medical article, taken from the US NLM MeSH publication
type catalog. See also [MeSH
documentation](http://www.nlm.nih.gov/mesh/pubtypes.html).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
