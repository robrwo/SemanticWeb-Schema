use utf8;

package SemanticWeb::Schema::masthead;

# ABSTRACT: For a [[NewsMediaOrganization]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'masthead';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::NewsMediaOrganization>, a link to the masthead page or a page listing top editorial management.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
