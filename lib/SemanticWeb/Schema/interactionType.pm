use utf8;

package SemanticWeb::Schema::interactionType;

# ABSTRACT: The Action representing the type of interaction

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interactionType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Action representing the type of interaction. For up votes, +1s, etc. use L<SemanticWeb::Schema::LikeAction>. For down votes use L<SemanticWeb::Schema::DislikeAction>. Otherwise, use the most specific Action.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
