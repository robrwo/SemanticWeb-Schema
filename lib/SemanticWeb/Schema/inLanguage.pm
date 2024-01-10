use utf8;

package SemanticWeb::Schema::inLanguage;

# ABSTRACT: The language of the content or performance or used in an action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inLanguage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The language of the content or performance or used in an action. Please use one of the language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>. See also [[availableLanguage]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
