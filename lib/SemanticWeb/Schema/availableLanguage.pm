use utf8;

package SemanticWeb::Schema::availableLanguage;

# ABSTRACT: A language someone may use with or at the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableLanguage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A language someone may use with or at the item, service or place. Please use one of the language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>. See also [[inLanguage]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
