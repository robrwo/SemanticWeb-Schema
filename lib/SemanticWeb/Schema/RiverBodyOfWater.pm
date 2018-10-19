use utf8;

package SemanticWeb::Schema::RiverBodyOfWater;

# ABSTRACT: A river (for example

use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'RiverBodyOfWater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

A river (for example, the broad majestic Shannon).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
