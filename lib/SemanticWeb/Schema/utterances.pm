use utf8;

package SemanticWeb::Schema::utterances;

# ABSTRACT: Text of an utterances (spoken words

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'utterances';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Text of an utterances (spoken words, lyrics etc.) that occurs at a certain section of a media object, represented as a L<SemanticWeb::Schema::HyperTocEntry>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
