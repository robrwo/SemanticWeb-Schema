use utf8;

package SemanticWeb::Schema::Play;

# ABSTRACT: A play is a form of literature

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Play';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A play is a form of literature, usually consisting of dialogue between characters, intended for theatrical performance rather than just reading. Note: A performance of a Play would be a L<SemanticWeb::Schema::TheaterEvent> or L<SemanticWeb::Schema::BroadcastEvent> - the I<Play> being the [[workPerformed]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
