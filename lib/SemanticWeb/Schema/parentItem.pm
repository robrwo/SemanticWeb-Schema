use utf8;

package SemanticWeb::Schema::parentItem;

# ABSTRACT: The parent of a question

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'parentItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an L<SemanticWeb::Schema::Article> or other L<SemanticWeb::Schema::CreativeWork>. See also [[comment]] which points from something to a comment about it.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
