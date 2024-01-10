use utf8;

package SemanticWeb::Schema::GraphicNovel;

# ABSTRACT: Book format: GraphicNovel

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'GraphicNovel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Book format: GraphicNovel. May represent a bound collection of ComicIssue
instances.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
