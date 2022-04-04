use utf8;

package SemanticWeb::Schema::Language;

# ABSTRACT: Natural languages such as Spanish

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Language';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

Natural languages such as Spanish, Tamil, Hindi, English, etc. Formal language code tags expressed in L<BCP 47|https://en.wikipedia.org/wiki/IETF_language_tag> can be used via the [[alternateName]] property. The Language type previously also covered programming languages such as Scheme and Lisp, which are now best represented using L<SemanticWeb::Schema::ComputerLanguage>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
