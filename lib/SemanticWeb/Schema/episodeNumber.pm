use utf8;

package SemanticWeb::Schema::episodeNumber;

# ABSTRACT: Position of the episode within an ordered group of episodes.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'episodeNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Position of the episode within an ordered group of episodes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
