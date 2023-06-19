use utf8;

package SemanticWeb::Schema::MediaGallery;

# ABSTRACT: Web page type: Media gallery page

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CollectionPage /;


use MooX::JSON_LD 'MediaGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

Web page type: Media gallery page. A mixed-media page that can contain
media such as images, videos, and other multimedia.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CollectionPage>

=cut

1;
