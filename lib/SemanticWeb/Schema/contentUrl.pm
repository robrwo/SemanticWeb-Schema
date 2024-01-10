use utf8;

package SemanticWeb::Schema::contentUrl;

# ABSTRACT: Actual bytes of the media object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contentUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Actual bytes of the media object, for example the image file or video file.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
