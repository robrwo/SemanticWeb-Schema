use utf8;

package SemanticWeb::Schema::CoverArt;

# ABSTRACT: The artwork on the outer surface of a CreativeWork.

use Moo;

extends qw/ SemanticWeb::Schema::VisualArtwork /;


use MooX::JSON_LD 'CoverArt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

The artwork on the outer surface of a CreativeWork.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::VisualArtwork>

=cut

1;
