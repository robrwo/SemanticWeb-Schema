use utf8;

package SemanticWeb::Schema::gamePlatform;

# ABSTRACT: The electronic systems used to play video games .

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gamePlatform';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The electronic systems used to play <a
href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video
games</a>.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
