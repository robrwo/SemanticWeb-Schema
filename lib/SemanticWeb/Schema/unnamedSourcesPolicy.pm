use utf8;

package SemanticWeb::Schema::unnamedSourcesPolicy;

# ABSTRACT: For an [[Organization]] (typically a [[NewsMediaOrganization]])

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'unnamedSourcesPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For an L<SemanticWeb::Schema::Organization> (typically a L<SemanticWeb::Schema::NewsMediaOrganization>), a statement about policy on use of unnamed sources and the decision process required.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
