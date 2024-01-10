use utf8;

package SemanticWeb::Schema::originalMediaLink;

# ABSTRACT: Link to the page containing an original version of the content

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'originalMediaLink';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Link to the page containing an original version of the content, or directly to an online copy of the original L<SemanticWeb::Schema::MediaObject> content, e.g. video file.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
