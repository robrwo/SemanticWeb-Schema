use utf8;

package SemanticWeb::Schema::MusicAlbumProductionType;

# ABSTRACT: Classification of the album by it's type of content: soundtrack

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MusicAlbumProductionType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

Classification of the album by it's type of content: soundtrack, live
album, studio album, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
