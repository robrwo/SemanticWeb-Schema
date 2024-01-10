use utf8;

package SemanticWeb::Schema::gameLocation;

# ABSTRACT: Real or fictional location of the game (or part of game).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gameLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Real or fictional location of the game (or part of game).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
