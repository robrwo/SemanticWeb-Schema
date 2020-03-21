use utf8;

package SemanticWeb::Schema::MediaGallery;

# ABSTRACT: Web page type: Media gallery page

use Moo;

extends qw/ SemanticWeb::Schema::CollectionPage /;


use MooX::JSON_LD 'MediaGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: Media gallery page. A mixed-media page that can contains
media such as images, videos, and other multimedia.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CollectionPage>

=cut

1;
