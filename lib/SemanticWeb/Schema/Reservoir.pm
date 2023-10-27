use utf8;

package SemanticWeb::Schema::Reservoir;

# ABSTRACT: A reservoir of water

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'Reservoir';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A reservoir of water, typically an artificially created lake, like the Lake
Kariba reservoir.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
