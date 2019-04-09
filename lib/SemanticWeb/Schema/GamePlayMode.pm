use utf8;

package SemanticWeb::Schema::GamePlayMode;

# ABSTRACT: Indicates whether this game is multi-player

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'GamePlayMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

Indicates whether this game is multi-player, co-op or single-player.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
