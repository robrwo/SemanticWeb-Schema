use utf8;

package SemanticWeb::Schema::translator;

# ABSTRACT: Organization or person who adapts a creative work to different languages

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'translator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Organization or person who adapts a creative work to different languages,
regional differences and technical requirements of a target market, or that
translates during some event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
