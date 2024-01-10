use utf8;

package SemanticWeb::Schema::track;

# ABSTRACT: A music recording (track)—usually a single song

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'track';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
