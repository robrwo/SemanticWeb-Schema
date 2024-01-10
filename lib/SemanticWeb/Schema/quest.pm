use utf8;

package SemanticWeb::Schema::quest;

# ABSTRACT: The task that a player-controlled character

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'quest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The task that a player-controlled character, or group of characters may
complete in order to gain a reward.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
