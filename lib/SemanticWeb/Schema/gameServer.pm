use utf8;

package SemanticWeb::Schema::gameServer;

# ABSTRACT: The server on which it is possible to play the game.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gameServer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The server on which it is possible to play the game.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
