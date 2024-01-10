use utf8;

package SemanticWeb::Schema::actor;

# ABSTRACT: An actor, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'actor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An actor, e.g. in TV, radio, movie, video games etc., or in an event.
Actors can be associated with individual items or with a series, episode,
clip.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
