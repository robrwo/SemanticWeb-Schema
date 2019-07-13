use utf8;

package SemanticWeb::Schema::ComicCoverArt;

# ABSTRACT: The artwork on the cover of a comic.

use Moo;

extends qw/ SemanticWeb::Schema::ComicStory SemanticWeb::Schema::CoverArt /;


use MooX::JSON_LD 'ComicCoverArt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

The artwork on the cover of a comic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CoverArt>

=cut

1;
