use utf8;

package SemanticWeb::Schema::noBylinesPolicy;

# ABSTRACT: For a [[NewsMediaOrganization]] or other news-related [[Organization]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'noBylinesPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::NewsMediaOrganization> or other news-related L<SemanticWeb::Schema::Organization>, a statement explaining when authors of articles are not named in bylines.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
