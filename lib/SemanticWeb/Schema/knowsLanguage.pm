use utf8;

package SemanticWeb::Schema::knowsLanguage;

# ABSTRACT: Of a [[Person]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'knowsLanguage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Of a L<SemanticWeb::Schema::Person>, and less typically of an L<SemanticWeb::Schema::Organization>, to indicate a known language. We do not distinguish skill levels or reading/writing/speaking/signing here. Use language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
