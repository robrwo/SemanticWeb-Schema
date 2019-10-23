use utf8;

package SemanticWeb::Schema::Play;

# ABSTRACT: A play is a form of literature

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Play';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

A play is a form of literature, usually consisting of dialogue between
characters, intended for theatrical performance rather than just reading.
Note the peformance of a Play would be a <a class="localLink"
href="http://schema.org/TheaterEvent">TheaterEvent</a> - the <em>Play</em>
being the <a class="localLink"
href="http://schema.org/workPerformed">workPerformed</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
