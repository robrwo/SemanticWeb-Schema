use utf8;

package SemanticWeb::Schema::Pond;

# ABSTRACT: A pond.

use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'Pond';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A pond.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
