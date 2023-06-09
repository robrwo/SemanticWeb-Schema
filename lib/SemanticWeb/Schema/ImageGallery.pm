use utf8;

package SemanticWeb::Schema::ImageGallery;

# ABSTRACT: Web page type: Image gallery page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaGallery /;


use MooX::JSON_LD 'ImageGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Web page type: Image gallery page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaGallery>

=cut

1;
