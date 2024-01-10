use utf8;

package SemanticWeb::Schema::DefinitiveLegalValue;

# ABSTRACT: Indicates a document for which the text is conclusively what the law says and is legally binding

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DefinitiveLegalValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a document for which the text is conclusively what the law says and is legally binding. (E.g. the digitally signed version of an Official Journal.)
  Something "Definitive" is considered to be also L<SemanticWeb::Schema::AuthoritativeLegalValue>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
