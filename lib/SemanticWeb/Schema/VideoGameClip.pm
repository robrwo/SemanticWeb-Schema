package SemanticWeb::Schema::VideoGameClip;

# ABSTRACT: A short segment/part of a video game.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use MooX::JSON_LD 'VideoGameClip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A short segment/part of a video game.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Clip>

=cut

1;