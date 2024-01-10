use utf8;

package SemanticWeb::Schema::numberOfPlayers;

# ABSTRACT: Indicate how many people can play this game (minimum

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfPlayers';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicate how many people can play this game (minimum, maximum, or range).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
