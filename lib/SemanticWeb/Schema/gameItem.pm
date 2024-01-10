use utf8;

package SemanticWeb::Schema::gameItem;

# ABSTRACT: An item is an object within the game world that can be collected by a player or

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gameItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An item is an object within the game world that can be collected by a
player or, occasionally, a non-player character.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
