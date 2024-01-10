use utf8;

package SemanticWeb::Schema::playMode;

# ABSTRACT: Indicates whether this game is multi-player

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'playMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether this game is multi-player, co-op or single-player. The
game can be marked as multi-player, co-op and single-player at the same
time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
