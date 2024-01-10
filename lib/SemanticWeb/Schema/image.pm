use utf8;

package SemanticWeb::Schema::image;

# ABSTRACT: An image of the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'image';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An image of the item. This can be a L<SemanticWeb::Schema::URL> or a fully described L<SemanticWeb::Schema::ImageObject>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
