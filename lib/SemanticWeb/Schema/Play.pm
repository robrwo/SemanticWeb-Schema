use utf8;

package SemanticWeb::Schema::Play;

# ABSTRACT: A play is a form of literature

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Play';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A play is a form of literature, usually consisting of dialogue between
characters, intended for theatrical performance rather than just reading.
Note the peformance of a Play would be a [[TheaterEvent]] - the *Play*
being the [[workPerformed]].




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
