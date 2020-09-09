use utf8;

package SemanticWeb::Schema::VideoGallery;

# ABSTRACT: Web page type: Video gallery page.

use Moo;

extends qw/ SemanticWeb::Schema::MediaGallery /;


use MooX::JSON_LD 'VideoGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: Video gallery page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaGallery>

=cut

1;
