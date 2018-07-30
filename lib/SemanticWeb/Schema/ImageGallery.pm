package SemanticWeb::Schema::ImageGallery;

# ABSTRACT: Web page type: Image gallery page.

use Moo;

extends qw/ SemanticWeb::Schema::CollectionPage /;


use MooX::JSON_LD 'ImageGallery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

Web page type: Image gallery page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CollectionPage>

=cut

1;