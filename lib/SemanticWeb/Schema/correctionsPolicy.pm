use utf8;

package SemanticWeb::Schema::correctionsPolicy;

# ABSTRACT: For an [[Organization]] (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'correctionsPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For an L<SemanticWeb::Schema::Organization> (e.g. L<SemanticWeb::Schema::NewsMediaOrganization>), a statement describing (in news media, the newsroomâs) disclosure and correction policy for errors.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
