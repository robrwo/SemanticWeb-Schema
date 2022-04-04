use utf8;

package SemanticWeb::Schema::Poster;

# ABSTRACT: A large

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Poster';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

A large, usually printed placard, bill, or announcement, often illustrated,
that is posted to advertise or publicize something.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
