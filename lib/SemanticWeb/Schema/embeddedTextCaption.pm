use utf8;

package SemanticWeb::Schema::embeddedTextCaption;

# ABSTRACT: Represents textual captioning from a [[MediaObject]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'embeddedTextCaption';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents textual captioning from a L<SemanticWeb::Schema::MediaObject>, e.g. text of a 'meme'.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
