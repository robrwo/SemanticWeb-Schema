use utf8;

package SemanticWeb::Schema::diversityPolicy;

# ABSTRACT: Statement on diversity policy by an [[Organization]] e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'diversityPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Statement on diversity policy by an L<SemanticWeb::Schema::Organization> e.g. a L<SemanticWeb::Schema::NewsMediaOrganization>. For a L<SemanticWeb::Schema::NewsMediaOrganization>, a statement describing the newsroomâs diversity policy on both staffing and sources, typically providing staffing data.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
